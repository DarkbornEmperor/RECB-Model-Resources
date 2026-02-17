// Created by Crowbar 0.74

// Stored modelname (without quotes): "GiantSpider.mdl"
$modelname "black_tiger.mdl"

$bodygroup "Spider"
{
	studio "men"
	studio "abdomen"
}

$eyeposition 0 0 28

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\blacktigerb1\"
$cdmaterials "models\vj_recb\blacktiger\"

$attachment "eyes" "joint15" 0.50 0.00 15.00 rotate -80 90 0
$attachment "abdomen" "joint1" -0.70 6.00 28.00 rotate 80 -90 0
$attachment "mouth" "joint15" 0.50 1.50 18.00 rotate -80 90 0

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -80 -80 0 80 80 72

$hbox 3 "joint1" -38.906002 -26.585999 -3.556 33.445999 46.171997 83.454002
$hbox 3 "joint2" -57.967819 0 -44.23093 57.812183 34.242958 29.283867
$hbox 7 "joint3" -27.383999 -17.892 -22.469999 0 5.082 39.672134
$hbox 7 "joint4" -22.4 -14 -25.704 0.056 7.098 6.734
$hbox 6 "joint5" -30.1 -14.532 -31.5 0 11.438 37.290905
$hbox 6 "joint6" -25.9 -11.676 -28.504 0 8.33 4.13
$hbox 6 "joint7" -27.706001 -10.528 -24.723999 0 12.754 39.287319
$hbox 6 "joint8" -20.453999 -9.184 -25.046 0 11.788 6.818
$hbox 7 "joint9" -26.319998 -13.243999 -24.052 0 15.386 41.252472
$hbox 7 "joint10" -21.014 -11.634001 -25.676001 0 10.808 5.572
$hbox 5 "joint11" -24.85 -4.298 -27.411999 0 19.754 36.974316
$hbox 5 "joint12" -23.688 -10.094 -39.326 0 8.666 6.468
$hbox 4 "joint13" -23.506001 -12.992 -24.304001 0 9.94 39.287338
$hbox 4 "joint14" -23.645998 -7.952 -37.071999 0 14.294 7.714
$hbox 2 "joint15" -49.326244 -18.326 0 54.905254 36.268433 37.865047
$hbox 5 "joint16" -27.845999 -51.408001 -9.702 15.441999 6.006 16.198
$hbox 4 "joint17" -22.721998 -50.343998 -0.7 20.915998 6.86 20.285999
$hbox 5 "joint18" -10.276 -33.389999 -4.396 6.594 7.532 20.188
$hbox 4 "joint19" -5.082 -34.719997 -8.106 11.172 6.146 14.14

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
$sequence "die1" {
	"black_tiger_anims\die1"
	ACT_DIESIMPLE 1
	{ event 1100 13 "death" }
	fps 25
}
