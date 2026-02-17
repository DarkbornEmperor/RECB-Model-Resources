// Created by Crowbar 0.74

$modelname "hunter.mdl"

$model "body" "HunterRECB"

$eyeposition 0 32 73

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\hunterb1\"

$attachment "eyes" "Bip01 Head" -1.00 -4.00 -0.55 rotate 0 -20 90

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 60

$hbox 3 "Bip01 Spine" -5.229 -6.937 -7.84 4.592 5.544 8.351
$hbox 2 "Bip01 Spine1" 0 -8.078 -7.308 13.195 6.65 7.819
$hbox 2 "Bip01 Spine2" 0 -7.335999 -7.896 15.553999 9.639 8.05
$hbox 1 "Bip01 Head" -3.5 -3.577 -5.397 10.143 8.393 5.929
$hbox 4 "Bip01 L UpperArm" 0 -3.157 -2.989 14.084001 4.088 3.276
$hbox 4 "Bip01 L Forearm" 0 -1.575 -2.597 10.045 2.849 2.205
$hbox 4 "Bip01 L Hand" -0.07 -0.602 -1.253 3.283 1.169 2.569
$hbox 5 "Bip01 R UpperArm" 0 -3.122 -3.241 14.091 4.116 2.982
$hbox 5 "Bip01 R Forearm" 0 -1.54 -2.212 10.479 2.877 2.583
$hbox 5 "Bip01 R Hand" 0 -0.35 -2.576 3.29 1.162 1.253
$hbox 6 "Bip01 L Thigh" 0 -3.871 -5.971 16.212 4.942 4.025
$hbox 6 "Bip01 L Calf" 0 -2.443 -1.883 15.295 4.116 1.736
$hbox 6 "Bip01 L HorseLink" 0 -4.83 -3.01 16.611 1.89 2.632
$hbox 6 "Bip01 L Foot" 0 -3.92 -3.857 4.9 9.499 3.346
$hbox 7 "Bip01 R Thigh" 0 -3.997 -4.501 16.071999 4.823 5.495
$hbox 7 "Bip01 R Calf" 0 -2.52 -2.205 15.47 3.857 1.414
$hbox 7 "Bip01 R HorseLink" 0 -5.005 -3.101 16.540998 1.715 2.534
$hbox 7 "Bip01 R Foot" 0 -4.186 -3.78 4.9 9.226 3.423

$Animation aimneutral "aim_center.smd" frames 0 0
$Animation aimleft "head_left.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimcenter "aim_center.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimright "head_right.smd" subtract "aimneutral" 0 frames 0 0

$sequence "ref" {
	"HunterRECB"
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

$sequence "idle1" {
	"hunter_anims\idle1"
	ACT_IDLE 4
	fps 15
	loop
}
$sequence "turnleft" {
	"hunter_anims\turnleft"
	ACT_TURN_LEFT 1
	fps 30
}
$sequence "turnright" {
	"hunter_anims\turnright"
	ACT_TURN_RIGHT 1
	fps 30
}
$sequence "flinchsmall" {
	"hunter_anims\flinchsmall"
	ACT_SMALL_FLINCH 5
	fps 32
}
$sequence "attack1" {
	"hunter_anims\attack1"
	ACT_MELEE_ATTACK1 5
	{ event 1100 10 "melee" }
	{ event 1100 25 "melee" }
	fps 35
}
$sequence "hunterjump" {
	"hunter_anims\hunterjump"
	ACT_RANGE_ATTACK1 2
	{ event 1100 0 }
	fps 30
}
$sequence "hunterjump1" {
	"hunter_anims\hunterjump1"
	ACT_RANGE_ATTACK1 1
	{ event 1100 0 }
	fps 30
}
$sequence "hunterjump2" {
	"hunter_anims\hunterjump2"
	ACT_RANGE_ATTACK1 1
	{ event 1100 0 }
	fps 30
}
$sequence "walk" {
	"hunter_anims\walk"
	ACT_WALK 1
	{ event 1100 15 "step" }
	{ event 1100 34 "step" }
	{ event 1100 50 "step" }
	{ event 1100 67 "step" }
	{ event 1100 83 "step" }
	{ event 1100 100 "step" }
	{ event 1100 117 "step" }
	{ event 1100 135 "step" }
	{ event 1100 152 "step" }
	{ event 1100 170 "step" }
	{ event 1100 183 "step" }
	{ event 1100 200 "step" }
	fps 22
	loop
	LX
}
$sequence "run" {
	"hunter_anims\run"
	ACT_WALK 1
	{ event 1100 0 "step" }
	{ event 1100 11 "step" }
	fps 32
	loop
	LX
}
$sequence "laflinch" {
	"hunter_anims\laflinch"
	ACT_FLINCH_LEFTARM 1
	fps 35
}
$sequence "raflinch" {
	"hunter_anims\raflinch"
	ACT_FLINCH_RIGHTARM 1
	fps 35
}
$sequence "llflinch" {
	"hunter_anims\llflinch"
	ACT_FLINCH_LEFTLEG 1
	fps 35
}
$sequence "rlflinch" {
	"hunter_anims\rlflinch"
	ACT_FLINCH_RIGHTLEG 1
	fps 35
}
$sequence "dieheadshot" {
	"hunter_anims\dieheadshot"
	ACT_DIE_HEADSHOT 1
	{ event 1100 42 "death" }
	fps 30
	X
}
$sequence "dieheadshot2" {
	"hunter_anims\dieheadshot2"
	ACT_DIE_GUTSHOT 1
	{ event 1100 42 "death" }
	fps 32
}
$sequence "diesimple" {
	"hunter_anims\diesimple"
	ACT_DIESIMPLE 1
	{ event 1100 42 "death" }
	fps 30
	X
}
$sequence "diebackward" {
	"hunter_anims\diebackward"
	ACT_DIEBACKWARD 1
	{ event 1100 13 "death" }
	fps 30
}
$sequence "dieforward" {
	"hunter_anims\dieforward"
	ACT_DIEFORWARD 1
	{ event 1100 17 "death" }
	fps 30
	X
}
$sequence "ceilingfall" {
	"hunter_anims\ceilingfall"
	fps 30
}
$sequence "ceilingfall_idle" {
	"hunter_anims\ceilingfall_idle"
	fps 30
}
