// Created by Crowbar 0.74

$modelname "hunter.mdl"

$origin 0 -10 0

$model "studio" "hunter"

$eyeposition 0 0 64

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\hunterb3\"

$attachment "eyes" "Object_2" 0.00 7.00 -0.50 rotate 0 90 0

$illumposition 0 0 0 "Object_0"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 60

$hbox 3 "Object_0" -8.37 -5.4 -10.8 8.35 5.03 0.57
$hbox 2 "Object_1" -12.048 -6.26 -2.37 12.168001 7.82 22.200001
$hbox 1 "Object_2" -6.14 -1.05 -5.49 6.12 9.38 3.67
$hbox 1 "Object_3" -3.33 -1.24 -2.03 3.26 5.08 1.7
$hbox 5 "Object_4" -4.17 -5.42 -14.44 4.55 5.08 1.75
$hbox 5 "Object_5" -2.59 -3.19 -12.79 4.29 2.78 1.58
$hbox 5 "Object_6" -4.63 -5.87 -12.57 4.79 3.48 2.06
$hbox 4 "Object_7" -4.58 -5.42 -14.44 4.15 5.08 1.75
$hbox 4 "Object_8" -4.31 -3.19 -12.79 2.56 2.78 1.58
$hbox 4 "Object_9" -4.82 -5.88 -12.57 4.6 3.47 2.06
$hbox 6 "Object_10" -3.91 -4.32 -16.120001 5.92 5.61 0.26
$hbox 6 "Object_11" -2.83 -5.06 -15.96 3.31 2.47 0
$hbox 6 "Object_12" -2.92 -4.22 -9.59 9.74 16 2.66
$hbox 7 "Object_13" -5.95 -4.32 -16.120001 3.88 5.61 0.26
$hbox 7 "Object_14" -3.33 -5.06 -15.96 2.8 2.47 0
$hbox 7 "Object_15" -9.76 -4.22 -9.59 2.9 16 2.66

$sequence "ref" {
	"hunter"
	ACT_INVALID 1
	loop
}

$sequence "idle" {
	"hunter_anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}
$sequence "walk" {
	"hunter_anims\walk"
	ACT_WALK 1
	{ event 1100 1 "step" }
	{ event 1100 33 "step" }
	fps 30
	loop
	LX
}
$sequence "run" {
	"hunter_anims\run"
	ACT_RUN 1
	{ event 1100 1 "step" }
	{ event 1100 14 "step" }
	fps 30
	loop
	LX
}
$sequence "swipe" {
	"hunter_anims\swipe"
	ACT_MELEE_ATTACK1 1
	{ event 1100 5 "melee" }
	fps 30
}
$sequence "to_jump" {
	"hunter_anims\to_jump"
	ACT_133 1
	fps 30
}
$sequence "jump" {
	"hunter_anims\jump"
	ACT_RANGE_ATTACK1 1
	{ event 1100 1 }
	fps 30
}
$sequence "jump_land" {
	"hunter_anims\jump_land"
	ACT_135 1
	fps 30
}
$sequence "flinch_forward" {
	"hunter_anims\flinch_forward"
	ACT_125 1
	fps 30
}
$sequence "flinch_back" {
	"hunter_anims\flinch_back"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "die_forward_scream" {
	"hunter_anims\die_forward_scream"
	ACT_DIEFORWARD 1
	{ event 1100 34 }
	{ event 1100 56 }
	{ event 1100 75 "death" }
	fps 30
}
$sequence "die_back" {
	"hunter_anims\die_back"
	ACT_DIEBACKWARD 1
	{ event 1100 13 "death" }
	fps 30
}
$sequence "getup" {
	"hunter_anims\getup"
	ACT_128 1
	fps 30
}
$sequence "getup_back" {
	"hunter_anims\getup_back"
	ACT_129 1
	fps 30
}
$sequence "lie_back" {
	"hunter_anims\lie_back"
	ACT_130 1
	fps 30
}
$sequence "decap_player_left" {
	"hunter_anims\decap_player_left"
	ACT_131 1
	fps 30
}
$sequence "decap_player_right" {
	"hunter_anims\decap_player_right"
	ACT_132 1
	fps 30
}
$sequence "to_examine_head_left" {
	"hunter_anims\to_examine_head_left"
	fps 30
}
$sequence "examine_head_left" {
	"hunter_anims\examine_head_left"
	fps 30
}
$sequence "to_examine_head_right" {
	"hunter_anims\to_examine_head_right"
	fps 30
}
$sequence "examine_head_right" {
	"hunter_anims\examine_head_right"
	fps 30
}
