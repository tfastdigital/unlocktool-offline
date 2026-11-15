# UnlockTool Offline

Official product information and release downloads for **UnlockTool Offline**, a Windows service application for professional mobile-device diagnostics and authorised repair workflows by [TFast Digital Agency](https://tfastdigital.com/).

## Latest release

**2026.11.15.0 — Application Hotfix**

- Fixes the false `Unexpected file: Uninstall.exe` startup warning
- Existing users install over `C:\UnlockTool`; payload, licence, settings and logs are preserved
- No payload redownload is needed when the 2026.11.08.0 payload is already installed
- [Watch the official installation and activation guide](https://youtu.be/gk_cdvRZn0A)

**Full payload base: 2026.11.08.0**

- Download: approximately **7 GB** across eight archive parts
- Free disk space: at least **25 GB**
- Platform: Windows 10/11 64-bit
- Publisher status: currently unsigned; verify the published SHA-256 values

[Official download page](https://tfastunlocker.com/unlocktool-offline) · [Licence bot](https://t.me/unlocktoolofflinebot) · [Release channel](https://t.me/tfasthub)

## Get started: install and activate

### Before you begin

- Use **Windows 10 or Windows 11, 64-bit**.
- Keep at least **25 GB of free disk space** for downloading, verification and extraction.
- Download all **eight archive parts**, the branded extractor and `SHA256SUMS.txt`.
- Put every downloaded file in the **same folder**. Do not rename an archive part.
- Use a real **`@gmail.com` address** that you control. Temporary or fake-looking email addresses are not accepted.
- Have Telegram available and join the official [TFast Hub channel](https://t.me/tfasthub).

### Step 1 — Download and install

1. Download the complete release from the [official download page](https://tfastunlocker.com/unlocktool-offline). The full payload remains version 2026.11.08.0; the current application installer is 2026.11.15.0.
2. Verify the downloaded files against the published SHA-256 values.
3. Keep all archive parts beside the branded extractor.
4. Close an older UnlockTool window after any running device operation has finished.
5. Run the branded extractor. It checks the archive and available disk space.
6. Run the extracted setup and finish installation.

### Step 2 — Request a free licence

1. Open the official [UnlockTool licence bot](https://t.me/unlocktoolofflinebot) and press **Start**.
2. Join the official [TFast Hub channel](https://t.me/tfasthub).
3. Return to the bot and confirm membership when requested.
4. Send only your own Gmail address, for example `yourname@gmail.com`. Do not send the example address literally.
5. The bot sends a **one-use activation code**. The code is valid for **30 minutes**.

### Step 3 — Activate this PC

1. Open UnlockTool Offline.
2. Enter the **same Gmail address** used in the Telegram bot.
3. Enter the one-use activation code exactly as received.
4. Select **Activate** and wait for the success message.
5. The licence binds to the first PC that activates it. Keep the same Gmail for status, renewal and support requests.

The user and administrator receive a Telegram notification after successful activation. Never publish your activation code, PC identifier, email, logs, IMEI or serial number.

### After activation: work offline

After the licence has been activated on the PC, **internet access is not required for device operations**. The installed application and payload run locally. Internet is needed only to request or activate a licence, check or download updates, or use online support links.

### If activation does not work

- **Join requirement still shown:** confirm you joined the correct channel, return to the bot and press the membership confirmation button again.
- **Code rejected or expired:** request a new code; each code is one-use and valid for 30 minutes.
- **Email rejected:** use a valid personal `@gmail.com` address and enter it identically in the bot and application.
- **Licence already bound:** check **My status** in the bot. Contact support if the original PC must be revoked or restored.
- **No notification:** open the bot, press **Start**, make sure it is not muted or blocked, and check **My status**.
- **Still blocked:** use [Report a bug](https://t.me/unlocktoolofflinebot) or the [official support page](https://tfastdigital.github.io/unlocktool-offline/support/). Remove private identifiers before posting logs publicly.

[Open the illustrated installation guide](https://tfastdigital.github.io/unlocktool-offline/install/)

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
