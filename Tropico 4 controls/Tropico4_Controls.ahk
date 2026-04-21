#Requires AutoHotkey v2.0
#SingleInstance Force

#HotIf WinActive("ahk_class Tropico 4")

; --- Camera Movement (WASD) ---
w::Up
a::Left
s::Down
d::Right

; --- Camera Pitch / Elevation (R and F) ---
*r:: {
    SendEvent("{Alt down}{Up down}")
    KeyWait("r")
    SendEvent("{Up up}{Alt up}")
}

*f:: {
    SendEvent("{Alt down}{Down down}")
    KeyWait("f")
    SendEvent("{Down up}{Alt up}")
}

; --- Camera Rotation (Q and E) ---
*q:: {
    SendEvent("{Alt down}{Left down}")
    KeyWait("q")
    SendEvent("{Left up}{Alt up}")
}

*e:: {
    SendEvent("{Alt down}{Right down}")
    KeyWait("e")
    SendEvent("{Right up}{Alt up}")
}

; --- Camera Zoom (Z and X) ---
z::WheelUp
x::WheelDown

; --- Build Roads (T) ---
*t:: {
    SendEvent("{r down}")
    Sleep(30)
    SendEvent("{r up}")
}

; --- Demolition Tool (B) ---
*b:: {
    SendEvent("{Delete down}")
    Sleep(30)
    SendEvent("{Delete up}")
}

; --- Cycle Variations (C and V) ---
; Uses Virtual Key (VK) codes to bypass international language layout issues
*c:: {
    SendEvent("{vkDB down}") ; Left Bracket [
    Sleep(40)
    SendEvent("{vkDB up}")
}

*v:: {
    SendEvent("{vkDD down}") ; Right Bracket ]
    Sleep(40)
    SendEvent("{vkDD up}")
}

; --- Pause Game (Spacebar) ---
*Space:: {
    SendEvent("{Pause down}")
    Sleep(30)
    SendEvent("{Pause up}")
}

; --- Game Speed (1, 2, 3) ---
1::SetGameSpeed(1)
2::SetGameSpeed(2)
3::SetGameSpeed(3)

SetGameSpeed(level) {
    SetKeyDelay(0, 15)
    if (level == 1)
        SendEvent("----{+}")
    else if (level == 2)
        SendEvent("----{+}{+}")
    else if (level == 3)
        SendEvent("----{+}{+}{+}")
}

; --- Change Speed (Shift + Scroll Wheel) ---
+WheelUp:: {
    static lastUp := 0
    if (A_TickCount - lastUp > 100) { 
        Send("{+ down}")
        Sleep(20)
        Send("{+ up}")
        lastUp := A_TickCount
    }
}

+WheelDown:: {
    static lastDown := 0
    if (A_TickCount - lastDown > 100) { 
        Send("{- down}")
        Sleep(20)
        Send("{- up}")
        lastDown := A_TickCount
    }
}

; --- Typing Toggle (F10) ---
; The SuspendExempt directive ensures F10 still works even when the rest of the script is paused
#SuspendExempt
F10::Suspend()
#SuspendExempt False

#HotIf