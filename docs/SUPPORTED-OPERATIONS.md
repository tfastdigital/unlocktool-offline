# Supported operations

This page separates software readiness from hardware validation. “Available” means the required application path and bundled dependency exist. It does not mean every model and firmware combination has been physically tested.

| Area | Public status | Operations and notes |
|---|---|---|
| Qualcomm EDL | Available, model-dependent | Model recipes may provide device information, factory reset, FRP reset, readback, flash and other explicitly listed service actions. Exact actions vary by model and payload. |
| MediaTek BROM / Preloader | Available, model-dependent | Device information, supported partition read/write, format/reset, backup/restore and boot-mode workflows. Destructive actions require exact-model and partition checks. |
| MediaTek META | Available, device-dependent | Read information, partition listing/profile information, selected partition backup and NVRAM backup where the device and META stack permit it. |
| ADB / Fastboot | Available | Device information, supported reboot modes and catalogue actions such as OTA controls or reset where the connected device authorises them. |
| Sideload / Mi Assistant | Available, device-dependent | Device information and catalogue-provided reset, FRP, EFS or MiCloud actions where supported by the device mode. |
| MTP helper actions | Available, device-dependent | Device information and supported browser-launch helpers. |
| Unisoc / SPD | Available, loader-dependent | System information, factory reset, FRP reset and NVRAM backup/restore when a compatible FDL or PAC-derived loader is present. |
| Apple USB diagnostics | Available for trusted USB devices | Read detailed public device information and save the serial number. Requires Apple drivers, device trust and a compatible connection. |
| Apple recovery / Purple / ramdisk operations | Experimental or hardware-unverified | Do not advertise these as universally working. Use only where the application enables the action and matching hardware guidance exists. |
| Samsung automated Odin service buttons | Limited | A compatible clean automated helper and some action archives are not shipped. Buttons that require them must report the missing helper and stop. |

## Status rules

- **Available:** the application path and required bundled dependency are present.
- **Model-dependent:** check the exact model entry and the action displayed in the application.
- **Loader-dependent:** support exists only when the correct compatible loader is available.
- **Hardware-unverified:** software checks passed, but a real device test has not established broad compatibility.
- **Limited/unavailable:** do not claim the operation as working until the documented dependency or validation gap is resolved.

Use the tool only on devices you own or are authorised to service. Backup data before any destructive operation.
