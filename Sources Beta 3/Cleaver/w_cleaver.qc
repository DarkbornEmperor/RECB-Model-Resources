// Created by Crowbar 0.74

$modelname "w_cleaver.mdl"

$model "body" "cleaver"

$surfaceprop "wood_plank"

$contents "solid"

$cdmaterials "models\vj_recb\weapons\cleaver\"

$illumposition 0 0 0 "joint1"

$cbox 0 0 0 0 0 0

$bbox -8 -8 0 8 8 5

$hbox 0 "joint1" -1.88 -1.69 -6.83 6.09 0.44 7.49

$sequence "idle" {
	"w_cleaver_anims\idle"
	ACT_IDLE 1
	fps 2
	loop
}

$collisionmodel "cleaver"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone ""
}
