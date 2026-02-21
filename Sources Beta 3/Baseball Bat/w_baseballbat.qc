// Created by Crowbar 0.74

$modelname "w_baseballbat.mdl"

$model "studio" "w_bat"

$surfaceprop "wood_plank"

$contents "solid"

$cdmaterials "models\vj_recb\weapons\baseballbat\"

$illumposition 0 0 0 "Crowbar"

$cbox 0 0 0 0 0 0

$bbox -8 -8 0 8 8 5

$hbox 0 "Crowbar" -1.25 -2.17 -22.530001 8.42 2.17 22.549999

$sequence "idle" {
	"w_baseballbat_anims\idle"
	fps 30
}

$collisionmodel "w_bat"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone ""
}