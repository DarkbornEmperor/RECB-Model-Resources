// Created by Crowbar 0.74

// Stored modelname (without quotes): "w_vp70.mdl"
$modelname "w_9mmhandgun.mdl"

$model "studio" "ref"

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\vj_recb\weapons\vp70\"

$attachment "muzzle" "joint1" -4.00 0.70 2.00 rotate -90 0 0
$attachment "shell" "joint1" -1.70 0.00 -1.00 rotate 0 -90 90

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -8 -8 0 8 8 5

$hbox 0 "joint1" -8.92 0 -7.9 7.64 1.46 6.88

$sequence "idle" {
	"w_9mmhandgun_anims\idle"
	fps 10
}

$collisionmodel "ref"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone ""
}