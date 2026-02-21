// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Program Files\Steam\steamapps\minuit\half-life\Coldbloodb2\mo"
$modelname "chris_head.mdl"

$model "body" "chris_head"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\christopher\"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 12

$hbox 1 "joint1" -3.65 -0.47 -6.03 3.94 9.62 4.43

$sequence "idle" {
	"chris_head_anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}

$collisionmodel "chris_head"
{
	$mass 1
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone ""
}

