// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Program Files\Steam\steamapps\minuit\half-life\Coldbloodb2\mo"
$modelname "otto_head.mdl"

$model "body" "otto_head"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\chef\"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 12

$hbox 0 "joint1" -5.19 -0.31 -6.08 5.05 9.72 5.68

$sequence "idle" {
	"otto_head_anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}

$collisionmodel "otto_head"
{
	$mass 1
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone ""
}