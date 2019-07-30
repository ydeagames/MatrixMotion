// Created by Crowbar 0.58

$modelname "matrix/neo_player.mdl"

$model "neo" "neo_player_neobody.smd" {

	flexfile "neo_player_01.vta" 
	{
		defaultflex frame 0
		flex "blink" frame 1
		flex "asdfghjkl" frame 2
	}

	flexcontroller blink range 0 1 "blink"
	flexcontroller asdfghjkl range 0 1 "asdfghjkl"
	flexcontroller blank range 0 1 "blank"
	flexcontroller eyes range -45 45 "eyes_updown"
	flexcontroller eyes range -45 45 "eyes_rightleft"

	localvar blank
	%blink = blink
	%asdfghjkl = asdfghjkl
	%blank = blank
}
$bodygroup "glasses"
{
	studio "neo_player_glasses.smd"
	blank
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 0 30

$eyeposition 0 0 70

$mostlyopaque

$cdmaterials "models\neomatrix\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.67 -4.32 0 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1 -6.5 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -1.25 -5 -3.19 8.25 5 3.31 ""
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25 ""
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62 ""
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5 ""
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75 ""
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45 ""
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5 ""
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72 ""
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16 ""
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.5 -3 -2.19 2.5 0 2.46 ""
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18 ""
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72 ""
$hbox 7 "ValveBiped.Bip01_R_Toe0" -0.5 -3 -2.6 2.5 0 2.1 ""
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -7.5 7.5 8.5 3.5 ""
$hbox 2 "ValveBiped.Bip01_Spine2" -2.5 -3 -7 12.5 7 7 ""
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" -0.000005 -0.533615 38.566917 0 0 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000005 3.345131 -2.981901 4.944283 89.999983 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.018326 0.000006 0 0 -1.675901 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.51857 0.000032 -0.000001 0 5.749575 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 8.94265 -0.000033 0 0 11.121341 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 3.388386 1.982182 0.000001 0 22.944955 179.999856 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.163937 0.656597 0.000002 -0.000057 23.295148 0 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 2.984573 -2.185815 0.000004 0 -75.999475 -89.999928 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.033367 1.000751 -1.93761 73.712031 168.618084 -95.596613 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 5.604134 0.25288 -0.58825 -0.933833 -30.809396 94.764429 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.333858 0 0.000004 -2.862507 -2.426095 -1.82331 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 8.870958 0.232439 -0.143543 6.071748 1.375672 -88.58375 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 3.527811 -2.025757 -0.025316 -0.000113 -90.01867 -89.999928 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.331376 -0.814312 1.426008 -9.084189 -50.365402 27.452472 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.906231 0.402746 -0.117437 -0.683309 -25.191809 -0.00006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.640713 0.276351 -0.200746 -0.351624 -13.995412 -0.000116 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.548098 -0.537384 0.609109 -4.544013 -46.42133 8.880559 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.15226 0.635691 -0.027544 -0.33518 -14.19646 -0.000056 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.994392 0.163321 -0.133284 -0.553478 -24.681075 -0.000171 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.601479 -0.460728 -0.319393 -1.512779 -33.672614 -4.922165 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.435768 0.519379 0.162508 -0.456932 -20.995185 -0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.133045 0.193344 0.004063 -0.25548 -12.397497 -0.000115 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.569279 -0.6049 -1.01613 2.209956 -30.481813 -20.306883 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.357559 0.35907 0.123425 -0.379239 -20.796424 -0.00006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.039513 0.038963 -0.068686 -0.240755 -13.99839 -0.000176 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.065981 -0.909134 -0.857871 38.596105 -45.491017 68.995116 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.577751 0.344429 -0.263462 -0.361193 13.095866 -0.000053 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.074486 0.376044 -0.078278 -0.551188 20.793097 0.000234 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.03336 1.000748 1.937661 -73.711853 168.61878 91.480426 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 5.604133 0.209957 0.60491 2.905587 -30.903895 -91.232477 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 10.14518 0 -0.000004 2.620925 -1.699934 2.360875 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 9.074501 0.14478 0.145187 -6.062408 0.83182 88.548281 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 3.527818 -2.025539 0.02789 -0.000115 89.994539 89.99958 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.407058 -0.844898 -1.451676 8.719616 -50.413463 -27.452586 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.926735 0.412628 0.117887 0.553475 -25.194437 -0.000229 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.655273 0.283672 0.20394 0.285103 -13.996783 -0.000055 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.628708 -0.554722 -0.618554 4.201271 -46.446987 -8.881474 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.178459 0.650307 0.024418 0.25571 -14.197542 -0.000172 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.016987 0.167768 0.135391 0.42141 -24.68364 0.000172 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.683374 -0.468555 0.33034 1.251111 -33.682122 4.92188 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.468376 0.530033 -0.169902 0.315758 -20.997861 0.000173 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.735191 0.236856 -0.024724 0.176357 -12.399201 0.000172 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.650467 -0.610107 1.044111 -2.449566 -30.465308 20.308663 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.388374 0.36636 -0.128785 0.233882 -20.798707 0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.063145 0.040339 0.070005 0.148512 -13.999076 -0.000285 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.090254 -0.922562 0.884956 -38.931621 -45.224298 -69.148153 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.613598 0.35358 0.267765 0.423011 13.093407 0.000514 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.098904 0.38493 0.078278 0.645432 20.789662 -0.000405 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890452 0.000008 0.000007 2.970558 -90.29935 -89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.848166 -0.000017 0 0 1.958427 0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.525249 0.000084 0 2.336465 -61.399542 2.212305 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.705746 0.089386 -0.054374 -0.169137 -33.482281 -4.660037 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890452 0 -0.000003 2.970558 -89.700793 -89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.848167 -0.000124 -0.000002 0 1.959459 -0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.525244 -0.000101 0 -2.336637 -61.400683 -1.599412 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.705743 0.089975 0.053418 -0.169137 -33.482114 -0.418259 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Anim_Attachment_RH"


$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$animation "a_proportions" "neo_player_anims\a_proportions.smd" {
	fps 30
}

$sequence "reference" {
	"neo_player_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	ikrule "rhand" release
	ikrule "lhand" release
	ikrule "rfoot" release
	ikrule "lfoot" release
}

$sequence "proportions" {
	"a_proportions"
	autoplay
	predelta
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ragdoll" {
	"neo_player_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release
	ikrule "lhand" release
	ikrule "rfoot" release
	ikrule "lfoot" release
}

$includemodel "m_anm.mdl"
$includemodel "m_shd.mdl"
$includemodel "m_pst.mdl"
$includemodel "m_gst.mdl"
$includemodel "player/m_ss.mdl"
$includemodel "player/cs_fix.mdl"
$includemodel "player/global_include.mdl"
$includemodel "humans/male_shared.mdl"
$includemodel "humans/male_ss.mdl"
$includemodel "humans/male_gestures.mdl"
$includemodel "humans/male_postures.mdl"

$collisionjoints "neo_player_physics.smd"
{
	$mass 90
	$inertia 10
	$damping 0.01
	$rotdamping 1
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -30 10 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -82 41 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -21 21 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -17 17 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit 0 66 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -10 30 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -82 41 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -21 21 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -17 17 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit 0 66 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -1 1 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -19 19 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -39 39 0

	$jointconstrain "ValveBiped.Bip01_Spine1" x limit -26 26 0
	$jointconstrain "ValveBiped.Bip01_Spine1" y limit -32 32 0
	$jointconstrain "ValveBiped.Bip01_Spine1" z limit -44 44 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -26 26 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -23 23 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -39 39 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -39 39 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -93 59 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -39 39 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 59 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit -61 10 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -100 0 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -19 19 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -100 50 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit -10 61 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -100 0 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -19 19 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -100 50 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -28 28 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -39 32 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -26 26 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -39 39 0
}
