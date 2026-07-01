#Requires AutoHotkey v2.0
#SingleInstance Force
SetWorkingDir A_ScriptDir
SetTitleMatchMode(2)     ; Regex
; #InstallKeybdHook     ; ez csak akkor kell amikor rogzitem a keycodeokat


; ----------------------------------------------------------------------------------------------

>RWin::RCtrl

#F12::Send "{PrintScreen}"



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
