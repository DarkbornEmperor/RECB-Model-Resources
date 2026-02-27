// Created by Crowbar 0.74

$modelname "w_browning.mdl"

$model "body" "browning"

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\vj_recb\weapons\browning\"

$attachment "muzzle" "joint1" 0.85 1.00 7.40 rotate -90 -180 0
$attachment "shell" "joint1" 1.00 2.00 1.20 rotate 0 90 90

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -8 -8 0 8 8 5

$hbox 0 "joint1" -5.655 -0.015 -4.32 1.725 1.575 6.675

$sequence "idle" {
	"w_browning_anims\idle"
	ACT_IDLE 1
	fps 1
	loop
}

$collisionmodel "browning"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone ""
}