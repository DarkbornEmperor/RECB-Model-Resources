// Created by Crowbar 0.74

// Stored modelname (without quotes): "GiantSpider.mdl"
$modelname "giantspider.mdl"

$bodygroup "Spider"
{
	studio "giantspider_men"
	studio "giantspider_abdomen"
}

$eyeposition 0 0 28

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\spider\"

$attachment "eyes" "joint15" 0.50 0.00 12.00 rotate -80 90 -0
$attachment "abdomen" "joint1" -0.70 6.00 22.00 rotate 80 -90 -0
$attachment "mouth" "joint15" 0.50 1.50 15.00 rotate -80 90 -0

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -50 -50 0 50 50 50

$hbox 3 "joint1" -27.790001 -18.99 -2.54 23.889999 32.98 59.610001
$hbox 3 "joint2" -41.405586 0 -31.593521 41.294418 24.459257 20.917048
$hbox 7 "joint3" -19.559999 -12.78 -16.049999 0 3.63 28.33724
$hbox 7 "joint4" -16 -10 -18.360001 0.04 5.07 4.81
$hbox 6 "joint5" -21.5 -10.38 -22.5 0 8.17 26.636362
$hbox 6 "joint6" -18.5 -8.34 -20.360001 0 5.95 2.95
$hbox 6 "joint7" -19.790001 -7.52 -17.66 0 9.11 28.06237
$hbox 6 "joint8" -14.61 -6.56 -17.889999 0 8.42 4.87
$hbox 7 "joint9" -18.799999 -9.46 -17.18 0 10.99 29.466051
$hbox 7 "joint10" -15.01 -8.31 -18.34 0 7.72 3.98
$hbox 5 "joint11" -17.75 -3.07 -19.58 0 14.11 26.410227
$hbox 5 "joint12" -16.92 -7.21 -28.09 0 6.19 4.62
$hbox 4 "joint13" -16.790001 -9.28 -17.360001 0 7.1 28.062384
$hbox 4 "joint14" -16.889999 -5.68 -26.48 0 10.21 5.51
$hbox 2 "joint15" -35.233032 -13.09 0 39.21804 25.906023 27.046463
$hbox 5 "joint16" -19.889999 -36.720001 -6.93 11.03 4.29 11.57
$hbox 4 "joint17" -16.23 -35.959999 -0.5 14.94 4.9 14.49
$hbox 5 "joint18" -7.34 -23.85 -3.14 4.71 5.38 14.42
$hbox 4 "joint19" -3.63 -24.799999 -5.79 7.98 4.39 10.1

$sequence "ref" {
	"giantspider_men"
	ACT_INVALID 1
	loop
}

$sequence "run" {
	"giantspider_anims\run"
	ACT_WALK 1
	fps 30
	loop
	LX
}
$sequence "walk" {
	"giantspider_anims\walk"
	ACT_WALK 1
	fps 13
	loop
	LX
}
$sequence "flinchs" {
	"giantspider_anims\flinchs"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "flinchb" {
	"giantspider_anims\flinchb"
	ACT_BIG_FLINCH 1
	fps 30
}
$sequence "turnleft" {
	"giantspider_anims\turnleft"
	ACT_TURN_LEFT 1
	fps 30
}
$sequence "turnright" {
	"giantspider_anims\turnright"
	ACT_TURN_RIGHT 1
	fps 30
}
$sequence "idle" {
	"giantspider_anims\idle"
	ACT_IDLE 1
	fps 15
	loop
}
$sequence "bite" {
	"giantspider_anims\bite"
	ACT_MELEE_ATTACK2 1
	{ event 1100 7 "" }
	{ event 1100 10 "melee" }
	fps 30
}
$sequence "range" {
	"giantspider_anims\range"
	ACT_RANGE_ATTACK1 1
	{ event 1100 11 "range" }
	fps 30
}
$sequence "die" {
	"giantspider_anims\die"
	ACT_DIEFORWARD 1
	{ event 1100 13 "death" }
	fps 25
}
$sequence "die2" {
	"giantspider_anims\die1"
	ACT_DIESIMPLE 1
	{ event 1100 13 "death" }
	fps 25
}
$sequence "die3" {
	"giantspider_anims\die1_2"
	ACT_DIESIMPLE 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die4" {
	"giantspider_anims\die1_3"
	ACT_DIEBACKWARD 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die6" {
	"giantspider_anims\die1_4"
	ACT_DIEFORWARD 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die7" {
	"giantspider_anims\die1_5"
	ACT_DIEVIOLENT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die8" {
	"giantspider_anims\die1_6"
	ACT_DIE_GUTSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die9" {
	"giantspider_anims\die1_7"
	ACT_DIE_CHESTSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die10" {
	"giantspider_anims\die1_8"
	ACT_DIE_BACKSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
$sequence "die11" {
	"giantspider_anims\die1_9"
	ACT_DIE_HEADSHOT 1
	{ event 1100 13 "death" }
	fps 20
	X
}
