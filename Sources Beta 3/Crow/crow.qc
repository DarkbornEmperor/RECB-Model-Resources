// Created by Crowbar 0.74

$modelname "crow.mdl"

$origin 0 0 -80

$model "RECB_Crow" "RECB_crow"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\crow\"

$attachment "eyes" "bip01 head" 0 0 0 rotate 0 0 90

$illumposition 0 0 0 "bip01 pelvis"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 90

$hbox 3 "bip01 pelvis" -1.749431 -5.488172 -6.138349 6.544687 4.242591 3.728438
$hbox 7 "bip01 r leg" -1.37 -1.31 -1.63 1.27 0.42 0.62
$hbox 6 "bip01 l leg" -1.37 -1.75 -1.41 1.52 0.49 0.42
$hbox 2 "bip01 spine1" -1.67 -2.13 -2 2.21 1.84 2.953513
$hbox 1 "bip01 head" -0.94 -1.12 -0.64 1.37 0.76 1.47
$hbox 3 "bip01 tail" -1.57 -1.33 -1.72 2.99 4.55 4.16
$hbox 4 "bip01 l wing" -2.69 -3.25 -3.22 6.04 1.76 7.176969
$hbox 4 "bip01 l wing 2" -2.45 -2.42 -3.76 5.43 1.86 0.75
$hbox 5 "bip01 r wing" -6.68 -1.89 -2.75 2.95 1.18 7.881414
$hbox 5 "bip01 r wing 2" -5.8 -1.27 -4.12 2.79 1.29 0.5

$sequence "ref" {
	"RECB_crow"
	ACT_INVALID 1
	loop
}

$sequence "walk" {
	"crow_anims\walk"
	ACT_WALK 1
	fps 45
	loop
	LX
}
$sequence "idle" {
	"crow_anims\idle"
	ACT_IDLE 50
	fps 20
	loop
}
$sequence "diesimple" {
	"crow_anims\diesimple"
	ACT_DIESIMPLE 1
	{ event 1100 11 "death" }
	fps 24
	X
}
$sequence "flinch" {
	"crow_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 20
}
$sequence "peck" {
	"crow_anims\peck"
	ACT_MELEE_ATTACK1 5
	{ event 1100 18 "melee" }
	{ event 1100 25 "melee" }
	{ event 1100 37 "melee" }
	fps 22
}
$sequence "floor_idle" {
	"crow_anims\floor_idle"
	fps 7
	loop
}
$sequence "floor_takeoff" {
	"crow_anims\floor_takeoff"
	fps 24
}
