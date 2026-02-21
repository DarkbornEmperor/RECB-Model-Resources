// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Program Files\Steam\steamapps\minuit\half-life\Coldbloodb2\mo"
$modelname "simon_head.mdl"

$model "body" "simon_head"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\simon_head\" "models\vj_recb\simon\"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 12

$hbox 0 "joint1" -3.94 -0.58 -6.07 4.48 12.69 5.36

$sequence "idle" {
	"simon_head_anims\idle"
	ACT_IDLE 1
	fps 1
	loop
}

$collisionmodel "simon_head"
{
	$mass 1
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone ""
}
