# Alt + Shift + 4 Snipping Tool shortcut for Windows

Want a Mac-style area screenshot on Windows? Press and release **Alt + Shift + 4**, drag over the area you want, and paste the screenshot from your clipboard. This tiny app opens Windows screen snipping directly, without sending additional keyboard shortcuts.

Works on Windows 10 and 11 (64-bit). It needs no administrator access.

## Install

1. Download the repository ZIP and extract it.
2. Double-click **Install.cmd**. No administrator access or separate AutoHotkey installation is needed.
3. Press **Alt + Shift + 4** to try it.

The installer copies the app to your personal Windows Startup folder. It starts immediately and then starts automatically whenever you sign in. You can close the installer window after it says "Installed."

## Uninstall

Double-click **Uninstall.cmd** from the extracted folder.

## Privacy and security

The script registers one keyboard shortcut and invokes Windows screen snipping. It does not read your screenshots, collect information, or make network requests. The captured image is handled by Windows and placed on your clipboard. The included executable is built from the source in this repository and is **not digitally signed**. If Windows blocks an unsigned executable, you can review and run the `.ahk` source using the official AutoHotkey v2 installation instead.

## Source and build

`AltShift4Snip.ahk` is the complete shortcut source. `AltShift4Snip.exe` is the standalone version, built with [AutoHotkey](https://github.com/AutoHotkey/AutoHotkey) v2.0.12 and Ahk2Exe v1.1.37.02. To rebuild it, install those tools and run:

```text
Ahk2Exe.exe /in AltShift4Snip.ahk /out AltShift4Snip.exe /base AutoHotkey64.exe /silent
```

The included executable contains the AutoHotkey interpreter. The [AutoHotkey source code](https://github.com/AutoHotkey/AutoHotkey) is available under GPL-2.0. This package includes the GPL-2.0 license in `LICENSE.txt`.
