// Created by Crowbar 0.74

$modelname "zombie_head.mdl"

$model "zombie_head" "zombie_head"

$texturegroup "skinfamilies"
{
	{ "zombie_test.bmp"  }
	{ "zombie_test2.bmp" }
	{ "zombie_test3.bmp" }
	{ "zombie_test4.bmp" }
	{ "zombie_test5.bmp" }
	{ "zombie_test6.bmp" }
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\zombie_head\"

$cbox 0 0 0 0 0 0

$bbox -5 -5 0 5 5 12

$hbox 0 "joint1" -3.23 -0.06 -6.39 3.25 8.61 4.37

$sequence "idle" {
	"zombie_head_anims\idle"
	ACT_IDLE 50
	fps 1
	loop
}

$collisionmodel "zombie_head"
{
	$mass 1
	$inertia 1
	$damping 0.1
	$rotdamping 0
	$rootbone ""
}
