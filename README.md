# UnlockTool Offline

Official product information and release downloads for **UnlockTool Offline**, a Windows service application for professional mobile-device diagnostics and authorised repair workflows by [TFast Digital Agency](https://tfastdigital.com/).

## Latest release

**2026.11.08.0 — Full Setup + Payload**

- Download: approximately **7 GB** across eight archive parts
- Free disk space: at least **25 GB**
- Platform: Windows 10/11 64-bit
- Publisher status: currently unsigned; verify the published SHA-256 values

[Official download page](https://tfastunlocker.com/unlocktool-offline) · [Licence bot](https://t.me/unlocktoolofflinebot) · [Release channel](https://t.me/tfasthub)

## Supported operations

| Platform or mode | Status | Available public capability |
|---|---|---|
| Qualcomm EDL | Available, model-dependent | Device information, reset, FRP, readback and flash recipes where listed for the selected model. |
| MediaTek BROM / Preloader | Available, model-dependent | Device information, partition operations, format/reset, backup/restore and boot-mode workflows. |
| MediaTek META | Device-dependent | Device information, partition/profile information, selected partition backup and NVRAM backup. |
| ADB / Fastboot | Available | Device information, supported reboot modes and authorised catalogue actions. |
| Sideload / Mi Assistant | Device-dependent | Device information and listed reset, FRP, EFS or MiCloud actions. |
| MTP helpers | Device-dependent | Device information and supported browser-launch helpers. |
| Unisoc / SPD | Loader-dependent | System information, reset, FRP and NVRAM backup/restore with a compatible loader. |
| Apple trusted USB | Available | Detailed device information and serial export with compatible drivers and device trust. |
| Apple recovery / Purple / ramdisk | Experimental | Hardware-unverified; use only when the exact action is enabled with matching guidance. |
| Samsung automated Odin buttons | Limited | Some actions require a compatible clean helper and action archives that are not shipped. |

[Read the complete operation notes and status definitions](docs/SUPPORTED-OPERATIONS.md)

## Supported-model catalogue

The current release contains **1,072 catalogue entries across 16 brand catalogues**.

| Brand | Entries | Brand | Entries | Brand | Entries | Brand | Entries |
|---|---:|---|---:|---|---:|---|---:|
| Android generic | 9 | Asus | 29 | Huawei | 28 | Infinix | 31 |
| Lenovo | 46 | LG | 52 | Meizu | 37 | Motorola | 20 |
| Nokia | 9 | Oppo | 209 | Samsung | 94 | TCL | 19 |
| Tecno | 129 | Vivo | 149 | Vsmart | 5 | Xiaomi | 206 |

[Search all 1,072 model entries](https://tfastdigital.github.io/unlocktool-offline/models/) · [Read the catalogue notes](docs/SUPPORTED-MODELS.md)

> A catalogue entry is not a promise that every operation works on every firmware. Confirm the exact enabled action, payload, compatible loader, driver and connection requirements in the application.

## Public product information

- [Release changelog](CHANGELOG.md)
- [Features](docs/FEATURES.md)
- [Supported operations and readiness](docs/SUPPORTED-OPERATIONS.md)
- [Supported-model catalogue](docs/SUPPORTED-MODELS.md)
- [Search all public model entries](https://tfastdigital.github.io/unlocktool-offline/models/)
- [Development and publishing workflow](DEVELOPMENT.md)

## Help improve UnlockTool

We welcome technicians, developers and device specialists who want to contribute to the project. Planned growth includes more verified operations, device models, chipset support, loaders, installation guidance and troubleshooting information.

For documentation corrections and public model requests, read [CONTRIBUTING.md](CONTRIBUTING.md) and open a GitHub issue. To discuss code, loaders, payloads or a private technical contribution, contact us first—do not publish proprietary or sensitive files in an issue.

[Website](https://tfastunlocker.com/) · [Telegram channel](https://t.me/tfasthub) · [Telegram licence bot](https://t.me/unlocktoolofflinebot) · [WhatsApp channel](https://www.whatsapp.com/channel/0029VaAYznPK5cDIXJa9nW1a) · [Email](mailto:info@tfastdigital.com)

## Responsible use

Use UnlockTool only on devices you own or are authorised to service. Flashing, resetting and partition operations can erase data or make a device unbootable. Confirm the exact model and operation before continuing.

This public repository contains documentation and release metadata only. Proprietary source code and licence-server implementation are not published here.
