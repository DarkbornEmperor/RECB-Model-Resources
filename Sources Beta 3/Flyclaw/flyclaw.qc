// Created by Crowbar 0.74

$modelname "flyclaw.mdl"

$bodygroup "Pursuer"
{
	studio "flyclaw_fly_claw"
	studio "flyclaw_fly_claw_no_wings"
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\flyclaw\"

$attachment "eyes" "Bip01 Head" 0.40 12.00 4.00 rotate 0 90 0

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 60

$hbox 3 "Bip01 Pelvis" -6.69 -4.44 -9.75 6 5.56 5.75
$hbox 6 "Bip01 L Leg" -4.34 -4.69 -6.09 5.16 3.88 12.309999
$hbox 6 "Bip01 L Leg1" -1.62 -3.97 -4.84 3.6 2 16.940001
$hbox 6 "Bip01 L Foot" -10.59 -2.34 -3.63 1.79 8 3.19
$hbox 7 "Bip01 R Leg" -4.53 -3.69 -6.16 5.129999 4.88 12.38
$hbox 7 "Bip01 R Leg1" -1.690001 -1.97 -4.84 3.6 3.94 16.970001
$hbox 7 "Bip01 R Foot" -9.559999 -7.34 -3.19 2.809999 3 3.66
$hbox 3 "Bip01 Spine1" -6.25 -9.5 -5.5 7.83 5.5 5.5
$hbox 2 "Bip01 Spine2" -8.059999 -6.53 -6.59 8 8 8.59
$hbox 2 "Bip01 Spine3" -7.25 -6.809999 -7.31 7.5 5.09 7.31
$hbox 2 "Bip01 Neck" -4.11 -3.5 -4 5.05 3.5 4
$hbox 1 "Bip01 Head" -4.91 -2.66 -5 5.41 16.09 9
$hbox 4 "Bip01 L Arm" 0.94 -2.88 -4.13 5.44 4.28 3.5
$hbox 4 "Bip01 L Arm1" -3.16 -4.34 -3.56 4.56 3.41 13.38
$hbox 4 "Bip01 L Arm2" -2.41 -2.81 1.81 3.75 3.84 14.41
$hbox 4 "Bip01 L Hand" -2 -6 0 7 4.5 11.5
$hbox 5 "Bip01 R Arm" 1.38 -2.84 -3.56 5.69 4.31 4.31
$hbox 5 "Bip01 R Arm1" -2.88 -3.47 -3.16 2.81 4.28 13.809999
$hbox 5 "Bip01 R Arm2" -3.56 -2.97 -1.34 2.59 3.72 13.22
$hbox 5 "Bip01 R Hand" -7 -5 2 2 3.5 11.5

$Animation aimneutral "aim_center.smd" frames 0 0
$Animation aimup "aim_up.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimcenter "aim_center.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimdown "aim_down.smd" subtract "aimneutral" 0 frames 0 0

$sequence "ref" {
	"flyclaw_fly_claw"
	ACT_INVALID 1
	loop
}

$Sequence "aim_pitch" {
    "aimup"
    "aimcenter"
    "aimdown"
    delta
    blendwidth 3
    blendcenter aimcenter
    blend "aim_pitch" -90 90
	autoplay
}

$sequence "idle" {
	"flyclaw_anims\idle"
	ACT_IDLE 1
	fps 24
	loop
}
$sequence "flinch" {
	"flyclaw_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 35
}
$sequence "flinch2" {
	"flyclaw_anims\flinch_2"
	ACT_BIG_FLINCH 1
	fps 24
}
$sequence "run" {
	"flyclaw_anims\run"
	ACT_RUN 1
	{ event 1100 2 "step" }
	{ event 1100 11 "step" }
	fps 40
	loop
	LX
}
$sequence "attack" {
	"flyclaw_anims\attack_blend01"
	"flyclaw_anims\attack_blend02"
	ACT_MELEE_ATTACK1 1
	{ event 1100 7 "" }
	{ event 1100 8 "melee" }
	blendwidth 2
	blend XR -180 180
	fps 35
}
$sequence "attack2" {
	"flyclaw_anims\attack2_blend01"
	"flyclaw_anims\attack2_blend02"
	ACT_MELEE_ATTACK1 1
	{ event 1100 7 "" }
	{ event 1100 13 "" }
	{ event 1100 8 "melee" }
	{ event 1100 15 "melee" }
	blendwidth 2
	blend XR -180 180
	fps 35
}
$sequence "attack3" {
	"flyclaw_anims\attack3_blend01"
	"flyclaw_anims\attack3_blend02"
	ACT_MELEE_ATTACK2 1
	{ event 1100 8 "" }
	{ event 1100 8 "melee" }
	blendwidth 2
	blend XR -180 180
	fps 35
}
$sequence "diesimple" {
	"flyclaw_anims\diesimple"
	ACT_DIESIMPLE 1
	{ event 1100 58 "death" }
	fps 30
}
