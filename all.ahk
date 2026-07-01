#Requires AutoHotkey v2.0
#SingleInstance Force
SetWorkingDir A_ScriptDir
SetTitleMatchMode(2)     ; Regex
; #InstallKeybdHook     ; ez csak akkor kell amikor rogzitem a keycodeokat


; ----------------------------------------------------------------------------------------------

>RWin::RCtrl

#F12::Send "{PrintScreen}"



; ----------------------------------------------------------------------------------------------

!Q::Send "!{F4}"                            ; cmd q             -> alt f4

!Space::Send "^{Esc}"                       ; cmd space         -> open start menu

!Backspace::Send "{Delete}"                 ; cmd backspace     -> delete



; ----------------------------------------------------------------------------------------------

#HotIf WinActive("FastStone")
    SC00C::                                   ; ü
    {
        Send("{Delete}")
    }
#HotIf



; ----------------------------------------------------------------------------------------------
; ----------------------------------------------------------------------------------------------

; ^i::
;     Reload
; Return

;   ^   Ctrl
;   !   Alt
;   #   Win
;   +   Shift
