// Created by Crowbar 0.74

$modelname "zombie_soldier.mdl"

$bodygroup "cap"
{
	studio "cap"
	blank
}
$bodygroup "head"
{
	studio "ng1"
	studio "ng2"
	studio "ng3"
	studio "ng4"
	studio "ng5"
	blank
}
$bodygroup "zombieRECB"
{
	studio "Dismembered"
	blank
}
$bodygroup "rleg"
{
	studio "rleg"
	blank
}
$bodygroup "lleg"
{
	studio "lleg"
	blank
}
$bodygroup "rarm"
{
	studio "rarm"
	blank
}
$bodygroup "larm"
{
	studio "larm"
	blank
}

$eyeposition 0 0 55

$texturegroup "skinfamilies"
{
	{ "body.bmp"       }
	{ "body copy.bmp"  }
	{ "body copy2.bmp" }
	{ "body copy3.bmp" }
}

$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\vj_recb\zombie_soldier\"

$attachment "eyes" "Bip01 Head" 8.50 4.00 0.00 rotate 0 90 90
$attachment "head" "Bip01 Head" 5.50 1.00 0.00 rotate 0 0 90
$attachment "mouth" "Bip01 Head" 6.00 6.20 0.20 rotate 0 90 90
$attachment "rarm" "Bip01 R UpperArm" 13.50 -1.00 -0.50 rotate 0 0 -90
$attachment "larm" "Bip01 L UpperArm" 13.50 -1.00 0.50 rotate 0 0 -90
$attachment "rleg" "Bip01 R Calf" -3.50 1.00 0.00 rotate 0 0 -90
$attachment "lleg" "Bip01 L Calf" -3.50 1.00 0.00 rotate 0 0 -90

$illumposition 0 0 0 "Bip01 Pelvis"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hbox 6 "Bip01 L Thigh" 0 -5.69 -3.55 18.709999 3.61 3.43
$hbox 6 "Bip01 L Calf" 0 -3.77 -2.97 16.959999 2.21 2.41
$hbox 6 "Bip01 L Foot" -0.07 -2.29 -3.14 3.62 8.17 1.45
$hbox 7 "Bip01 R Thigh" 0 -5.96 -3.77 18.639999 3.58 3.39
$hbox 7 "Bip01 R Calf" 0 -3.85 -2.58 16.969999 2.16 2.98
$hbox 7 "Bip01 R Foot" -0.11 -2.29 -1.38 3.61 8.17 2.99
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

$Animation aimneutral "aim_center.smd" frames 0 0
$Animation aimleft "head_left.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimcenter "aim_center.smd" subtract "aimneutral" 0 frames 0 0
$Animation aimright "head_right.smd" subtract "aimneutral" 0 frames 0 0

$sequence "ref" {
	"Dismembered"
	ACT_INVALID 1
	loop
}

$Sequence "aim_yaw" {
    "aimright"
    "aimcenter"
    "aimleft"
    delta
    blendwidth 3
    blendcenter aimcenter
    blend "aim_yaw" -90 90
	autoplay
}

$sequence "idle1" {
	"zombie_soldier_anims\idle1"
	ACT_IDLE 1
	fps 24
	loop
}
$sequence "walk" {
	"zombie_soldier_anims\walk"
	ACT_WALK 15
	{ event 1100 0 "step" }
	{ event 1100 8 "step" }
	fps 16
	loop
	LX
}
$sequence "walk2" {
	"zombie_soldier_anims\walk2"
	ACT_WALK 9
	{ event 1100 0 "step" }
	{ event 1100 8 "step" }
	fps 16
	loop
	LX
}
$sequence "walk3" {
	"zombie_soldier_anims\walk3"
	ACT_WALK 1
	{ event 1100 0 "step" }
	{ event 1100 8 "step" }
	fps 16
	loop
	LX
}
$sequence "walk4" {
	"zombie_soldier_anims\walk4"
	ACT_WALK 1
	{ event 1100 0 "step" }
	{ event 1100 8 "step" }
	fps 16
	loop
	LX
}
$sequence "walk5" {
	"zombie_soldier_anims\walk5"
	ACT_WALK 1
	{ event 1100 0 "step" }
	{ event 1100 8 "step" }
	fps 16
	loop
	LX
}
$sequence "dieheadshot" {
	"zombie_soldier_anims\dieheadshot"
	ACT_DIE_HEADSHOT 1
	{ event 1100 19 "death" }
	fps 30
	X
}
$sequence "dieheadshot2" {
	"zombie_soldier_anims\dieheadshot2"
	ACT_DIE_GUTSHOT 1
	{ event 1100 25 "death_knee" }
	{ event 1100 33 "death" }
	fps 24
}
$sequence "diesimple_1" {
	"zombie_soldier_anims\diesimple_1"
	ACT_DIESIMPLE 1
	{ event 1100 15 "death" }
	fps 24
	X
}
$sequence "diesimple_2" {
	"zombie_soldier_anims\diesimple_2"
	ACT_DIEBACKWARD 1
	{ event 1100 15 "death" }
	fps 24
	X
}
$sequence "diesimple_3" {
	"zombie_soldier_anims\diesimple_3"
	ACT_DIEVIOLENT 1
	{ event 1100 15 "death" }
	fps 24
}
$sequence "diesimple_4" {
	"zombie_soldier_anims\diesimple_4"
	ACT_DIE_CHESTSHOT 1
	{ event 1100 15 "death" }
	fps 24
}
$sequence "diesimple_5" {
	"zombie_soldier_anims\diesimple_5"
	ACT_DIE_BACKSHOT 1
	{ event 1100 15 "death" }
	fps 24
}
$sequence "dieforward" {
	"zombie_soldier_anims\dieforward"
	ACT_DIEFORWARD 1
	{ event 1100 15 "death" }
	fps 24
	X
}
$sequence "flinch" {
	"zombie_soldier_anims\flinch"
	ACT_SMALL_FLINCH 1
	fps 62
}
$sequence "attack2" {
	"zombie_soldier_anims\attack2"
	ACT_MELEE_ATTACK1 1
	{ event 1100 10 "melee" }
	{ event 1100 28 "melee" }
	{ event 1100 59 "melee" }
	fps 30
}
$sequence "vomit" {
	"zombie_soldier_anims\vomit"
	ACT_MELEE_ATTACK2 5
	{ event 1100 10 "melee" }
	fps 30
}
$sequence "from_eat" {
	"zombie_soldier_anims\from_eat"
	ACT_STAND 1
	fps 25
}
$sequence "to_eat" {
	"zombie_soldier_anims\to_eat"
	ACT_CROUCH 1
	fps 25
}
$sequence "eating" {
	"zombie_soldier_anims\eating"
	ACT_CROUCHIDLE 1
	{ event 1100 7 "bite" }
	{ event 1100 15 "bite" }
	{ event 1100 26 "bite" }
	{ event 1100 38 "bite" }
	{ event 1100 46 "bite" }
	{ event 1100 57 "bite" }
	fps 14
	loop
}
$sequence "lunge_1" {
	"zombie_soldier_anims\lunge_1"
    ACT_MELEE_ATTACK_SWING 1
	fps 25
}
$sequence "knocked_to_floor" {
	"zombie_soldier_anims\knocked_to_floor"
	ACT_ARM 1
	fps 30
}
$sequence "on_floor" {
	"zombie_soldier_anims\on_floor"
	ACT_IDLE_RELAXED 1
	fps 2
}
$sequence "lunge_2" {
	"zombie_soldier_anims\lunge_2"
    ACT_MELEE_ATTACK_SWING 1
	fps 25
}
$sequence "floor_getup" {
	"zombie_soldier_anims\floor_getup"
	ACT_HOP 1
	fps 25
}
$sequence "floor_death" {
	"zombie_soldier_anims\floor_death"
    ACT_DIE_FRONTSIDE 1
	fps 25
}
$sequence "floor_attack" {
	"zombie_soldier_anims\floor_attack"
    ACT_SPECIAL_ATTACK2 1
	fps 25
}
$sequence "zombie_deadsit" {
	"zombie_soldier_anims\zombie_deadsit"
    ACT_IDLE_STEALTH 1
	fps 7
    loop
}
$sequence "zombie_deadstand" {
	"zombie_soldier_anims\zombie_deadstand"
    ACT_SIGNAL1 1
	fps 12
}
$sequence "tug_fence" {
	"zombie_soldier_anims\tug_fence"
	{ event 1100 2 "fence" }
	{ event 1100 25 "fence" }
	{ event 1100 40 "fence" }
	fps 30
}
$sequence "suicide_attack" {
	"zombie_soldier_anims\suicide_attack"
	{ event 1100 10 "bite " }
	{ event 1100 28 "bite" }
	{ event 1100 59 "bite" }
	fps 30
}
$sequence "suicide_eat" {
	"zombie_soldier_anims\suicide_eat"
	{ event 1100 38 "bite" }
	{ event 1100 46 "bite" }
	{ event 1100 57 "bite" }
	{ event 1100 69 "bite" }
	{ event 1100 77 "bite" }
	{ event 1100 88 "bite" }
	{ event 1100 131 "bite" }
	{ event 1100 139 "bite" }
	{ event 1100 150 "bite" }
	{ event 1100 154 "bite" }
	{ event 1100 154 "bite" }
	{ event 1100 154 "bite" }
	fps 14
}
$sequence "legless_fall" {
	"zombie_soldier_anims\legless_fall"
    ACT_FLINCH_PHYSICS 1
	fps 25
}
$sequence "legless_idle" {
	"zombie_soldier_anims\legless_idle"
	ACT_IDLE_HURT 50
	fps 24
	loop
}
$sequence "crawl_1" {
	"zombie_soldier_anims\crawl_1"
	ACT_WALK_HURT 1
	{ event 1100 6 "step" }
	{ event 1100 12 "step" }
	fps 30
	loop
	LX
}
$sequence "crawl_2" {
	"zombie_soldier_anims\crawl_2"
	ACT_RUN_HURT 1
	{ event 1100 6 "step" }
	{ event 1100 12 "step" }
	fps 30
	loop
	LX
}
$sequence "crawl_die" {
	"zombie_soldier_anims\crawl_die"
	ACT_DIE_BACKSIDE 1
	fps 30
	X
}
$sequence "crawl_attack" {
	"zombie_soldier_anims\crawl_attack"
	ACT_SPECIAL_ATTACK1 5
	{ event 1100 16 "melee" }
	fps 20
}
$sequence "slit_throat" {
	"zombie_soldier_anims\slit_throat"
	fps 24
}
$sequence "getup" {
	"zombie_soldier_anims\getup"
	ACT_GET_UP_STAND 1
	fps 18
}
$sequence "hit_locker" {
	"zombie_soldier_anims\hit_locker"
	fps 24
}
$sequence "through_bars" {
	"zombie_soldier_anims\through_bars"
	fps 55
}
$sequence "cscene_subway_eaten" {
	"zombie_soldier_anims\cscene_subway_eaten"
	fps 30
}
