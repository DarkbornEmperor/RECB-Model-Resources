// Created by Crowbar 0.74

$modelname "licker.mdl"

$bodygroup "body"
{
	studio "licker"
	studio "licker_headless"
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\licker\"

$attachment "eyes" "joint26" 0.00 3.00 3.00 rotate -90 -90 0
$attachment "head" "joint26" 0.00 -4.00 -1.00 rotate -60 90 -180

$illumposition 0 0 0 "joint9"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 60

$hbox 2 "bip01" -9.95 -5.7 -9.256817 10.25 8.05 10.625
$hbox 2 "joint2" -9.07 -10.53 -5.36 8.77 3.81 7.16
$hbox 1 "joint3" -2.97 -4.38 -1.13 2.67 0 3.874092
$hbox 3 "joint8" -5.71 -4.72 -1.22 6.42 2.94 6.08548
$hbox 3 "joint9" -6.36 -6.8 -6.04 7.65 1.37 4.08
$hbox 6 "joint10" -5.04 -3.58 -1.59 3.17 3.17 19.440001
$hbox 6 "joint11" -4.75 -2.92 -1.58 2.5 2.79 19.550114
$hbox 6 "joint12" -3.23 -1.88 -3.64 1.6 2.59 7.35
$hbox 6 "joint13" 0 -1.57 0 6.36 1.69 6.18
$hbox 7 "joint14" -4.6 -3.46 -3.48 3.13 3.67 19.49
$hbox 7 "joint15" -4.94 -3.32 -1.83 1.94 1.68 18.888308
$hbox 7 "joint16" -3.21 -2.42 -2.97 1.8 2.11 6.354004
$hbox 7 "joint17" -1.44 -1.45 -0.18 6.79 1.74 6.39
$hbox 4 "joint18" -5.03 -2.78 -3.75 2 3.33 10.36
$hbox 4 "joint19" -2.55 -2.15 -2.44 3.33 2.72 14.698294
$hbox 4 "joint20" -2.54 -3.52 0 1.51 3.19 5.16
$hbox 4 "joint21" -4.57 -6.61 -1.83 5.1 5.66 11.82
$hbox 5 "joint22" -4.91 -4.1 -2.22 1.94 2.17 9.777392
$hbox 5 "joint23" -2.49 -2.78 -1.86 1.61 2.15 14.307377
$hbox 5 "joint24" -2.45 -1.7 0 1.64 3.48 7.22
$hbox 5 "joint25" -5.29 -5.15 -1.74 4.93 7.85 12.78
$hbox 1 "joint26" -4.1 -3.6 -5.07 3.81 7.17 5.94

$sequence "ref" {
	"licker"
	ACT_INVALID 1
	loop
}

$sequence "idle" {
	"licker_anims\idle"
	ACT_IDLE 1
	fps 3
	loop
}
$sequence "turnleft" {
	"licker_anims\turnleft"
	ACT_TURN_LEFT 1
	fps 35
}
$sequence "turnright" {
	"licker_anims\turnright"
	ACT_TURN_RIGHT 1
	fps 35
}
$sequence "flinch" {
	"licker_anims\flinch"
	ACT_SMALL_FLINCH 5
	fps 32
}
$sequence "attack1" {
	"licker_anims\attack1"
	ACT_MELEE_ATTACK1 1
	{ event 1 11 }
	{ event 1100 11 "melee" }
	fps 28
}
$sequence "attack2" {
	"licker_anims\attack2"
	ACT_MELEE_ATTACK1 2
	{ event 1 10 }
	{ event 1100 10 "melee" }
	fps 28
}
$sequence "tongue" {
	"licker_anims\tongue"
	ACT_MELEE_ATTACK2 5
	{ event 1 13 }
	{ event 1100 13 "melee" }
	fps 25
}
$sequence "run" {
	"licker_anims\run"
	ACT_WALK 1
	{ event 1100 10 "step" }
	{ event 1100 30 "step" }
	fps 85
	loop
	LX
}
$sequence "jump" {
	"licker_anims\jump"
	ACT_RANGE_ATTACK1 2
	{ event 2 0 }
	fps 30
}
$sequence "land" {
	"licker_anims\land"
	{ event 1100 0 "death" }
	fps 30
}
$sequence "die" {
	"licker_anims\die"
	ACT_DIE_HEADSHOT 1
	{ event 1100 10 "death" }
	fps 30
	X
}
$sequence "die2" {
	"licker_anims\die2"
	ACT_DIESIMPLE 1
	{ event 1100 6 "death" }
	{ event 1100 57 "death" }
	fps 18
}
