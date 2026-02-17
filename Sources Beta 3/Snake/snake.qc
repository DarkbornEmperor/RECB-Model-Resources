// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Documents and Settings\Andreas\Desktop\SNAKE\snake.mdl"
$modelname "snake.mdl"

$model "body" "snake"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\snake\"

$attachment "eyes" "Bone25" 0.00 -1.80 1.20 rotate 0 -90 0

$illumposition 0 0 0 "bone01"

$cbox 0 0 0 0 0 0

$bbox -16 -16 0 16 16 100

$hbox 3 "bone01" -1.04 -2.451432 -1.05 1.05 2.269847 0.91
$hbox 3 "Bone02" -1.04 0 -1.05 1.05 2.542227 0.91
$hbox 3 "Bone03" -0.99 0 -1.43 1 2.269846 0.43
$hbox 3 "Bone04" -0.89 0 -1.13 0.9 2.269848 0.56
$hbox 3 "Bone05" -0.85 0 -1.08 0.86 2.723815 0.51
$hbox 3 "Bone06" -0.72 0 -0.93 0.74 2.269846 0.44
$hbox 3 "Bone07" -0.53 0 -1.32 0.52 2.360639 0
$hbox 2 "Bone14" -1.04 -2.814608 -1.19 1.05 0 0.77
$hbox 2 "Bone15" -1.04 -2.088259 -1.19 1.05 0 0.77
$hbox 2 "Bone16" -1.04 -2.451432 -1.34 1.05 0 0.63
$hbox 2 "Bone17" -1.04 -2.633021 -1.34 1.05 0 0.63
$hbox 2 "Bone18" -0.99 -2.360636 -1.65 1 0 0.21
$hbox 2 "Bone19" -0.94 -2.542229 -1.76 0.95 0 0.03
$hbox 2 "Bone20" -0.84 -2.269848 -1.63 0.86 0 0.01
$hbox 2 "Bone21" -0.75 -2.633022 -1.65 0.76 0 0
$hbox 2 "Bone22" -0.68 -2.26 -1.4 0.69 0 0.144118
$hbox 1 "Bone25" -1.62 -3.33 -1.03 1.62 0 1.82

$sequence "ref" {
	"snake"
	ACT_INVALID 1
	loop
}

$sequence "idle" {
	"snake_anims\idle"
	ACT_IDLE 1
	fps 5
	loop
}
$sequence "walk" {
	"snake_anims\walk"
	ACT_WALK 1
	{ event 1100 1 "step" }
	fps 45
	loop
	LX
}
$sequence "attack" {
	"snake_anims\attack"
	ACT_MELEE_ATTACK1 1
	{ event 1100 16 "melee" }
	fps 25
}
$sequence "die" {
	"snake_anims\die"
	ACT_DIESIMPLE 1
	{ event 1100 18 "death" }
	fps 14
	X
}
$sequence "treefall_idle" {
	"snake_anims\treefall_idle"
	fps 1
}
$sequence "treefall" {
	"snake_anims\treefall"
	{ event 1100 14 "death" }
	fps 30
}
