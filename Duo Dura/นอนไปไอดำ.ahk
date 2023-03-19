#SingleInstance, force
#NoEnv
#MaxThreadsPerHotkey, 2
SetBatchLines, -1
CoordMode, Pixel, Screen
CoordMode, Mouse, Window
;url:="bruh" ; use the url from Discord webhook bot
;userid:="<@12345678910>" ;example
; True, False
autorhythm = True
rhyleft = true
rhyright = true
flow = True
; do not change
Oneside = false ; start doing at left screen
ruined = False
rhythm = False
; - dialog -
; will be working on webhook soon
knock = false
nofood = false
lowhunder = false

IfNotExist, %A_ScriptDir%\bin
{
    msgbox,, file missing,Look like you didn't extract file,3
    ExitApp 
}

Resize1(WinTitle) {	
    WinGetPos,,, Width, Height, %WinTitle%
    WinMove, %WinTitle%,, (0)-(10), (0)-(10), 100, 100
}
Resize2(WinTitle) {	
    WinGetPos,,, Width, Height, %WinTitle%
    WinMove, %WinTitle%,, (0)-(-790), (0)-(10), 100, 100
}

removetooltip() {
    tooltip
}
Back:
    Winactive("Roblox")
    MsgBox, 262144,Nigger Macro,Select account for left side
        IfMsgBox, Ok
    {
        Resize1("Roblox")
    }
    Winactive("Roblox")
    MsgBox, 262144,Nigger Macro Dura,Select account for right side
        IfMsgBox, Ok
    {
        WinGet, 2, PID, A
        Resize2("Roblox")
    }

    MsgBox, 4,Nigger Macro Dura,both side are set correctly?
    IfMsgBox, No
    {
        Goto, back
    }
    ; 100, 500 buy dura
    ; 0, 0
    ; 800, 0
    ;ImageSearch, x, y, 15, 100, 115, 160, *10 %A_ScriptDir%\bin\fullhp.png

$F1::
    ; get stuff ready
    CoordMode, Mouse, Screen
    ;; get pid
    MouseMove, 100, 500
    Send {MButton}
    Sleep 200
    WinGet, 1, PID, A
    Sleep 100
    MouseMove, 900, 500
    Send {MButton}
    Sleep 200
    WinGet, 2, PID, A
    CoordMode, Mouse, Window

    colors := "0x444444, 0x3D3DA2"
    loop,
    {
    WinActivate ahk_pid %1%
    Sleep 100
    Send {BackSpace}
    Sleep 100
    Loop, 10
    {
        Click, 100, 500
    }
    Sleep 100

    WinActivate ahk_pid %2%
    Sleep 100
    Send {BackSpace}
    Sleep 100
    Loop, 10
    {
        Click, 100, 500
    }
    Send {BackSpace}
    Sleep 100
    }
~k::pause
~l::ExitApp
Space::ExitApp