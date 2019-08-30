#Include shared.ahk

;
; BuildMenu
;
#If WinActive("They Are Billions") and active_menu <> "military" and active_menu <> "industry"
Enter::
b::
    active_menu := "build"
    Send {Enter}
return


;
; ColonistsMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
~c::
    active_menu := "colonists"
return

#If WinActive("They Are Billions") and active_menu = "colonists"
t::ClickOnButton(0, 0) ; Tent
c::ClickOnButton(1, 0) ; Cottage
s::ClickOnButton(2, 0) ; Stone house


;
; ResourcesMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
~r::
    active_menu := "resources"
return

#If WinActive("They Are Billions") and active_menu = "resources"
h::ClickOnButton(0, 0) ; Hunter
f::ClickOnButton(1, 0) ; Fisherman
s::ClickOnButton(2, 0) ; Sawmill
q::ClickOnButton(0, 1) ; Quarry
a::ClickOnButton(1, 1) ; fArm
x::ClickOnButton(2, 1) ; oil platform (eXon-mobile, the oil company)


;
; ElectricityMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
~e::
    active_menu := "electricity"
return

#If WinActive("They Are Billions") and active_menu = "electricity"
t::ClickOnButton(0, 0) ; Tesla tower
w::ClickOnButton(0, 1) ; (Wind)mill


;
; IndustryMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
n::
    active_menu := "industry"
    Send i
return

#If WinActive("They Are Billions") and active_menu = "industry"
h::ClickOnButton(0, 0) ; wareHouse
w::ClickOnButton(0, 1) ; Wood workshop
s::ClickOnButton(1, 1) ; Stone workshop
f::ClickOnButton(2, 1) ; Foundry
m::ClickOnButton(0, 2) ; Market
b::ClickOnButton(1, 2) ; Bank
n::ClickOnButton(2, 2) ; iNn

;
; MilitaryMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
t::
    active_menu := "military"
    Send m
return

#If WinActive("They Are Billions") and active_menu = "military"
b::ClickOnButton(0, 0) ; Barracks (solider's center)
g::ClickOnButton(0, 1) ; Great ballista
t::ClickOnButton(0, 2) ; lookout (Telescope) tower
r::ClickOnButton(1, 2) ; Radar tower
e::ClickOnButton(1, 0) ; Engineering center
s::ClickOnButton(1, 1) ; Shock tower
x::ClickOnButton(2, 1) ; eXecutor


;
; DefenseMenu
;
#If WinActive("They Are Billions") and active_menu = "build"
~f::
	active_menu := "defense"
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
r::ClickOnButton(0, 0) ; Ranger
a::ClickOnButton(1, 0) ; mArine (soldier)
s::ClickOnButton(2, 0) ; Sniper  


#If WinActive("They Are Billions") and active_menu = "engineering"
c::ClickOnButton(0, 0) ; luCifer
t::ClickOnButton(1, 0) ; Thanatos
g::ClickOnButton(2, 0) ; Goliath (titan)