; 1920x1080 resolution, and Windowed Fullscreen required. In-Game Gamma needs to be default (can be done by just typing 'gamma' in console) and General UI Scale setting must be maxed.
;
; Instructions!!
; F3 to access dino you are riding's inventory and drop stone, flint, thatch, and wood. 
; F4 to toggle E macro on and off
; F5 to toggle Autoclicker on and off
; F6 to toggle U Whistle on and off
; F7 to switch between 'Magic F modes (QuickFeeding Raw Meat, Berries, Paste gathering, Sap Gathering, Takes Crops From Plots, Takes Honey From Hives, Plant Y from Plots again to turn it off)
; Right Control button to toggle autowalk forward on and off (or can press w to take over walking manually)
;
; 'Magic F' allows quick feeding  dino's, and gathering paste from snails.
; To use it, set it to the desired mode, have the food for the dinos in your inventory (Mejo or Raw meat), press 'f' on the dino to perform the action
; Raw Meat mode - Takes all spoiled and oil out of dinos inventory, and 'transfer all' on raw meat from your inventory to the dino when you press 'f' on it. (Also works for troughs). Ctrl + Shift + F4 to switch to this mode directly.
; Cooked Meat mode - Takes all spoiled and oil out of dinos inventory, and 'transfer all' on cooked meat from your inventory to the dino when you press 'f' on it. (Also works for troughs). Ctrl + Shift + F5 to switch to this mode directly.
; Berry mode - Transfers all (as much as possible) MEJO berries from your inventory to the dino when you press 'f' on it. Ctrl + Shift + F6 to switch to this mode directly.
; Paste mode - Trasnfers all paste out of the snails inventory when you press 'f' on it. Ctrl + Shift + F7 to switch to this mode directly.
; Ctrl + Shift + F8 to switch off Magic F directly.


CoordMode, ToolTip, Screen ; makes tooltip to appear at position, relative to screen.
Mode = 0

RemoteSearchX = 1300
RemoteSearchY = 180
RemoteDropX = 1530
RemoteDropY = 190
RemoteTransferAllX = 1480
RemoteTransferAllY = 190
LocalSearchX = 175
LocalSearchY = 180
LocalTransferAllX = 350
LocalTransferAllY = 190
InvPixelX = 1488
InvPixelY = 180
SeedsX = 1180
SeedsY = 360
TransferAllX = 350
TransferAllY = 190
RemoteDropAllX = 1530
RemoteDropAllY = 190
SearchX = 200
SearchY = 185

SetTimer EKey, 500
SetTimer Click, 50


NumpadMult::
If (Mode = 0)
Gui, Add, Text, ,Shift + F1 = Drop for Mejo`nShift + F2 = Drop for Crystal`nF3 = Drop for Metal`nF4 = E Macro`nF5 = Autoclick`nF6 = STOP ALL`nF7 = Magic F Mode`nF9 = Blood Script`nF10 = AutoDropDedi`nF11 = Drop for Raw Meat
Gui, Add, Button, gGUIClose, Ok
Gui, Show, Center, Msgbox
Return

GUIClose:
Gui, Destroy
Return

F1::

If (Mode = 0)
Loop
{
	Send f
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, Hide
	MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
	Send {Click}
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, i
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250	
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, rr
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, p
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, dust
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	Sleep 250
	Send {Esc}
	Break
}
Return

F9:: 
ToolTip, Blood Script,0,0
Loop
{
Send e
sleep 1000
send i
sleep 1000
MouseMove, %LocalSearchX%, %LocalSearchY%, 1
		Send {Click}
		Send, syr
Mousemove, 160, 270
sleep 200
click
Sleep 1000
send e
sleep 6000
send e
sleep 6000
send e
sleep 6000
send e
sleep 6000
send e
sleep 6000
send e
sleep 6000
send e
sleep 6000
send e
sleep 500
send i
sleep 500 
send {e Down}
sleep 1000
Mousemove, 1260, 530
send {e Up}
sleep 48000

}
ToolTip
Return


F10::
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenText, On
#SingleInstance, force
#MaxThreadsPerHotkey 2

screenX = %A_ScreenWidth%
screenY = %A_ScreenHeight%
Toggle := !Toggle
Loop {
	if (!Toggle) {
		break
	}
	if WinActive("ahk_exe ShooterGame.exe") {
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Sleep, 50
		Click
		Sleep, 10
		
		Loop, 3 {
			MouseMove, screenX * (362/1920), screenY * (274/1080)
			Sleep, 10
			Send, o
			Sleep, 10
			MouseMove, screenX * (439/1920), screenY * (274/1080)
			Sleep, 10
			Send, o
			Sleep, 10
			MouseMove, screenX * (533/1920), screenY * (274/1080)
			Sleep, 10
			Send, o
			Sleep, 10
			MouseMove, screenX * (624/1920), screenY * (274/1080)
			Sleep, 10
			Send, o
			Sleep, 10
		}
	}
}
Return

+F1::

If (Mode = 0)
ToolTip, Mejos,0,0
Loop
{
	Send f
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, A
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, T
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	Sleep 250
	Send {Esc}
	Break
	
}
ToolTip
Return

+F2::

If (Mode = 0)
ToolTip, Lunar Crystal,0,0
Loop
{
	Send f
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, O
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, B
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, H
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	Sleep 250
	Send {Esc}
	Break
	
}
ToolTip
Return


F11::

If (Mode = 0)
Loop
{
	Send f
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, p
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Sleep 250
	Send {Click}
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, raw
	MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
	Send {Click}
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	sleep 250
	Send {Click}
	Sleep 250
	MouseMove, %LocalSearchX%, %LocalSearchY%, 1
		Send {Click}
		Send, raw
	MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
	sleep 250
		Send {Click}
	Send {Esc}
	Break
	
}
Return

F2::
If (Mode = 0)
Loop
{
	Send f
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, w
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, c
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, s
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250
	Send {Esc}
	Break
}
Return

F3::
If (Mode = 0)
Loop
{
	Send f
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, n
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, d
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, c
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250
	MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
	Send {Click}
	Send, rr
	Sleep 250
	MouseMove, %RemoteDropX%, %RemoteDropY%, 1
	Send {Click}
	Sleep 250
	Send {Esc}
	Break
}
Return


F4::EToggle := !EToggle
	EKey:
		If (!EToggle)
		Return
		Send e
	return

F5::CToggle := !CToggle
	Click:
		If (!CToggle)
		Return
		click
	return

F6::Reload


F7::
If (Mode = 0)
{
	Mode = 1
	ToolTip, Magic F - Raw Meat Mode,0,0
}

Else If (Mode = 1)
{
	Mode = 2
	ToolTip, Magic F - Beer Mode,0,0
}

Else If (Mode = 2)
{
	Mode = 3
	ToolTip, Magic F - Give Berry Mode,0,0
}

Else If (Mode = 3)
{
	Mode = 4
	ToolTip, Magic F - Paste Mode,0,0
}

Else If (Mode = 4)
{
	Mode = 5
	ToolTip, Magic F - Sap Mode,0,0
}
Else If (Mode = 5)
{
	Mode = 6
	ToolTip, Magic F - Veggies,0,0
}
Else If (Mode = 6)
{
	Mode = 7
	ToolTip, Magic F - Honey,0,0
}
Else If (Mode = 7)
{
	Mode = 8
	ToolTip, Magic F - Plant Y / Berry Take,0,0
}
Else If (Mode = 8)
{
	Mode = 9
	ToolTip, Magic F - Plant Z,0,0
}
Else If (Mode = 9)
{
	Mode = 10
	ToolTip, Magic F - Tino Drop,0,0
}
Else If (Mode = 10)
{
	Mode = 11
	ToolTip, Magic F - Make Seeds,0,0
}
Else If (Mode = 11)
{
	Mode = 12
	ToolTip, Magic F - Blood,0,0
}
Else If (Mode = 12)
{
	Mode = 0
	ToolTip, Magic F - OFF,0,0
	Sleep 1500
	Tooltip
}
 Return

^+F4::
{
	Mode = 1
	ToolTip, Magic F - Raw Meat Mode,0,0
}
Return

^+F5::
{
	Mode = 2
	ToolTip, Magic F - Beer Mode,0,0
}
Return

^+F6::
{
	Mode = 3
	ToolTip, Magic F - Give Berry Mode,0,0
}
Return

^+F7::
{
	Mode = 4
	ToolTip, Magic F - Sap Mode,0,0
}
Return

^+F9::
{
	Mode = 5
	ToolTip, Magic F - Veggies Mode,0,0
}
Return

^+F10::
{
	Mode = 7
	ToolTip, Magic F - Honey Mode,0,0
}
Return
^+F11::
{
	Mode = 8
	ToolTip, Magic F - Plant Y,0,0
}
Return
^+F12::
{
	Mode = 9
	ToolTip, Magic F - Plant Z / Berry Take,0,0
}
Return
^+F13::
{
	Mode = 10
	ToolTip, Magic F - Tino Drop,0,0
}
Return
^+F8::
{
	Mode = 0
	ToolTip, Magic F - OFF,0,0
	Sleep 1500
	Tooltip
}
Return

~F::
If (Mode = 1)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, oil
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Sleep 250
		MouseMove, %LocalSearchX%, %LocalSearchY%, 1
		Send {Click}
		Send, raw
		MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}

If (Mode = 2)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, EE
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}

Else If (Mode = 3)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %LocalSearchX%, %LocalSearchY%, 1
		Send {Click}
		Send, Berry
		MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}

Else If (Mode = 4)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, paste
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}

Else If (Mode = 5)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, sap
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}

Else If (Mode = 6)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, a
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}

Else If (Mode = 7)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, H
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}

Else If (Mode = 8)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, Y
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}
Else If (Mode = 9)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, Z
		MouseMove, %RemoteTransferAllX%, %RemoteTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}
Else If (Mode = 10)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, M
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		Send {Click}
		Sleep 250
		MouseMove, %RemoteSearchX%, %RemoteSearchY%, 1
		Send {Click}
		Send, A
		Sleep 250
		MouseMove, %RemoteDropX%, %RemoteDropY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}
Else If (Mode = 12)
Loop
{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		MouseMove, %LocalSearchX%, %LocalSearchY%, 1
		Send {Click}
		Send, pack
		MouseMove, %LocalTransferAllX%, %LocalTransferAllY%, 1
		Send {Click}
		Send {Esc}
		break
	}
}
Else If (Mode = 11)
loop

{
	pixelgetcolor, Color, %InvPixelX%, %InvPixelY%
	If (Color = "0xA98A00") {
		Click, %RemoteSearchX%, %RemoteSearchY%, 1		
		Send, d		
		Sleep 200
		
		Click, %RemoteDropAllX%, %RemoteDropAllY%, 1
		Sleep 220
		
		Click, %TransferAllX%, %TransferAllY%, 1
		Sleep 100

		Send {Esc}
		break
	}
}
$~E::
	KeyWait, e, T0.5
If (Mode = 11)
{

	while GetKeyState("e", "P")
	{	
		Click, %SeedsX%, %SeedsY%, 1
		break
	}
}

