// Created by Crowbar 0.74

// Stored modelname (without quotes): "C:\Documents and Settings\Ben James and Matt\My Documents\Reside"
$modelname "zombie_torso.mdl"

$model "zombieRECB" "cutinhalf"

$texturegroup "skinfamilies"
{
	{ "map.bmp"  }
	{ "map2.bmp" }
	{ "map3.bmp" }
	{ "map4.bmp" }
	{ "map5.bmp" }
	{ "map6.bmp" }
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\zombieb1\"

$attachment "eyes" "Bip01 Head" 7.00 4.00 0.50 rotate 0 90 90

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hbox 3 "Bip01 Pelvis" -6.67 -4.4 -6.46 5.12 5.17 6.83
$hbox 3 "Bip01 Spine" 0 -3.29 -6.83 5.32 5 6.91
$hbox 2 "Bip01 Spine1" 0 -3.9 -6.2 5.7 5.67 5.91
$hbox 2 "Bip01 Spine2" 0 -3.65 -5.97 8.99 4.93 5.44
$hbox 4 "Bip01 L UpperArm" 0 -3.17 -1.87 5.47 2.95 1.58
$hbox 4 "Bip01 L Forearm" 0 -3.4 -1.95 10.95 2.06 2.46
$hbox 4 "Bip01 L UpperArm" 0 -2.88 -2.28 11.55 2.1 1.7
$hbox 4 "Bip01 L Hand" 0 -1.64 -1.96 6.12 1.79 1.77
$hbox 5 "Bip01 R UpperArm" 0 -3.08 -1.44 5.89 2.97 2.45
$hbox 5 "Bip01 R Forearm" 0 -3.35 -2.71 10.92 2.4 2.11
$hbox 5 "Bip01 R UpperArm" 0 -2.95 -1.97 11.25 2.22 2.45
$hbox 5 "Bip01 R Hand" 0 -1.85 -1.77 5.93 1.59 2.08
$hbox 1 "Bip01 Head" -1 -3.96 -3.86 8.02 5.23 4.07

$sequence "ref" {
	"cutinhalf"
	ACT_INVALID 1
	loop
}

$sequence "crawl" {
	"Zombie_torso_anims\crawl"
	ACT_WALK 1
	{ event 1100 6 "step" }
	{ event 1100 12 "step" }
	fps 10
	loop
	LX
}
$sequence "idle" {
	"Zombie_torso_anims\idle"
	ACT_IDLE 50
	fps 7
	loop
}
$sequence "diesimple" {
	"Zombie_torso_anims\diesimple"
	ACT_DIESIMPLE 1
	fps 24
}
$sequence "flinch" {
	"Zombie_torso_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 22
}
$sequence "attack2" {
	"Zombie_torso_anims\attack2"
	ACT_MELEE_ATTACK1 5
	{ event 1100 16 "melee" }
	fps 20
}
