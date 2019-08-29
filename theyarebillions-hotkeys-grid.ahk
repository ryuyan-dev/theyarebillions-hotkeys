#Include shared.ahk

;
; BuildMenu
;
#If WinActive("They Are Billions")
Enter::
b::
    active_menu := "build"
    Send {Enter}
return


;
; ColonistsMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
q::
    active_menu := "colonists"
    Send c
return

#If WinActive("They Are Billions") and active_menu = "colonists"
q::ClickOnButton(0, 0) ; Tent
w::ClickOnButton(1, 0) ; Cottage
e::ClickOnButton(2, 0) ; Stone house


;
; ResourcesMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
w::
    active_menu := "resources"
    Send r
return

#If WinActive("They Are Billions") and active_menu = "resources"
q::ClickOnButton(0, 0) ; Hunter
w::ClickOnButton(1, 0) ; Fisherman
e::ClickOnButton(2, 0) ; Sawmill
a::ClickOnButton(0, 1) ; Quarry
s::ClickOnButton(1, 1) ; fArm
d::ClickOnButton(2, 1) ; oil platform (eXon-mobile, the oil company)


;
; ElectricityMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
~e::
    active_menu := "electricity"
return

#If WinActive("They Are Billions") and active_menu = "electricity"
q::ClickOnButton(0, 0) ; Tesla tower
a::ClickOnButton(0, 1) ; (Wind)mill


;
; IndustryMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
a::
    active_menu := "industry"
    Send i
return

#If WinActive("They Are Billions") and active_menu = "industry"
q::ClickOnButton(0, 0) ; wareHouse
a::ClickOnButton(0, 1) ; Wood workshop
s::ClickOnButton(1, 1) ; Stone workshop
d::ClickOnButton(2, 1) ; Foundry
z::ClickOnButton(0, 2) ; Market
x::ClickOnButton(1, 2) ; Bank
c::ClickOnButton(2, 2) ; Inn

;
; MilitaryMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
s::
    active_menu := "military"
    Send m
return

#If WinActive("They Are Billions") and active_menu = "military"
q::ClickOnButton(0, 0) ; Barracks (solider's center)
a::ClickOnButton(0, 1) ; Great ballista
z::ClickOnButton(0, 2) ; lookout (Telescope) tower
x::ClickOnButton(1, 2) ; Radar tower
w::ClickOnButton(1, 0) ; Engineering center
s::ClickOnButton(1, 1) ; Shock tower
d::ClickOnButton(2, 1) ; eXecutor


;
; DefenseMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
d::
	active_menu := "defense"
    Send f
return

; Too much repetition, I went with a grid layout instead
#If WinActive("They Are Billions") and active_menu = "defense"
q::ClickOnButton(0, 0)
w::ClickOnButton(1, 0)
e::ClickOnButton(2, 0)
r::ClickOnButton(3, 0)
a::ClickOnButton(0, 1)
s::ClickOnButton(1, 1)
d::ClickOnButton(2, 1)
f::ClickOnButton(3, 1)
z::ClickOnButton(0, 2)
x::ClickOnButton(1, 2)
c::ClickOnButton(2, 2)
v::ClickOnButton(3, 2)


;
; BonusMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
z::
    active_menu := "bonus"
    Send b
return

#If WinActive("They Are Billions") and active_menu = "bonus"
q::ClickOnButton(0, 0)
w::ClickOnButton(1, 0)
e::ClickOnButton(2, 0)
r::ClickOnButton(3, 0)
a::ClickOnButton(0, 1)
s::ClickOnButton(1, 1)
d::ClickOnButton(2, 1)
f::ClickOnButton(3, 1)
z::ClickOnButton(0, 2)
x::ClickOnButton(1, 2)
c::ClickOnButton(2, 2)
v::ClickOnButton(3, 2)


#If WinActive("They Are Billions") and active_menu = "barracks"
q::ClickOnButton(0, 0) ; Ranger
w::ClickOnButton(0, 1) ; Soldier
e::ClickOnButton(0, 2) ; Sniper  


#If WinActive("They Are Billions") and active_menu = "engineering"
q::ClickOnButton(0, 0) ; Lucifer
w::ClickOnButton(0, 1) ; Thanatos
e::ClickOnButton(0, 2) ; Titan