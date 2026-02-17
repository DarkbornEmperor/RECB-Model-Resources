// Created by Crowbar 0.74

$modelname "tyrant_103.mdl"

$model "studio" "tyrant_103_Tyrant103"

$eyeposition 0 0 70

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\tyrant103\"

$attachment "eyes" "Bip01 Head" 7.50 5.00 0.00 rotate 0 90 90

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -16 -16 0 16 16 90

$hbox 6 "Bip01 L Thigh" -1 -7.690001 -5.55 31.709999 7.61 5.43
$hbox 6 "Bip01 L Calf" 8 -1.77 -5.97 18.959999 4.21 -0.59
$hbox 6 "Bip01 L Foot" -1.07 -0.29 -4.14 4.62 14.17 2.45
$hbox 7 "Bip01 R Thigh" -2 -6.96 -5.77 32.639999 6.58 5.39
$hbox 7 "Bip01 R Calf" 8 -0.85 -1.58 18.969999 5.16 3.98
$hbox 7 "Bip01 R Foot" -1.11 -2.29 -1.38 4.61 14.17 2.99
$hbox 3 "Bip01 Pelvis" -6.67 -4.4 -10.46 5.12 7.17 10.83
$hbox 3 "Bip01 Spine" 0 -6.29 -8.83 5.32 8 8.91
$hbox 2 "Bip01 Spine1" 0 -6.9 -9.2 5.7 8.67 8.91
$hbox 2 "Bip01 Spine2" 0 -4.65 -10.969999 14.99 5.93 10.440001
$hbox 4 "Bip01 L UpperArm" 0 -3.17 -1.87 5.47 2.95 1.58
$hbox 4 "Bip01 L Forearm" -3 -4.4 -1.95 13.95 3.06 2.46
$hbox 4 "Bip01 L UpperArm" -1 -2.88 -3.28 14.55 4.1 4.7
$hbox 4 "Bip01 L Hand" 2 -3.64 -1.96 10.12 1.79 1.77
$hbox 5 "Bip01 R UpperArm" 0 -3.08 -1.44 5.89 2.97 2.45
$hbox 5 "Bip01 R Forearm" -2 -3.35 -3.71 12.92 4.4 3.11
$hbox 5 "Bip01 R UpperArm" -3 -4.95 -4.97 14.25 4.22 1.45
$hbox 5 "Bip01 R Hand" 0 -3.85 -2.77 9.93 1.59 3.08
$hbox 1 "Bip01 Head" 1 -2.96 -3.86 12.02 6.23 4.07

$sequence "ref" {
	"tyrant_103_Tyrant103"
	ACT_INVALID 1
	loop
}

$sequence "idle" {
	"tyrant_103_anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}
$sequence "walk" {
	"tyrant_103_anims\walk"
	ACT_WALK 1
	{ event 1100 0 "step" }
	{ event 1100 9 "step" }
	fps 30
	loop
	LX
}
$sequence "diesimple_1" {
	"tyrant_103_anims\diesimple_1"
	ACT_DIESIMPLE 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
}
$sequence "diesimple_2" {
	"tyrant_103_anims\diesimple_2"
	ACT_DIEBACKWARD 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
	X
}
$sequence "diesimple_3" {
	"tyrant_103_anims\diesimple_3"
	ACT_DIEVIOLENT 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
}
$sequence "diesimple_4" {
	"tyrant_103_anims\diesimple_4"
	ACT_DIE_CHESTSHOT 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
}
$sequence "diesimple_5" {
	"tyrant_103_anims\diesimple_5"
	ACT_DIE_BACKSHOT 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
}
$sequence "diesimple_6" {
	"tyrant_103_anims\diesimple_6"
	ACT_DIEFORWARD 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
	X
}
$sequence "diesimple_7" {
	"tyrant_103_anims\diesimple_7"
	ACT_DIE_HEADSHOT 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
}
$sequence "diesimple_8" {
	"tyrant_103_anims\diesimple_8"
	ACT_DIE_GUTSHOT 1
	{ event 1100 73 "death" }
	{ event 1100 93 "death" }
	fps 16
	X
}
$sequence "attack1" {
	"tyrant_103_anims\attack1"
	ACT_MELEE_ATTACK1 1
	{ event 1100 9 "" }
	{ event 1100 13 "melee" }
	fps 37
}
$sequence "attack2" {
	"tyrant_103_anims\attack2"
	ACT_MELEE_ATTACK1 5
	{ event 1100 9 "" }
	{ event 1100 13 "melee" }
	fps 37
}
$sequence "attack3" {
	"tyrant_103_anims\attack3"
	ACT_MELEE_ATTACK1 5
	{ event 1100 7 "tyrant103/ty_swing.wav" }
	{ event 1100 13 "melee"  }
	fps 33
}
$sequence "flinch_1" {
	"tyrant_103_anims\flinch_1"
	ACT_BIG_FLINCH 1
	fps 30
}
$sequence "flinch_2" {
	"tyrant_103_anims\flinch_2"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "drop_idle" {
	"tyrant_103_anims\drop_idle"
	fps 30
}
$sequence "drop_down" {
	"tyrant_103_anims\drop_down"
	{ event 1100 6 "land" }
	fps 30
}
