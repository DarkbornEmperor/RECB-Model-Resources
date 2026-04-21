// Created by Crowbar 0.74

$modelname "w_m24.mdl"

$model "studio" "m24"

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\vj_recb\weapons\m24\"

$attachment "muzzle" "Line01" 42.00 6.00 0.50 rotate 0 0 90
$attachment "shell" "Line01" 6.80 0.00 -0.50 rotate 90 -90 0

$illumposition 0 0 0 "Line01"

$cbox 0 0 0 0 0 0

$bbox -8 -8 0 8 8 5

$hbox 0 "Line01" -15.09 -4.79 -0.96 35.84 4.64 2.16

$sequence "idle" {
	"w_m24_anims\idle"
	fps 30
}
