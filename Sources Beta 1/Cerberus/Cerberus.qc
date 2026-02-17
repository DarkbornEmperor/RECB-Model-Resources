// Created by Crowbar 0.74

$modelname "cerberus.mdl"

$origin 0 -15 0

$model "body" "doggy_model"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\cerberus\"

$attachment "eyes" "head" 0.00 2.50 1.00 rotate -30 90 0

$illumposition 0 0 0 "main"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 40

$hbox 3 "main" -3.885709 -0.154545 -4.018181 3.979347 1.962726 11.281819
$hbox 7 "right_back1" -3.978 -4.08 -0.187 1.411 3.553 18.118776
$hbox 6 "left_back1" -1.547 -4.097 -0.017 2.295 3.451 18.15596
$hbox 6 "left_back2" -0.918 -1.003 -1.275 1.717 2.261 5.516211
$hbox 6 "left_back3" -1.632 -4.029 0 2.227 1.462 2.193
$hbox 7 "right_back2" -1.853 -0.969 -1.411 0.765 2.278 5.364753
$hbox 7 "right_back3" -2.38 -4.08 0 1.496 1.462 2.193
$hbox 3 "tail" -3.383 -1.02 -2.074 3.57 1.428 1.615
$hbox 2 "spine" -4.845 -4.182 -8.364 5.032 3.995 8.351177
$hbox 2 "spine2" -4.471 -7.633 -3.57 4.658 5.389 5.202
$hbox 4 "left_front1" -1.7 -2.89 -0.663 1.615 3.791 16.174654
$hbox 4 "left_front2" -1.156 -1.513 -0.442 0.969 1.496 4.659523
$hbox 4 "left_front3" -1.802 -1.105 -0.68 1.785 3.706 2.108
$hbox 6 "right_front1" -1.768 -3.791 -1.241 1.581 2.856 15.917829
$hbox 6 "right_front2" -0.969 -1.666 -0.765 1.139 1.377 4.198446
$hbox 6 "right_front3" -1.802 -1.275 -0.544 1.785 3.502 2.295
$hbox 2 "neck" -2.669 -3.179 0 2.482 2.924 8.543411
$hbox 1 "head" -2.805 -3.621 -3.349 2.618 5.414131 4.318
$hbox 1 "bottom_jaw" -1.615 -1.53 -0.153 1.428 3.434 3.009
$hbox 1 "upper_jaw" -2.108 -2.414 -2.567 1.921 3.57 2.193

$sequence "ref" {
	"doggy_model"
	ACT_INVALID 1
	loop
}

$sequence "idle1" {
	"Cerberus_anims\idle1"
	ACT_IDLE 4
	fps 4
	loop
}
$sequence "walk" {
	"Cerberus_anims\walk"
	ACT_WALK 1
	{ event 1100 2 "step" }
	fps 30
	loop
	LX
}
$sequence "turnleft" {
	"Cerberus_anims\turnleft"
	ACT_TURN_LEFT 1
	fps 20
}
$sequence "turnright" {
	"Cerberus_anims\turnright"
	ACT_TURN_RIGHT 1
	fps 20
}
$sequence "diesimple" {
	"Cerberus_anims\diesimple"
	ACT_DIESIMPLE 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "flinch" {
	"Cerberus_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 22
}
$sequence "attack2" {
	"Cerberus_anims\attack2"
	ACT_MELEE_ATTACK1 1
	{ event 1100 6 "melee" }
	fps 30
}
$sequence "sleep" {
	"Cerberus_anims\sleep"
	ACT_CROUCHIDLE 1
	fps 30
	loop
}
$sequence "gotosleep" {
	"Cerberus_anims\gotosleep"
	ACT_CROUCH 1
	fps 15
}
$sequence "sleeptostand" {
	"Cerberus_anims\sleeptostand"
	ACT_STAND 1
	fps 30
}
