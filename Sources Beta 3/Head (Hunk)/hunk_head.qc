// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Program Files\Steam\steamapps\minuit\half-life\Coldbloodb2\mo"
$modelname "hunk_head.mdl"

$model "body" "hunk_head"

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\hunk_head\" "models\vj_recb\hunk\"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 12

$hbox 0 "joint1" -4.2 -0.68 -7.02 4.85 9.69 5.94

$sequence "idle" {
	"hunk_head_anims\idle"
	ACT_IDLE 1
	fps 1
	loop
}

$collisionmodel "hunk_head"
{
	$mass 1
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone ""
}
