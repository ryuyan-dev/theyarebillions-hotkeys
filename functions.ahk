getGameSize() {
	WinGetPos, , , game_width, game_height, They Are Billions
	
	WinGet, style, Style, They Are Billions
	has_border := (style & 0x800000) ? 1 : 0
	title_bar_height := 0
	window_border_width := 0
	window_border_height := 0
	
	if (has_border) {
		SysGet, title_bar_height, 31
		SysGet, window_border_width, 32
		SysGet, window_border_height, 33
	
		title_bar_height++
		
		game_width -= window_border_width * 2
		game_height -= (window_border_height * 2) + title_bar_height
	}
	
	return [game_width, game_height, window_border_width, window_border_height, title_bar_height]
}

; This is what happens when you're not clever enough at math
getSelectionColorData() {
	game_size := getGameSize()
	
	x := 0
	y := 0
	build_color := 0
	barracks_color := 0
	engineering_color := 0
	
	if (game_size[1] >= 2560) and (game_size[2] >= 1440) {
		x := 840
		y := 1300
		build_color := 0x0E0C09
		barracks_color := 0x2C4658
		engineering_color := 0x707372
	} else if (game_size[1] >= 2560) and (game_size[2] >= 1080) {
		x := 950
		y := 950
		build_color := 0x1E2722
		barracks_color := 0x77898B
		engineering_color := 0x0B1015
	} else if (game_size[1] >= 1920) and (game_size[2] >= 1080) {
		x := 630
		y := 975
		build_color := 0x14140F
		barracks_color := 0x2C4759
		engineering_color := 0x6F7371
	} else if (game_size[1] >= 1920) and (game_size[2] >= 992) {
		x := 637
		y := 951
		build_color := 0x0E0F0A
		barracks_color := 0x2B475B
		engineering_color := 0x737776
	} else if (game_size[1] >= 1768) and (game_size[2] >= 992) {
		x := 580
		y := 896
		build_color := 0x0F110C
		barracks_color := 0x2B475B
		engineering_color := 0x727776
	} else if (game_size[1] >= 1680) and (game_size[2] >= 1050) {
		x := 550
		y := 959
		build_color := 0x0D0F09
		barracks_color := 0x284255
		engineering_color := 0x717674
	} else if (game_size[1] >= 1600) and (game_size[2] >= 1024) {
		x := 528
		y := 944
		build_color := 0x1C1B1A
		barracks_color := 0x1A303E
		engineering_color := 0x237E9A
	} else if (game_size[1] >= 1600) and (game_size[2] >= 900) {
		x := 528
		y := 819
		build_color := 0x344851
		barracks_color := 0x0E202D
		engineering_color := 0x29697F
	} else if (game_size[1] >= 1366) and (game_size[2] >= 768) {
		x := 447
		y := 699
		build_color := 0x12100D
		barracks_color := 0x28343F
		engineering_color := 0x4E5C66
	} else if (game_size[1] >= 1360) and (game_size[2] >= 768) {
		x := 447
		y := 699
		build_color := 0x3E5C6C
		barracks_color := 0x778D97
		engineering_color := 0x304651
	} else if (game_size[1] >= 1280) and (game_size[2] >= 1024) {
		x := 422
		y := 959
		build_color := 0x385866
		barracks_color := 0x0E2636
		engineering_color := 0x27535F
	} else if (game_size[1] >= 1280) and (game_size[2] >= 960) {
		x := 422
		y := 899
		build_color := 0x5E7078
		barracks_color := 0x637C89
		engineering_color := 0x208FA4
	} else if (game_size[1] >= 1280) and (game_size[2] >= 800) {
		x := 417
		y := 749
		build_color := 0x335663
		barracks_color := 0x768E93
		engineering_color := 0x50646F
	} else if (game_size[1] >= 1280) and (game_size[2] >= 768) {
		x := 422
		y := 703
		build_color := 0x385866
		barracks_color := 0x0E2636
		engineering_color := 0x27535F
	} else if (game_size[1] >= 1280) and (game_size[2] >= 720) {
		x := 422
		y := 654
		build_color := 0x1E7498
		barracks_color := 0x183241
		engineering_color := 0x313E48
	}
	
	PixelGetColor, color, x + game_size[3], y + game_size[4] + game_size[5]
	
	return [color, build_color, barracks_color, engineering_color]
}

; This is what happens when you're not clever enough at math
getPlacementColorData() {
	game_size := getGameSize()
	
	x := 0
	y := 0
	button_color := 0
	
	if (game_size[1] >= 2560) and (game_size[2] >= 1440) {
		x := 1800
		y := 1380
		button_color := 0x053C2C
	} else if (game_size[1] >= 2560) and (game_size[2] >= 1080) {
		x := 1675
		y := 1030
		button_color := 0x043929
	} else if (game_size[1] >= 1920) and (game_size[2] >= 1080) {
		x := 1350
		y := 1030
		button_color := 0x033525
	} else if (game_size[1] >= 1920) and (game_size[2] >= 992) {
		x := 1346
		y := 1008
		button_color := 0x064735
	} else if (game_size[1] >= 1768) and (game_size[2] >= 992) {
		x := 1242
		y := 949
		button_color := 0x043C2B
	} else if (game_size[1] >= 1680) and (game_size[2] >= 1050) {
		x := 1192
		y := 1019
		button_color := 0x053D28
	} else if (game_size[1] >= 1600) and (game_size[2] >= 1024) {
		x := 1122
		y := 999
		button_color := 0x002B20
	} else if (game_size[1] >= 1600) and (game_size[2] >= 900) {
		x := 1122
		y := 869
		button_color := 0x033729
	} else if (game_size[1] >= 1366) and (game_size[2] >= 768) {
		x := 962
		y := 744
		button_color := 0x023627
	} else if (game_size[1] >= 1360) and (game_size[2] >= 768) {
		x := 962
		y := 744
		button_color := 0x033B2C
	} else if (game_size[1] >= 1280) and (game_size[2] >= 1024) {
		x := 908
		y := 999
		button_color := 0x064430
	} else if (game_size[1] >= 1280) and (game_size[2] >= 960) {
		x := 908
		y := 937
		button_color := 0x043B2B
	} else if (game_size[1] >= 1280) and (game_size[2] >= 800) {
		x := 912
		y := 779
		button_color := 0x033323
	} else if (game_size[1] >= 1280) and (game_size[2] >= 768) {
		x := 912
		y := 744
		button_color := 0x074330
	} else if (game_size[1] >= 1280) and (game_size[2] >= 720) {
		x := 900
		y := 695
		button_color := 0x043727
	}
	
	PixelGetColor, color, x + game_size[3], y + game_size[4] + game_size[5]
	
	return [color, button_color]
}

checkSelection() {
	placement_color_data := getPlacementColorData()
	if (placement_color_data[1] = placement_color_data[2]) {
		previous_menu := active_menu
		active_menu := "placement"
	} else {
		selection_color_data := getSelectionColorData()
		if (selection_color_data[1] <> selection_color_data[2])
			active_menu := "none"
		else if (active_menu = "none") or (active_menu = "barracks") or (active_menu = "engineering")
			active_menu := "build"
		
		if (active_menu = "none") {
			active_menu := (selection_color_data[1] = selection_color_data[3]) ? "barracks" : "none"
			
			if (active_menu = "none")
				active_menu := (selection_color_data[1] = selection_color_data[4]) ? "engineering" : "none"
		}
	}
}

; This is what happens when you're not clever enough at math
getCommandCardBounds() {
	game_size := getGameSize()
	
	x_min := 0
	x_max := 0
	y_min := 0
	y_max := 0
	
	if (game_size[1] >= 2560) {
		x_min := 1650
		x_max := 2034
	} else if (game_size[1] >= 2560) and (game_size[2] >= 1080) {
		x_min := 1562
		x_max := 1850
	} else if (game_size[1] >= 1920) {
		x_min := 1234
		x_max := 1516
	} else if (game_size[1] >= 1768) {
		x_min := 1143
		x_max := 1407
	} else if (game_size[1] >= 1680) {
		x_min := 1086
		x_max := 1337
	} else if (game_size[1] >= 1600) {
		x_min := 1035
		x_max := 1275
	} else if (game_size[1] >= 1366) {
		x_min := 883
		x_max := 1086
	} else if (game_size[1] >= 1360) {
		x_min := 880
		x_max := 1083
	} else if (game_size[1] >= 1280) {
		x_min := 828
		x_max := 1020
	}
	
	if (game_size[2] >= 1440) {
		y_min := 1194
		y_max := 1416
	} else if (game_size[2] >= 1080) {
		y_min := 896
		y_max := 1066
	} else if (game_size[2] >= 1054) {
		y_min := 872
		y_max := 1036
	} else if (game_size[2] >= 1050) {
		y_min := 890
		y_max := 1036
	} else if (game_size[2] >= 1024) {
		y_min := 885
		y_max := 1014
	} else if (game_size[2] >= 992) {
		y_min := 823
		y_max := 977
	} else if (game_size[2] >= 960) {
		y_min := 838
		y_max := 950
	} else if (game_size[2] >= 900) {
		y_min := 746
		y_max := 885
	} else if (game_size[2] >= 800) {
		y_min := 680
		y_max := 790
	} else if (game_size[2] >= 768) {
		y_min := 640
		y_max := 756
	} else if (game_size[2] >= 720) {
		y_min := 602
		y_max := 710
	}
	
	return [x_min + game_size[3], x_max + game_size[3], y_min + game_size[4] + game_size[5], y_max + game_size[4] + game_size[5]]
}

indexToCoords(i, j) {
    bounds := getCommandCardBounds()
   
    button_width := (bounds[2] - bounds[1])/5
    button_height := (bounds[4] - bounds[3])/3
   
    x := bounds[1] + (i*button_width) + (button_width/2)
    y := bounds[3] + (j*button_height) + (button_height/2)
	
    return [x, y]
}

ClickOnButton(i, j) {
	coords := indexToCoords(i, j)
	x := coords[1]
	y := coords[2]

	MouseGetPos, mX, mY  ; Save old position
	MouseMove, x, y, 0
	Send {LButton}

	MouseMove, %mX%, %mY%, 0  ; Return cursor to old position

	checkSelection()
	
	if (active_menu <> "placement") and (active_menu <> "barracks") and (active_menu <> "engineering") {
		MouseMove, x, y, 0
		Send {LButton}
		MouseMove, %mX%, %mY%, 0  ; Return cursor to old position
		checkSelection()
	}
}