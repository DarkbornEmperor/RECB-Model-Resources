// Created by Crowbar 0.74

// Stored modelname (without quotes): "BabySpider.mdl"
$modelname "babyspider.mdl"

$model "studio" "men"

$eyeposition 0 0 28

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\babyspider\"

$attachment "eyes" "joint15" 0.20 0.00 0.00 rotate -80 90 0

$illumposition 0 0 0 "Joint1"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 3

$hbox 3 "joint1" -1.9453 -1.3293 -0.1778 1.6723 2.3086 4.1727
$hbox 3 "joint2" -2.898391 0 -2.211546 2.890609 1.712148 1.464193
$hbox 7 "joint3" -1.3692 -0.8946 -1.1235 0 0.2541 1.983607
$hbox 7 "joint4" -1.12 -0.7 -1.2852 0.0028 0.3549 0.3367
$hbox 6 "joint5" -1.505 -0.7266 -1.575 0 0.5719 1.864545
$hbox 6 "joint6" -1.295 -0.5838 -1.4252 0 0.4165 0.2065
$hbox 6 "joint7" -1.3853 -0.5264 -1.2362 0 0.6377 1.964366
$hbox 6 "joint8" -1.0227 -0.4592 -1.2523 0 0.5894 0.3409
$hbox 7 "joint9" -1.316 -0.6622 -1.2026 0 0.7693 2.062624
$hbox 7 "joint10" -1.0507 -0.5817 -1.2838 0 0.5404 0.2786
$hbox 5 "joint11" -1.2425 -0.2149 -1.3706 0 0.9877 1.848716
$hbox 5 "joint12" -1.1844 -0.5047 -1.9663 0 0.4333 0.3234
$hbox 4 "joint13" -1.1753 -0.6496 -1.2152 0 0.497 1.964367
$hbox 4 "joint14" -1.1823 -0.3976 -1.8536 0 0.7147 0.3857
$hbox 2 "joint15" -2.466312 -0.9163 0 2.745263 1.813422 1.893252
$hbox 5 "joint16" -1.3923 -2.5704 -0.4851 0.7721 0.3003 0.8099
$hbox 4 "joint17" -1.1361 -2.5172 -0.035 1.0458 0.343 1.0143
$hbox 5 "joint18" -0.5138 -1.6695 -0.2198 0.3297 0.3766 1.0094
$hbox 4 "joint19" -0.2541 -1.736 -0.4053 0.5586 0.3073 0.707

$sequence "ref" {
	"men"
	ACT_INVALID 1
	loop
}

$sequence "walk" {
	"babyspider_anims\walk"
	ACT_WALK 1
	fps 30
	loop
	LX
}
$sequence "idle" {
	"babyspider_anims\idle"
	ACT_IDLE 1
	fps 15
	loop
}
