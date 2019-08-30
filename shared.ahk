#Include update-check.ahk
#Include functions.ahk

global resolution_checked := false

; Keeps track of which menu is open based on what keys have been hit
global active_menu := "none"
global previous_menu := "none"

; Exit placement on right-click
#If WinActive("They Are Billions")
~RButton::
	if (active_menu = "placement")
		active_menu := previous_menu
return

; Menu detection
#If WinActive("They Are Billions")
~LButton Up::
~1 Up::
~2 Up::
~3 Up::
~4 Up::
~5 Up::
~6 Up::
~7 Up::
~8 Up::
~F2 Up::
	if !resolution_checked
		checkResolution()

	checkSelection()
return


; A "back" button - returns to higher level command center menus
#If WinActive("They Are Billions")
~Esc::
	if (active_menu <> "none") and (active_menu <> "barracks") and (active_menu <> "engineering")
		active_menu := "build"
return