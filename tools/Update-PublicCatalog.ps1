[CmdletBinding()]
param(
    [Parameter(Mandatory)] [string] $DataRoot,
    [Parameter(Mandatory)] [string] $AuditPath,
    [string] $OutputPath = (Join-Path $PSScriptRoot '..\site\data\catalog.json'),
    [string] $Version = 'Unreleased'
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $DataRoot -PathType Container)) {
    throw "Payload data root not found: $DataRoot"
}
if (-not (Test-Path -LiteralPath $AuditPath -PathType Leaf)) {
    throw "Catalogue audit not found: $AuditPath"
}

$audit = Get-Content -LiteralPath $AuditPath -Raw | ConvertFrom-Json
$catalogues = foreach ($brandGroup in ($audit.Results | Group-Object Brand | Sort-Object Name)) {
    $source = $brandGroup.Group | Sort-Object CatalogueModels -Descending | Select-Object -First 1
    $cataloguePath = Join-Path $DataRoot $source.Catalogue
    if (-not (Test-Path -LiteralPath $cataloguePath -PathType Leaf)) {
        throw "Catalogue listed by the audit was not found: $($source.Catalogue)"
    }

    [xml] $xml = Get-Content -LiteralPath $cataloguePath -Raw
    # The <name> nodes are the UI catalogue. <program> and <method> are
    # operation-routing subsets and must not be used as the public model count.
    $models = @($xml.data.name | ForEach-Object {
        $displayName = ([string] $_.Devices).Trim()
        $modelCode = ([string] $_.Models).Trim()
        if ($modelCode -and $modelCode -ne $displayName) { "$displayName — $modelCode" } else { $displayName }
    } | Where-Object { $_ } | Sort-Object)
    if ($models.Count -ne [int] $source.CatalogueModels) {
        throw "Catalogue count mismatch for $($source.Brand): audit=$($source.CatalogueModels), parsed=$($models.Count)"
    }

    [ordered]@{
        brand = ([string] $source.Brand).ToUpperInvariant()
        count = $models.Count
        models = $models
    }
}

$payload = [ordered]@{
    schemaVersion = 1
    productVersion = $Version
    generatedAtUtc = (Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
    status = 'catalogue-coverage'
    notice = 'Catalogue presence does not prove every operation works on every firmware. Confirm the exact enabled action, payload, loader and connection requirements in the application.'
    totalModels = [int](($catalogues | Measure-Object count -Sum).Sum)
    catalogues = @($catalogues)
}

$outputDirectory = Split-Path -Parent $OutputPath
New-Item -ItemType Directory -Path $outputDirectory -Force | Out-Null
$payload | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $OutputPath -Encoding utf8

Write-Host "Published $($payload.totalModels) catalogue entries across $($payload.catalogues.Count) catalogues to $OutputPath"
