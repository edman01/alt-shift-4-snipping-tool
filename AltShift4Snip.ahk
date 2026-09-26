#Requires AutoHotkey v2.0
#SingleInstance Force

; SPDX-License-Identifier: GPL-2.0-only
; Alt + Shift + 4 opens the Windows screen snipping overlay.
!+4::{
    ; Wait for release so held modifiers cannot affect the capture overlay.
    KeyWait "4"
    KeyWait "Alt"
    KeyWait "Shift"
    Run "ms-screenclip:"
}
