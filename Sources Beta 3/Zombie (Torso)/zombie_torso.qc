// Created by Crowbar 0.74

// Stored modelname (without quotes): "Zombie_torso.mdl"
$modelname "zombie_torso.mdl"

$bodygroup "zombieRECB"
{
	studio "cutinhalf"
	studio "has_legs"
}

$texturegroup "skinfamilies"
{
	{ "zombie_test.bmp"  }
	{ "zombie_test2.bmp" }
	{ "zombie_test3.bmp" }
	{ "zombie_test4.bmp" }
	{ "zombie_test5.bmp" }
	{ "zombie_test6.bmp" }
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\zombie_torso\"
$cdmaterials "models\vj_recb\zombie\"

$attachment "eyes" "Bip01 Head" 7.00 4.00 0.00 rotate 0 90 90
$attachment "head" "Bip01 Head" 4.00 0.00 0.00 rotate 0 0 90
$attachment "mouth" "Bip01 Head" 4.00 5.50 0.00 rotate 0 90 90

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hbox 6 "Bip01 L Thigh" 0 -5.69 -3.55 18.709999 3.61 3.43
$hbox 6 "Bip01 L Calf" 0 -3.77 -2.97 16.959999 2.21 2.41
$hbox 6 "Bip01 L Foot" -0.07 -2.29 -3.14 3.62 8.17 1.45
$hbox 7 "Bip01 R Thigh" 0 -5.96 -3.77 18.639999 3.58 3.39
$hbox 7 "Bip01 R Calf" 0 -3.85 -2.58 16.969999 2.16 2.98
$hbox 7 "Bip01 R Foot" -0.11 -2.29 -1.38 3.61 8.17 2.99
$hbox 3 "Bip01 Pelvis" -6.67 -4.4 -6.46 5.12 5.17 6.83
$hbox 3 "Bip01 Spine" 0 -3.29 -6.83 5.32 5 6.91
$hbox 2 "Bip01 Spine1" 0 -3.9 -6.2 5.7 5.67 5.91
$hbox 2 "Bip01 Spine2" 0 -3.65 -5.97 8.99 4.93 5.44
$hbox 4 "Bip01 L UpperArm" 0 -3.17 -1.87 5.47 2.95 1.58
$hbox 4 "Bip01 L Forearm" 0 -3.4 -1.95 10.95 2.06 2.46
$hbox 4 "Bip01 L UpperArm" 0 -2.88 -2.28 11.55 2.1 1.7
$hbox 4 "Bip01 L Hand" 0 -1.64 -1.96 6.12 1.79 1.77
$hbox 5 "Bip01 R UpperArm" 0 -3.08 -1.44 5.89 2.97 2.45
$hbox 5 "Bip01 R Forearm" 0 -3.35 -2.71 10.92 2.4 2.11
$hbox 5 "Bip01 R UpperArm" 0 -2.95 -1.97 11.25 2.22 2.45
$hbox 5 "Bip01 R Hand" 0 -1.85 -1.77 5.93 1.59 2.08
$hbox 1 "Bip01 Head" -1 -3.96 -3.86 8.02 5.23 4.07

$Animation aimneutral "aim_center.smd" frames 0 0
$Animation aimleft "head_left.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimcenter "aim_center.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimright "head_right.smd" subtract "aimneutral" 0 frames 0 0

$sequence "ref" {
	"cutinhalf"
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

$sequence "crawl" {
	"zombie_torso_anims\crawl"
	ACT_WALK 1
	{ event 1100 26 "step" }
	{ event 1100 75 "step" }
	fps 30
	loop
	LX
}
$sequence "idle" {
	"zombie_torso_anims\idle"
	ACT_IDLE 50
	fps 7
	loop
}
$sequence "diesimple_1" {
	"zombie_torso_anims\diesimple_1"
	ACT_DIESIMPLE 1
	fps 30
}
$sequence "flinch" {
	"zombie_torso_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 22
}
$sequence "lunge" {
	"zombie_torso_anims\lunge"
    ACT_MELEE_ATTACK_SWING 1
	fps 20
}
$sequence "attack" {
	"zombie_torso_anims\attack"
	ACT_MELEE_ATTACK1 1
	{ event 1100 20 "melee" }
	{ event 1100 33 "melee" }
	fps 20
}
$sequence "attack2" {
	"zombie_torso_anims\attack2"
	ACT_MELEE_ATTACK2 1
	{ event 1100 20 "melee" }
	{ event 1100 33 "melee" }
	fps 20
}
$sequence "split_in_half" {
	"zombie_torso_anims\split_in_half"
	ACT_SIGNAL1 1
	{ event 1100 13 "death" }
	fps 20
}
