// Created by Crowbar 0.74

$modelname "crawler.mdl"

$origin 0 -15 0

$model "studio" "bug_monster"

$eyeposition 0 -16 64

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\crawler\"

$attachment "eyes" "Bip01 Head" 5.00 5.50 3.00 rotate 0 0 90

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -20 -20 0 20 20 60

$hbox 3 "Bip01 Pelvis" -18.379999 -39.099998 -13.92309 5.62 3.3 20.190001
$hbox 6 "Bip01 L Thigh" -7.95 -1.76 -3.21 12.918305 26.08 3.81
$hbox 6 "Bip01 L Calf" 0 -3.46 -0.74 22.950001 0 1.72
$hbox 7 "Bip01 R Thigh" -7.67 -4.85 0 12.918305 3.62 6.1
$hbox 7 "Bip01 R Calf" 0 -4.8 0 21.75 0 3.3
$hbox 2 "Bip01 Neck" -18.77 -24.200001 -13.6 3.56 17.120001 20.16
$hbox 1 "Bip01 Head" -9.55 -17.080002 -6.49 17.33 12.66 13.3
$hbox 4 "Bip01 L UpperArm" 0 -4.17 -4.34 15.16 8.42 1.2
$hbox 4 "Bip01 L Forearm" 0 -1.61 -1.5 27.860001 1.51 0
$hbox 5 "Bip01 R UpperArm" -1.27 -1.63 -3.02 12.413226 0 0
$hbox 5 "Bip01 R Forearm" -6.86 -7.73 -0.75 22.32 0 2.44

$sequence "ref" {
	"bug_monster"
	ACT_INVALID 1
	loop
}

$sequence "idle" {
	"crawler_anims\idle"
	ACT_IDLE 50
	fps 5
}
$sequence "run" {
	"crawler_anims\run"
	ACT_WALK 1
	{ event 1100 1 "step" }
	fps 24
	loop
	LX
}
$sequence "diesimple" {
	"crawler_anims\diesimple"
	ACT_DIESIMPLE 1
	{ event 1100 7 "death" }
	fps 24
	X
}
$sequence "attack2" {
	"crawler_anims\attack2"
	ACT_MELEE_ATTACK1 5
	{ event 1100 10 "melee" }
	fps 30
}
$sequence "flinch" {
	"crawler_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 24
}
