// Created by Crowbar 0.74

$modelname "w_glock18.mdl"

$model "body" "w_glock18"

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\vj_recb\weapons\glock18\"

$attachment "muzzle" "joint1" -0.70 -1.00 -13.20 rotate 90 180 0
$attachment "shell" "joint1" -1.00 0.00 -7.00 rotate 0 90 -90

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -8 -8 0 8 8 5

$hbox 0 "joint1" -1.88 -1.69 -6.83 6.09 0.44 7.49

$sequence "idle" {
	"w_glock18_anims\idle"
	ACT_IDLE 1
	fps 2
	loop
}

$collisionmodel "w_glock18"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone ""
}