#SingleInstance, force

Gui, StatusBox: New
Gui, StatusBox: +AlwaysOnTop
Gui, StatusBox: +LastFound
Gui, StatusBox: Color, White
Gui, StatusBox: Add, Text, vStatusText, Status Message Here
Gui, StatusBox: Show, w216 h68, Stam Status
UpdateStatus("F5 to start")

removetooltip() {
    tooltip
}

f5::
    UpdateStatus("started")
    Loop,

    ImageSearch, x, y, 0, 0, 1920, 1080, L.bmp
    if ErrorLevel = 0 
    {
        Send, L
        UpdateStatus("L Pressed")
        Sleep, 1000
    }

    ImageSearch, x, y, 0, 0, 1920, 1080, S.bmp
    if ErrorLevel = 0 
    {
        Send, S
        UpdateStatus("S Pressed")
        Sleep, 1000
    }
    ImageSearch, x, y, 0, 0, 1920, 1080, G.bmp
    if ErrorLevel = 0 
    {
        Send, G
        UpdateStatus("G Pressed")
        Sleep, 1000
    }
    ImageSearch, x, y, 0, 0, 1920, 1080, R.bmp
    if ErrorLevel = 0 
    {
        Send, R
        UpdateStatus("R Pressed")
        Sleep, 1000
    }
    ImageSearch, x, y, 0, 0, 1920, 1080, W.bmp
    if ErrorLevel = 0 
    {
        Send, W
        UpdateStatus("W Pressed")
        Sleep, 1000
    }
    ImageSearch, x, y, 0, 0, 1920, 1080, A.bmp
    if ErrorLevel = 0 
    {
        Send, A
        UpdateStatus("A Pressed")
        Sleep, 1000
    }
Return

UpdateStatus(NewStatus){
    GuiControl, StatusBox: Text, StatusText, %NewStatus%
    Gui, StatusBox: Show
Return
}
~k::pause
~j::ExitApp