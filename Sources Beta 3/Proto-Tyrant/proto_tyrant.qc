// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Documents and Settings\Andreas\Desktop\tyrant\proto_tyrant.md"
$modelname "proto_tyrant.mdl"

$model "body" "tyrant_final"
$model "body" "tyrant_final2"

$eyeposition 0 0 70

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\prototyrant\"

$attachment "eyes" "general Head" 7.70 6.00 -0.50 rotate 0 90 90
$attachment "rhand" "general R Hand" 24 -2 8.5

$illumposition 0 0 0 "general Spine"

$cbox 0 0 0 0 0 0

$bbox -16 -16 0 16 16 100

$hbox 3 "general Spine" -7.938 -8.05 -10.304 7.392 8.176 10.276
$hbox 2 "general Spine1" 0 -14.518 -5.935999 6.438826 0 5.908
$hbox 2 "general Spine2" 0 -0.005279 -8.344 8.241299 8.707999 8.33
$hbox 2 "general Spine3" 0 -16.309999 -8.316 8.638 8.638 8.273999
$hbox 1 "general Neck" -0.266 -4.13 -3.99 4.902306 3.85 3.976
$hbox 1 "general Head" 0 -4.732 -4.564 14.615999 11.101999 4.536
$hbox 4 "general L Clavicle" 0 -6.762 -0.882 11.397985 5.446 2.884
$hbox 4 "general L UpperArm" -4.354 -5.152 -4.62 17.083792 5.474 5.166
$hbox 4 "general L Forearm" -0.434 -3.486 -2.674 13.628871 3.71 5.026
$hbox 4 "general L Hand" -1.764 -3.486 -4.242 6.888 2.03 3.08
$hbox 5 "general R Clavicle" 0 -6.762 -2.422 11.397987 5.446 1.498
$hbox 5 "general R UpperArm" -3.472 -5.152 -4.746 17.261999 5.474 5.054
$hbox 5 "general R Forearm" 0 -3.472 -4.592 14.349999 3.724 3.108
$hbox 5 "general R Hand" -14.853999 -4.97 -4.886 32.48 4.284 14.07
$hbox 6 "general L Thigh" 0 -6.846 -5.334 27.235035 5.88 5.236
$hbox 6 "general L Calf" 0 -6.958 -4.76 20.731319 3.864 5.474
$hbox 6 "general L Foot" -0.7 -3.794 -4.354 7.042 14.518 4.41
$hbox 7 "general R Thigh" 0 -6.846 -5.208 27.235037 5.88 5.362
$hbox 7 "general R Calf" 0 -6.972 -5.446 20.731323 3.864 4.788
$hbox 7 "general R Foot" -0.714 -3.808 -4.382 7.042 14.518 4.396

$Animation aimneutral "aim_center.smd" frames 0 0
$Animation aimleft "head_left.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimcenter "aim_center.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimright "head_right.smd" subtract "aimneutral" 0 frames 0 0

$sequence "ref" {
	"tyrant_final"
	ACT_INVALID 1
	loop
}

$Sequence "aim_yaw" {
    "aimright"
    "aimcenter"
    "aimleft"
    delta
    blendwidth 3
    blendcenter aimcenter
    blend "aim_yaw" -90 90
	autoplay
}

$sequence "idle" {
	"proto_tyrant_anims\idle"
	ACT_IDLE 6
	fps 20
	loop
}
$sequence "attack1" {
	"proto_tyrant_anims\attack1"
	ACT_MELEE_ATTACK1 1
	{ event 1100 19 "melee" }
	fps 40
}
$sequence "attack2" {
	"proto_tyrant_anims\attack2"
	ACT_MELEE_ATTACK1 1
	{ event 1100 17 "melee" }
	fps 40
}
$sequence "walk" {
	"proto_tyrant_anims\walk"
	ACT_WALK 5
	{ event 1100 5 "step" }
	{ event 1100 20 "step" }
	{ event 1100 35 "step" }
	{ event 1100 50 "step" }
	fps 25
	loop
	LX
}
$sequence "run" {
	"proto_tyrant_anims\run"
	ACT_RUN 5
	{ event 1100 1 "step" }
	{ event 1100 8 "step" }
	fps 25
	loop
	LX
}
$sequence "dieviolent" {
	"proto_tyrant_anims\dieviolent"
	ACT_DIEVIOLENT 1
	{ event 1100 26 "death" }
	{ event 1100 64 "death" }
	fps 39
}
