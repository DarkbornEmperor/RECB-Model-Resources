// Created by Crowbar 0.74

// Stored modelname (without quotes): "GiantSpider.mdl"
$modelname "giantspider_smaller.mdl"

$bodygroup "Spider"
{
	studio "men"
	studio "abdomen"
}

$eyeposition 0 0 28

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\spider\"

$attachment "eyes" "joint15" 0.50 -0.00 8.00 rotate -80 90 -0
$attachment "abdomen" "joint1" -0.70 4.00 14.00 rotate 80 -90 -0
$attachment "mouth" "joint15" 0.50 1.50 10.00 rotate -80 90 -0

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -50 -50 0 50 50 50

$hbox 3 "joint1" -18.007919 -12.305519 -1.64592 15.48072 21.371038 38.627277
$hbox 3 "joint2" -26.830816 0 -20.472601 26.75878 15.849597 13.554247
$hbox 7 "joint3" -12.674879 -8.28144 -10.400399 0 2.35224 18.362532
$hbox 7 "joint4" -10.367999 -6.48 -11.897281 0.02592 3.28536 3.11688
$hbox 6 "joint5" -13.931999 -6.72624 -14.580001 0 5.29416 17.260363
$hbox 6 "joint6" -11.988 -5.40432 -13.193278 0 3.8556 1.9116
$hbox 6 "joint7" -12.82392 -4.87296 -11.443679 0 5.90328 18.184416
$hbox 6 "joint8" -9.467279 -4.25088 -11.592719 0 5.45616 3.15576
$hbox 7 "joint9" -12.182399 -6.13008 -11.13264 0 7.12152 19.094
$hbox 7 "joint10" -9.72648 -5.38488 -11.88432 0 5.00256 2.57904
$hbox 5 "joint11" -11.502 -1.98936 -12.68784 0 9.143279 17.113827
$hbox 5 "joint12" -10.96416 -4.67208 -18.20232 0 4.01112 2.99376
$hbox 4 "joint13" -10.87992 -6.013439 -11.24928 0 4.6008 18.184423
$hbox 4 "joint14" -10.944719 -3.68064 -17.15904 0 6.61608 3.57048
$hbox 2 "joint15" -22.831005 -8.48232 0 25.413288 16.787102 17.526106
$hbox 5 "joint16" -12.88872 -23.794561 -4.49064 7.147439 2.77992 7.49736
$hbox 4 "joint17" -10.517039 -23.302078 -0.324 9.681119 3.1752 9.38952
$hbox 5 "joint18" -4.75632 -15.454801 -2.03472 3.05208 3.48624 9.34416
$hbox 4 "joint19" -2.35224 -16.070398 -3.75192 5.17104 2.84472 6.5448

$sequence "ref" {
	"men"
	ACT_INVALID 1
	loop
}

$sequence "run" {
	"giantspider_smaller_anims\run"
	ACT_WALK 1
	fps 30
	loop
	LX
}
$sequence "walk" {
	"giantspider_smaller_anims\walk"
	ACT_WALK 1
	fps 13
	loop
	LX
}
$sequence "flinchs" {
	"giantspider_smaller_anims\flinchs"
	ACT_SMALL_FLINCH 1
	fps 30
}
$sequence "flinchb" {
	"giantspider_smaller_anims\flinchb"
	ACT_BIG_FLINCH 1
	fps 30
}
$sequence "turnleft" {
	"giantspider_smaller_anims\turnleft"
	ACT_TURN_LEFT 1
	fps 30
}
$sequence "turnright" {
	"giantspider_smaller_anims\turnright"
	ACT_TURN_RIGHT 1
	fps 30
}
$sequence "idle" {
	"giantspider_smaller_anims\idle"
	ACT_IDLE 1
	fps 15
	loop
}
$sequence "bite" {
	"giantspider_smaller_anims\bite"
	ACT_MELEE_ATTACK2 1
	{ event 1100 7 "" }
	{ event 1100 10 "melee" }
	fps 30
}
$sequence "range" {
	"giantspider_smaller_anims\range"
	ACT_RANGE_ATTACK1 1
	{ event 1100 11 "range" }
	fps 30
}
$sequence "die" {
	"giantspider_smaller_anims\die"
	ACT_DIEFORWARD 1
	{ event 1100 13 "death" }
	fps 25
}
$sequence "die1" {
	"giantspider_smaller_anims\die1"
	ACT_DIESIMPLE 1
	{ event 1100 13 "death" }
	fps 25
}
