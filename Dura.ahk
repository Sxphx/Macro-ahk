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
Eating = 1

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
    WinActivate ahk_pid %1%
    Sleep 100
    Send 0
    Sleep 400
    Send 0
    Sleep 100
    Loop, 10
    {
        Click, 100, 500
    }
    Send 0
    Sleep 400
    Send 1
    Sleep 100
    if autorhythm = true
    {
        if rhyleft = true
        {
            Send r
        }
    }

    WinActivate ahk_pid %2%
    Sleep 100
    Send 0
    Sleep 400
    Send 0
    Sleep 100
    Loop, 10
    {
        Click, 100, 500
    }
    Send 0
    Sleep 400
    Send 1
    Sleep 100
    if autorhythm = true
    {
        if rhyright = true
        {
            Send r
        }
    }
    loop,
    {
        CoordMode, Pixel, Screen
        ImageSearch,,, 10, 100, 260, 120, *10 %A_ScriptDir%\bin\fullhp.png ; Left windows
        If ErrorLevel = 0
        {
            WinActivate ahk_pid %1%
            Sleep 100
            Send 0
            Sleep 400
            Send 02
            Eating = 0
            Sleep 100
            Click, 100, 500
            duratimer := A_TickCount
            Sleep 100
            WinActivate ahk_pid %2%
            Sleep 100
            Send 0
            Sleep 400
            Send 1
            Sleep 100
            if autorhythm = true
            {
                if rhyright = true
                {
                    Send r
                }
            }
            MouseMove, 100, 500
            ; full
            Loop, ;fast phase
            {
                aa := A_TickCount - duratimer
                if (aa > 26000)
                {
                    Break
                }
                PixelSearch,,, 130, 105, 131, 106, 0x444444, 20, Fast 
                If ErrorLevel = 0
                {
                    Break
                }
                PixelSearch,,, 130, 105, 131, 106, 0x3D3DA2, 20, Fast 
                If ErrorLevel = 0
                {
                    Break
                }
                Click
                Sleep 100
            }
            ; half
            Loop, ;fast phase
            {
                aa := A_TickCount - duratimer
                if (aa > 26000)
                {
                    Break
                }
                PixelSearch,,, 70, 105, 71, 106, 0x444444, 20, Fast 
                If ErrorLevel = 0
                {
                    Break
                }
                PixelSearch,,, 70, 105, 71, 106, 0x3D3DA2, 20, Fast 
                If ErrorLevel = 0
                {
                    Break
                }
                Click
                Sleep 100
            }
            ; low
            Loop, ;fast phase
            {
                aa := A_TickCount - duratimer
                if (aa > 26000)
                {
                    Break
                }
                PixelSearch,,, 40, 105, 41, 106, 0x444444, 20, Fast 
                If ErrorLevel = 0
                {
                    Break
                }
                PixelSearch,,, 40, 105, 41, 106, 0x3D3DA2, 20, Fast 
                If ErrorLevel = 0
                {
                    Break
                }
                Click
                Sleep 100
            }
            WinActivate ahk_pid %1%
            Sleep 200
            Send 0
            Sleep 400
            Send 02
            Sleep 100
            Click, 100, 500
            Sleep 100
            Loop, 10
            {
                Click, 100, 500
            }
            Send 0
            Sleep 400
            Send 1
            if autorhythm = true
            {
                if rhyleft = true
                {
                    Send r
                    Eating = 1
                }
            }
        }
        if Oneside = false
        {
            ImageSearch,,, 810, 100, 1060, 120, *10 %A_ScriptDir%\bin\fullhp.png ; Right wi
            If ErrorLevel = 0
            {
                WinActivate ahk_pid %2%
                Sleep 100
                Send 0
                Sleep 400
                Send 02
                Eating = 0
                Sleep 100
                Click, 100, 500
                duratimer := A_TickCount
                WinActivate ahk_pid %1%
                Sleep 100
                Send 0
                Sleep 400
                Send 1
                Sleep 100
                if autorhythm = true
                {
                    if rhyright = true
                    {
                        Send r
                    }
                }
                MouseMove, 100, 500
                Loop, ;fast phase
                {
                    aa := A_TickCount - duratimer
                    if (aa > 26000)
                    {
                        Break
                    }
                    PixelSearch,,, 930, 105, 931, 106, 0x444444, 20, Fast 
                    If ErrorLevel = 0
                    {
                        Break
                    }
                    PixelSearch,,, 930, 105, 931, 106, 0x3D3DA2, 20, Fast 
                    If ErrorLevel = 0
                    {
                        Break
                    }
                    Click
                    Sleep 100
                }
                Loop,
                {
                    aa := A_TickCount - duratimer
                    if (aa > 26000)
                    {
                        Break
                    }
                    PixelSearch,,, 870, 105, 871, 106, 0x444444, 20, Fast 
                    If ErrorLevel = 0
                    {
                        Break
                    }
                    PixelSearch,,, 870, 105, 871, 106, 0x3D3DA2, 20, Fast 
                    If ErrorLevel = 0
                    {
                        Break
                    }
                    Click
                    Sleep 250

                }
                Loop,
                {
                    aa := A_TickCount - duratimer
                    if (aa > 26000)
                    {
                        Break
                    }
                    PixelSearch,,, 840, 105, 841, 106, 0x444444, 20, Fast 
                    If ErrorLevel = 0
                    {
                        Break
                    }
                    PixelSearch,,, 840, 105, 841, 106, 0x3D3DA2, 20, Fast 
                    If ErrorLevel = 0
                    {
                        Break
                    } 
                    Click
                    Sleep 400
                }

                WinActivate ahk_pid %2%
                Sleep 100
                Send 0
                Sleep 400
                Send 02
                Sleep 100
                Click, 100, 500
                Loop, 10
                {
                    Click, 100, 500
                }
                Send 0
                Sleep 400
                Send 1 
                Sleep 100
                if autorhythm = true
                {
                    if rhyright = true
                    {
                        Send r
                        Eating = 1
                    }
                }
            }
        }
        ;; eating 

        PixelSearch , x, y, 839, 133, 840, 134, 0x3A3A3A, 40, Fast ; right screen is hungry
        If (ErrorLevel = 0 and Eating = 1)
        {
            WinActivate ahk_pid %2%
            Sleep 100
            Send 0
            Sleep 400
            Send 034567890
            WinActivate ahk_pid %2%
            Sleep 100
            CoordMode, Pixel, Window
            time := A_TickCount
            Loop,
            {
                PixelSearch, x, y, 119, 144, 110, 146, 0x3A3A3A, 40, Fast ; full hunger
                If ErrorLevel = 1
                {
                    Break
                } else {
                    Click, 100, 470
                    Sleep 100
                    ImageSearch, x, y, 60, 515, 760, 600, *20 %A_ScriptDir%\bin\equipx.png ;if not found equiped slot /and still not full hunger
                    If ErrorLevel = 1
                    {
                        Sendinput, 34567890
                        aw++
                    }
                }
            } Until A_TickCount - time > 60000
            CoordMode, Pixel, Screen
            Send 1
            Sleep 100
            if autorhythm = true
                Send r
        }

        PixelSearch , x, y, 37, 133, 38, 134, 0x3A3A3A, 40, Fast ; left screen is hungry
        If (ErrorLevel = 0 and Eating = 1)
        {
            WinActivate ahk_pid %1%
            Sleep 100
            Send 0
            Sleep 400
            Send 034567890
            WinActivate ahk_pid %1%
            Sleep 100
            CoordMode, Pixel, Window
            time := A_TickCount
            Loop,
            {
                PixelSearch, x, y, 119, 144, 110, 146, 0x3A3A3A, 40, Fast ; full hunger
                If ErrorLevel = 1
                {
                    Break
                } else {
                    Click, 100, 470
                    Sleep 100
                    ImageSearch, x, y, 60, 515, 760, 600, *20 %A_ScriptDir%\bin\equipx.png ;if not found equiped slot /and still not full hunger
                    If ErrorLevel = 1
                    {
                        Sendinput, 34567890
                        aw++
                    }
                }
            } Until A_TickCount - time > 60000
            CoordMode, Pixel, Screen
            Send 1
            Sleep 100
            if autorhythm = true
                Send r
        }
    }

Return
~k::pause
~l::ExitApp
Space::ExitApp