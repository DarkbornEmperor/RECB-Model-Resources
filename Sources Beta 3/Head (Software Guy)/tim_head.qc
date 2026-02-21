// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Program Files\Steam\steamapps\minuit\half-life\Coldbloodb2\mo"
$modelname "tim_head.mdl"

$model "body" "tim_head"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\softwareguy\"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 12

$hbox 0 "joint1" -3.57 -0.59 -5.55 4.1 8.52 4.86

$sequence "idle" {
	"tim_head_anims\idle"
	ACT_IDLE 1
	fps 1
	loop
}

$collisionmodel "tim_head"
{
	$mass 1
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone ""
}
