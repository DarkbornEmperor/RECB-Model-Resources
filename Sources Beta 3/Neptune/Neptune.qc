// Created by Crowbar 0.74

// Stored modelname (without quotes): "megalodon.mdl"
$modelname "neptune.mdl"

$origin 0 -75 -30

$model "studio" "reference"

$eyeposition 0 0 14

$externaltextures

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\neptune\"

$attachment "eyes" "Bip01 Head" 5.00 5.50 3.00 rotate 0 0 90

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -30 -30 0 30 30 60

$hbox 3 "Bip01 Pelvis" -6.82 -54.880001 -1.41 4.31 0 1.35
$hbox 2 "Bip01 Spine1" -8.71 -44.689999 -44.48 14.87 25.530001 44.48
$hbox 2 "Bip01 Spine3" -6.14 -11.56 -23.540001 13.628292 7.52 23.540001
$hbox 2 "Bip01 Spine4" -0.42 -23.17 -17.889999 13.628437 7.22 18.280001
$hbox 1 "Bip01 Head" -17.134552 0 -14.97 28.110001 29.610001 15.11
$hbox 1 "Dummy08" -15.62 -2.11 -17 22.809999 10.9 16.209999
$hbox 3 "Bip01 Tail1" -4 -18.58 -25.75 28.206125 14.52 25.75
$hbox 3 "Bip01 Tail2" -17.08 -11.9 -13.77 23.92193 20.18 13.48
$hbox 3 "Bip01 Tail3" -17.120001 -14.67 -4.56 20.172899 4.48 3.93
$hbox 3 "Bip01 Tail4" -6.82 -22.309999 -2.08 11.53 48.259998 1.6

$Animation aimneutral "aim_center.smd" frames 0 0
$Animation aimright "move_right.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimcenter "aim_center.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimleft "move_left.smd" subtract "aimneutral" 0 frames 0 0

$sequence "ref" {
	"reference"
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
	"Neptune_anims\idle"
	ACT_IDLE 1
	fps 15
	loop
}
$sequence "swim" {
	"Neptune_anims\swim_blend01"
	"Neptune_anims\swim_blend02"
	ACT_WALK 1
	blendwidth 2
	blend XR -180 180
	fps 50
	loop
}
$sequence "thrust" {
	"Neptune_anims\thrust_blend01"
	"Neptune_anims\thrust_blend02"
	ACT_RUN 1
	blendwidth 2
	blend XR -180 180
	fps 17
	loop
}
$sequence "die1" {
	"Neptune_anims\die1"
	ACT_DIESIMPLE 1
	fps 30
}
$sequence "die2" {
	"Neptune_anims\die2"
	ACT_DIEVIOLENT 1
	fps 30
}
$sequence "smflinch" {
	"Neptune_anims\smflinch"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "bgflinch" {
	"Neptune_anims\bgflinch"
	ACT_BIG_FLINCH 1
	fps 30
}
$sequence "bellyup" {
	"Neptune_anims\bellyup"
	fps 30
}
$sequence "bite_r" {
	"Neptune_anims\bite_r"
	ACT_MELEE_ATTACK1 1
	{ event 1100 9 "melee" }
	fps 15
}
$sequence "bite_l" {
	"Neptune_anims\bite_l"
	ACT_MELEE_ATTACK1 1
	{ event 1100 9 "melee" }
	fps 15
}
$sequence "srattack1" {
	"Neptune_anims\srattack1"
	ACT_MELEE_ATTACK1 1
	{ event 1100 14 "melee" }
	{ event 1100 26 "melee" }
	fps 30
}
$sequence "rturn" {
	"Neptune_anims\rturn"
    ACT_TURN_RIGHT 1
	fps 30
}
$sequence "lturn" {
	"Neptune_anims\lturn"
    ACT_TURN_LEFT 1
	fps 30
}
$sequence "180turn" {
	"Neptune_anims\180turn"
	fps 30
}
$sequence "hitcage" {
	"Neptune_anims\hitcage"
	fps 14
}
$sequence "new_ickyjump" {
	"Neptune_anims\new_ickyjump"
	{ event 1003 4 "catwalk" }
	{ event 1003 7 "iscream" }
	fps 18
	X Y ZR
}
