// Created by Crowbar 0.74

$modelname "ant_boss.mdl"

$origin 0 -12 0

$bodygroup "ant"
{
	studio "ant"
	studio "ant2"
}

$eyeposition 0 0 32

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\ant\"

$attachment "eyes" "Joint3" 0.00 0.00 15.00 rotate -90 -90 0

$illumposition 0 0 0 "Joint2"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 40

$hbox 2 "Joint2" -12.22 -9.84 -15.69 12.32 10.33 15.75
$hbox 1 "Joint3" -10.25 -10.05 -1.2 10.3 4.33 19.940001
$hbox 1 "Joint4" -14.45 -0.50235 0 14.45 12.68 21.08
$hbox 1 "Joint27" -3.78 -7.15 -2.03 4.45 2.41 9.81
$hbox 1 "Joint28" -4.46 -7.15 -2.03 3.77 2.41 9.81
$hbox 3 "Joint5" -12.02 -7.35 -22.675417 12.12 8.03 1.46
$hbox 3 "Joint6" -17.030001 -9.9 -15.03738 17.129999 11.49 2.23
$hbox 3 "Joint7" -10.16 -10.506395 -12.173118 10.26 6.58 0.48
$hbox 4 "Joint9" -0.96 -1.58 -1.46 14.560001 2.001768 4.536852
$hbox 4 "Joint10" -1.97 -25.856203 -2.23 19.572468 1.08 19.580101
$hbox 4 "Joint11" -15.57 -0.66 -13.49 0 13.15 0
$hbox 5 "Joint12" -15.276072 -1.58 -1.7 1.14 2.001768 4.775634
$hbox 5 "Joint13" -18.379021 -25.856203 -2.71 2.86 1.08 19.102537
$hbox 5 "Joint14" -0.06 -0.66 -13.49 15.28 13.15 0
$hbox 6 "Joint15" -1.38 -1.58 -3.10416 15.514758 2.001768 1.8
$hbox 6 "Joint16" -2.72 -25.856203 -14.804466 20.765903 1.08 2.54
$hbox 6 "Joint17" -16.49 -0.66 0 0.02 13.15 11.21
$hbox 7 "Joint18" -15.276066 -1.58 -2.865378 1.56 2.001768 2.04
$hbox 7 "Joint19" -20.765909 -25.856203 -15.043249 2.66 1.08 2.54
$hbox 7 "Joint20" -0.08 -0.66 0 16.43 13.15 11.45
$hbox 6 "Joint21" -1.24 -1.93 -6.208326 13.127874 2.001768 1.5
$hbox 6 "Joint22" -2.18 -25.856203 -39.160202 17.424271 1.08 2.23
$hbox 6 "Joint23" -15.69 -0.66 0 0.07 13.15 30.540001
$hbox 7 "Joint24" -13.36656 -1.93 -5.014416 1.42 2.001768 2.21
$hbox 7 "Joint25" -16.946886 -25.856203 -38.921417 2.6 1.08 1.75
$hbox 7 "Joint26" -0.12 -0.66 -0.59 15.64 13.15 29.82

$sequence "ref" {
	"ant"
	ACT_INVALID 1
	loop
}

$sequence "idle" {
	"ant_boss_anims\idle"
	ACT_IDLE 4
	fps 30
	loop
}
$sequence "idle2" {
	"ant_boss_anims\idle2"
	ACT_IDLE 4
	fps 30
	loop
}
$sequence "idle3" {
	"ant_boss_anims\idle3"
	ACT_IDLE 4
	fps 30
	loop
}
$sequence "run" {
	"ant_boss_anims\run"
	ACT_WALK 1
	{ event 1100 1 "step" }
	{ event 1100 4 "step" }
	fps 24
	loop
	LX
}
$sequence "die" {
	"ant_boss_anims\die"
	ACT_DIESIMPLE 1
	{ event 1100 8 "death" }
	fps 24
	X
}
$sequence "attack" {
	"ant_boss_anims\attack"
	ACT_MELEE_ATTACK1 1
	{ event 1100 7 "melee" }
	fps 30
}
