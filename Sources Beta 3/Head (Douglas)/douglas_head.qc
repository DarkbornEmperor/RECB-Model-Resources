// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Program Files\Steam\steamapps\minuit\half-life\Coldbloodb2\mo"
$modelname "douglas_head.mdl"

$model "body" "douglas_head"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\douglas_head\" "models\vj_recb\douglas\"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 12

$hbox 0 "joint1" -6.08 -0.36 -6.46 6.15 10.76 6.05

$sequence "idle" {
	"douglas_head_anims\idle"
	ACT_IDLE 1
	fps 30
	loop
}

$collisionmodel "douglas_head"
{
	$mass 1
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone ""
}

