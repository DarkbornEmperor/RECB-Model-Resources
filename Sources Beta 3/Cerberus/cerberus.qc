// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Documents and Settings\Andreas\Desktop\cerberusanim\cerberus."
$modelname "cerberus.mdl"

$origin 0 -25 0

$bodygroup "dog"
{
	studio "doggy_model"
	studio "headless"
}

$eyeposition 0 0 32

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\cerberus\"

$attachment "eyes" "Bone08" 2.00 -1.00 0.00 rotate 0 -40 -90
$attachment "head" "Bone07" 3.00 0.00 0.00 rotate 0 0 -90

$illumposition 0 0 0 "Bone02"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 40

$hbox 3 "Bip01" 0 -5.76 -5.15 12.12 1.99 4.98
$hbox 3 "Bone02" -2 -7.894895 -3.404999 10.300457 5 3.40484
$hbox 2 "Bone03" -2.7 -6.8 -3.92 8.122733 5.42 3.73
$hbox 2 "Bone04" -3.06 -8.559999 -5.44 7.83853 3.44 5.24
$hbox 2 "Bone05" -2.18 -10.96 -6.41 7.5 1.78 6.21
$hbox 1 "Bone06" 0 -2.39 -2.87 5.58 3.12 2.69
$hbox 1 "Bone08" -3.54 -7.43 -3.01 4.47 5.25 2.83
$hbox 1 "Bone10" -4.98 -1.19 -1.73 0.08 1.02 1.53
$hbox 4 "Bone23" 0 -3.39 -2.13 11.443666 2.33 1.34
$hbox 4 "Bone24" 0 -1.47 -1.43 7.714734 1.66 0.85
$hbox 4 "Bone25" -0.83 -1.36 -2.32 4.41 0.53 1.54
$hbox 5 "Bone18" 0 -3.4 -1.56 11.443665 2.34 1.92
$hbox 5 "Bone19" 0 -1.46 -1.09 7.714734 1.67 1.17
$hbox 5 "Bone20" -0.85 -1.35 -1.8 4.4 0.53 2.06
$hbox 6 "Bone28" 0 -4.82 -2.57 9.99273 3.71 1.57
$hbox 6 "Bone29" 0 -3.51 -1.96 7.493191 0.47 1.01
$hbox 6 "Bone30" -0.8 -1.63 -1.9 5.514886 1.61 0.94
$hbox 6 "Bone31" -0.94 -1.2 -2.67 4.56 0.84 1.48
$hbox 7 "Bone12" 0 -4.8 -1.8 9.992729 3.71 2.34
$hbox 7 "Bone13" 0 -3.5 -1.27 7.49319 0.49 1.71
$hbox 7 "Bone14" -0.79 -1.61 -1.18 5.514885 1.62 1.62
$hbox 7 "Bone15" -0.93 -1.19 -1.74 4.61 0.85 2.42
$hbox 3 "Bone35" 0 -0.96 -0.9 2.81 0.37 0.73

$sequence "ref" {
	"doggy_model"
	ACT_INVALID 1
	loop
}

$sequence "idle1" {
	"cerberus_anims\idle1"
	ACT_IDLE 4
	fps 12
	loop
}
$sequence "walk" {
	"cerberus_anims\walk"
	ACT_WALK 1
	{ event 1100 2 "step" }
	fps 35
	loop
	LX
}
$sequence "turnleft" {
	"cerberus_anims\turnleft"
	ACT_TURN_LEFT 1
	fps 20
}
$sequence "turnright" {
	"cerberus_anims\turnright"
	ACT_TURN_RIGHT 1
	fps 20
}
$sequence "diesimple_1_1" {
	"cerberus_anims\diesimple_1_1"
	ACT_DIESIMPLE 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "diesimple_2" {
	"cerberus_anims\diesimple_2"
	ACT_DIEBACKWARD 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "diesimple_3" {
	"cerberus_anims\diesimple_3"
	ACT_DIEFORWARD 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "diesimple_4" {
	"cerberus_anims\diesimple_4"
	ACT_DIEVIOLENT 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "diesimple_5" {
	"cerberus_anims\diesimple_5"
	ACT_DIE_GUTSHOT 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "diesimple_6" {
	"cerberus_anims\diesimple_6"
	ACT_DIE_CHESTSHOT 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "diesimple_7" {
	"cerberus_anims\diesimple_7"
	ACT_DIE_BACKSHOT 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "diesimple_8" {
	"cerberus_anims\diesimple_8"
	ACT_DIE_HEADSHOT 1
	{ event 1100 22 "death" }
	fps 25
	X
}
$sequence "flinch" {
	"cerberus_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 22
}
$sequence "attack2" {
	"cerberus_anims\attack2"
	ACT_MELEE_ATTACK1 1
	{ event 1100 6 "melee" }
	fps 30
}
$sequence "sleep" {
	"cerberus_anims\sleep"
	ACT_CROUCHIDLE 1
	fps 15
	loop
}
$sequence "gotosleep" {
	"cerberus_anims\gotosleep"
	ACT_CROUCH 1
	fps 24
}
$sequence "sleeptostand" {
	"cerberus_anims\sleeptostand"
	ACT_STAND 1
	fps 24
}
$sequence "jump_window" {
	"cerberus_anims\jump_window"
    ACT_SPECIAL_ATTACK1 1
	fps 24
}
$sequence "jump_window_idle" {
	"cerberus_anims\jump_window_idle"
	fps 1
}
$sequence "growl" {
	"cerberus_anims\growl"
	ACT_SIGNAL1 1
	{ event 1100 2 "grow" }
	fps 25
	X
}
$sequence "bark" {
	"cerberus_anims\bark"
	ACT_SIGNAL1 1
	{ event 1100 7 "bark" }
	fps 25
	X
}
