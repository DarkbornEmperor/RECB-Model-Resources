// Created by Crowbar 0.74

$modelname "dog.mdl"

$origin 0 -20 0

$model "mainbody" "dog_body"
$bodygroup "head"
{
	studio "dog_head"
	studio "dog_headgib"
}
$bodygroup "lefthand"
{
	studio "dog_lefthand"
	studio "dog_lefthandgib"
}
$bodygroup "leftleg"
{
	studio "dog_leftleg"
	studio "dog_leftleggib"
}
$bodygroup "righthand"
{
	studio "dog_righthand"
	studio "dog_righthandgib"
}
$bodygroup "rightleg"
{
	studio "dog_rightleg"
	studio "dog_rightleggib"
}

$eyeposition 0 0 64

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\cerberus\"

$attachment "eyes" "Object_4" 0.00 1.00 4.00 rotate 0 90 0
$attachment "head" "Object_4" 0.00 -4.00 1.00 rotate -40 90 0
$attachment "rarm" "Object_4" 0 0 0 rotate -40 90 0
$attachment "larm" "Object_6" 0.00 2.00 -0.50 rotate 90 90 0
$attachment "rleg" "Object_11" -1.50 -1.00 -3.00 rotate 80 -90 -180
$attachment "lleg" "Object_15" 1.50 -1.00 4.00 rotate 90 90 0

$illumposition 0 0 0 "Object_0"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 40

$hbox 3 "Object_0" -5.88 -15.5 -10.39 5.85 3.33 1.75
$hbox 2 "Object_1" -7 -2.47 -10.67 6.98 21.24 3.79
$hbox 2 "Object_2" -3.93 -4.46 -2.9 3.91 7.58 10.77
$hbox 1 "Object_3" -6.07 -1.6 -1.84 5.92 14.49 8.28
$hbox 1 "Object_4" -2.11 -1.34 -2.85 2.13 6.55 0.91
$hbox 5 "Object_5" -2.35 -6.48 -9.38 2.37 1.15 2.28
$hbox 5 "Object_6" -1.44 -2.35 -13.72 1.39 1.79 2.44
$hbox 5 "Object_7" -0.98 -0.69 -7.05 2.35 4.92 0.02
$hbox 4 "Object_8" -2.73 -6.48 -9.38 2.06 1.17 2.25
$hbox 4 "Object_9" -1.41 -2.37 -13.7 1.41 1.77 2.44
$hbox 4 "Object_10" -2.25 -0.69 -7.1 0.84 4.92 0.02
$hbox 7 "Object_11" -3.14 -4.12 -10.51 2.06 3.81 3.67
$hbox 7 "Object_12" -1.56 -8.23 -10.41 2.2 1.53 2.13
$hbox 7 "Object_13" -1.22 -1.27 -8.66 3.09 5.25 0.28
$hbox 6 "Object_14" -2.32 -4.12 -10.51 2.85 3.79 3.67
$hbox 6 "Object_15" -2.25 -8.25 -10.39 1.51 1.53 2.15
$hbox 6 "Object_16" -3.09 -1.34 -8.66 1.19 5.25 0.28

$sequence "ref" {
	"dog_body"
	ACT_INVALID 1
	loop
}

$sequence "idle" {
	"dog_anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}
$sequence "walk" {
	"dog_anims\walk"
	ACT_WALK 1
	{ event 1100 2 "step" }
	{ event 1100 40 'step" }
	fps 30
	loop
	LX
}
$sequence "walk2" {
	"dog_anims\walk2"
	{ event 1100 3 "step" }
	{ event 1100 13 "step" }
	fps 30
}
$sequence "run" {
	"dog_anims\run"
	ACT_RUN 1
	{ event 1100 2 "step" }
	{ event 1100 15 "step" }
	fps 30
	loop
	LX
}
$sequence "run_left" {
	"dog_anims\run_left"
	{ event 1100 2 "step" }
	{ event 1100 15 "step" }
	fps 30
}
$sequence "run_right" {
	"dog_anims\run_right"
	{ event 1100 2 "step" }
	{ event 1100 15 "step" }
	fps 30
}
$sequence "jump_start" {
	"dog_anims\jump_start"
	ACT_133 1
	fps 90
}
$sequence "jump_bite" {
	"dog_anims\jump_bite"
	ACT_SPECIAL_ATTACK1 1
	{ event 1100 1 }
	fps 30
}
$sequence "jump_over" {
	"dog_anims\jump_over"
	fps 30
}
$sequence "jump_over_land" {
	"dog_anims\jump_over_land"
	ACT_135 1
	fps 30
}
$sequence "flinch" {
	"dog_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "die_start" {
	"dog_anims\die_start"
	ACT_141 1
	fps 30
}
$sequence "die_end" {
	"dog_anims\die_end"
	ACT_DIESIMPLE 1
	fps 30
}
$sequence "getup" {
	"dog_anims\getup"
	fps 30
}
$sequence "sleep" {
	"dog_anims\sleep"
	ACT_144 1
	fps 30
}
$sequence "wake" {
	"dog_anims\wake"
	ACT_145 1
	fps 30
}
$sequence "kill_player" {
	"dog_anims\kill_player"
	fps 30
}
$sequence "to_howl" {
	"dog_anims\to_howl"
	fps 30
}
$sequence "howl" {
	"dog_anims\howl"
	fps 30
}
$sequence "eat" {
	"dog_anims\eat"
	fps 30
}
$sequence "bark" {
	"dog_anims\bark"
	ACT_SIGNAL1 1
	fps 30
}
$sequence "to_growl" {
	"dog_anims\to_growl"
	fps 30
}
$sequence "growl" {
	"dog_anims\growl"
	ACT_SIGNAL1 1
	fps 30
}
