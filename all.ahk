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

+!5::                                         ; snipping tool
{
    Send "{LWin Down}"
    Sleep 800
    Send "{LAlt Down}"
    Send "b"
    Send "{LAlt Up}"
    Send "{LWin Up}"

    Sleep 7000  ; ez azert kell, hogy eltunjon a kek HDR popup oldalrol

    Send "{LWin Down}"
    Sleep 800
    Send "{LShift Down}"
    Send "s"
    Send "{LShift Up}"
    Send "{LWin Up}"

    Sleep 10000

    Send "{LWin Down}"
    Sleep 800
    Send "{LAlt Down}"
    Send "b"
    Send "{LAlt Up}"
    Send "{LWin Up}"
}
; 400 + 0       ; mar elsore is bebaszhat
; 800 + 0       ; elso 3 ok
; 800 + 200     ; fixen stabilan



; ----------------------------------------------------------------------------------------------

^!Space::                                   ; emoji keyboard
{
    ; Check if Right Alt (RAlt) is physically pressed
    if GetKeyState("RAlt", "P")
    {
        Send "{Space}"
    }
    else
    {
        Send "{LWin Down}.{LWin Up}"
    }
}



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
