// Created by Crowbar 0.74

$modelname "w_m4a1.mdl"

$model "studio" "m4_world_reference"

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\vj_recb\weapons\m4a1\"

$attachment "muzzle" "line04" -34.50 2.50 -2.50 rotate -0 -180 -180
$attachment "shell" "line04" 3.50 1.00 -3.00 rotate -0 -90 -180

$illumposition 0 0 0 "line04"

$cbox 0 0 0 0 0 0

$bbox -8 -8 0 8 8 5

$hbox 0 "line04" -48.009998 -8.01 -2.23 13.54 14.33 2.23

$sequence "idle" {
	"w_m4a1_anims\idle"
	fps 10
}

$collisionmodel "m4_world_reference"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone ""
}
