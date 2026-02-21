// Created by Crowbar 0.74

$modelname "w_beretta.mdl"
$cd "."
$cdtexture "."
$cliptotextures
$scale 1.0

$bodygroup "body"
{
	studio "w_beretta"
}

$flags 0


$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hbox 0 "joint1" -1.88 -1.69 -6.83 6.09 0.44 7.49

$sequence "idle" {
	"w_beretta_anims\idle"
	ACT_IDLE 1
	fps 2
	loop
}
