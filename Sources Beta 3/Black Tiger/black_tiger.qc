// Created by Crowbar 0.74

$modelname "black_tiger.mdl"

$bodygroup "Spider"
{
	studio "men"
	studio "abdomen"
}

$eyeposition 0 0 28

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\blacktiger\"

$attachment "eyes" "joint15" 0.50 0.00 15.00 rotate -80 90 0
$attachment "abdomen" "joint1" -0.70 6.00 28.00 rotate 80 -90 0
$attachment "mouth" "joint15" 0.50 1.50 18.00 rotate -80 90 0

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -80 -80 0 80 80 72

$hbox 3 "joint1" -41.685001 -28.485001 -3.81 35.834999 49.470001 89.415001
$hbox 3 "joint2" -62.108379 0 -47.390282 61.941628 36.688885 31.375572
$hbox 7 "joint3" -29.34 -19.17 -24.074999 0 5.445 42.505859
$hbox 7 "joint4" -24 -15 -27.540001 0.06 7.605 7.215
$hbox 6 "joint5" -32.25 -15.57 -33.75 0 12.255 39.954544
$hbox 6 "joint6" -27.75 -12.51 -30.540001 0 8.924999 4.425
$hbox 6 "joint7" -29.685001 -11.28 -26.49 0 13.664999 42.093555
$hbox 6 "joint8" -21.914999 -9.84 -26.834999 0 12.63 7.305
$hbox 7 "joint9" -28.199999 -14.190001 -25.77 0 16.485001 44.199078
$hbox 7 "joint10" -22.514999 -12.465 -27.51 0 11.58 5.97
$hbox 5 "joint11" -26.625 -4.605 -29.369999 0 21.164999 39.615341
$hbox 5 "joint12" -25.380001 -10.815001 -42.135002 0 9.285 6.93
$hbox 4 "joint13" -25.185001 -13.92 -26.040001 0 10.65 42.093575
$hbox 4 "joint14" -25.334999 -8.52 -39.720001 0 15.315001 8.265
$hbox 2 "joint15" -52.849548 -19.635 0 58.827061 38.859035 40.569695
$hbox 5 "joint16" -29.834999 -55.080002 -10.395 16.545 6.435 17.355
$hbox 4 "joint17" -24.344999 -53.939999 -0.75 22.41 7.35 21.735001
$hbox 5 "joint18" -11.01 -35.775002 -4.71 7.065 8.07 21.630001
$hbox 4 "joint19" -5.445 -37.199997 -8.684999 11.97 6.585 15.150001

$sequence "ref" {
	"men"
	ACT_INVALID 1
	loop
}

$sequence "run" {
	"black_tiger_anims\run"
	ACT_WALK 1
	fps 30
	loop
	LX
}
$sequence "walk" {
	"black_tiger_anims\walk"
	ACT_WALK 1
	fps 13
	loop
	LX
}
$sequence "flinchs" {
	"black_tiger_anims\flinchs"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "flinchb" {
	"black_tiger_anims\flinchb"
	ACT_BIG_FLINCH 1
	fps 30
}
$sequence "turnleft" {
	"black_tiger_anims\turnleft"
	ACT_TURN_LEFT 1
	fps 30
}
$sequence "turnright" {
	"black_tiger_anims\turnright"
	ACT_TURN_RIGHT 1
	fps 30
}
$sequence "idle" {
	"black_tiger_anims\idle"
	ACT_IDLE 1
	fps 15
	loop
}
$sequence "bite" {
	"black_tiger_anims\bite"
	ACT_MELEE_ATTACK2 1
	{ event 1100 7 "" }
	{ event 1100 10 "melee" }
	fps 30
}
$sequence "range" {
	"black_tiger_anims\range"
	ACT_RANGE_ATTACK1 1
	{ event 1100 11 "range" }
	fps 30
}
$sequence "die" {
	"black_tiger_anims\die"
	ACT_DIEFORWARD 1
	{ event 1100 13 "death" }
	fps 25
}
$sequence "die1_1" {
	"black_tiger_anims\die1_1"
	ACT_DIESIMPLE 1
	{ event 1100 13 "death" }
	fps 25
}
$sequence "die1_2" {
	"black_tiger_anims\die1_2"
	ACT_DIESIMPLE 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die1_3" {
	"black_tiger_anims\die1_3"
	ACT_DIEBACKWARD 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die1_4" {
	"black_tiger_anims\die1_4"
	ACT_DIEFORWARD 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die1_5" {
	"black_tiger_anims\die1_5"
	ACT_DIEVIOLENT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die1_6" {
	"black_tiger_anims\die1_6"
	ACT_DIE_GUTSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die1_7" {
	"black_tiger_anims\die1_7"
	ACT_DIE_CHESTSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die1_8" {
	"black_tiger_anims\die1_8"
	ACT_DIE_BACKSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die1_9" {
	"black_tiger_anims\die1_9"
	ACT_DIE_HEADSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
