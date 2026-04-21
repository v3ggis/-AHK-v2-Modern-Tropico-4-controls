[AHK v2] Modern Tropico 4 controls (Cities: Skylines Style Camera & Controls)

Hey everyone,

I recently went back to play Tropico 4 but struggled with the outdated camera controls. I wanted it to feel smooth and modern, similar to Cities: Skylines.

The already existing AutoHotkey scripts I tried were quite clunky to use and were made for AHK v1, so I had a brand new AHK v2 script written. It completely overhauls the camera, fixes the clunky game speed hotkeys, and uses Virtual Keys to ensure it works on international keyboard layouts (no more AltGr issues!).

The New Control Scheme:

W, A, S, D - Pan Camera

Q / E - Rotate Camera Left / Right

R / F - Change Camera Pitch / Elevation

Z / X - Zoom In / Out

C / V - Cycle Variations (Previous/Next for Parks, Trees, etc. Replaces the Bracket keys)

T - Build Roads

B - Demolish (Bulldoze)

Spacebar - Pause / Unpause Game

1, 2, 3 - Game Speeds (Normal, Fast, Fastest)

Shift + Scroll Wheel - Increase / Decrease Game Speed smoothly

F10 - Toggle Script On/Off (Press this when you need to type an island name or save file!)

How it works (Safe to leave running!)
This script is designed to be completely unobtrusive:

Game-Specific: It only activates when Tropico 4 is the currently active window. If you Alt-Tab out to your browser or Discord, your keyboard instantly reverts to normal. You can safely leave it running in your system tray 24/7.

Typing in-game: If you need to type an island name or a save file inside the game, simply press F10. This suspends the custom hotkeys so you can type normally. Press F10 again when you are done to resume the custom controls.

How to install and use:
Download and install AutoHotkey v2 from the official website (make sure it is v2, not v1).

Open your Windows Documents folder. You should see a folder inside named AutoHotkey (create one if it isn't there). Open it.

Right-click anywhere inside the folder and select New > AutoHotkey Script.

Name the new file Tropico4_Controls.ahk.

Right-click the file and select Edit script (or open it with Notepad).

Paste the code from this repository into the file, save it, and double-click it to run. A green "H" icon will appear in your system tray to let you know it is active. To stop the script, right-click the icon and click exit. 

Note for AZERTY / QWERTZ users: You will need to open the script and manually change the w, a, s, d triggers to match your preferred physical movement keys.