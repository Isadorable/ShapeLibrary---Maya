//Maya ASCII 2018 scene
//Name: half_moon_1.ma
//Last modified: Fri, Oct 12, 2018 12:37:32 AM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "nurbsCircle2";
	rename -uid "7668A602-43D7-3CF8-93B4-13AEB30DB403";
	setAttr ".t" -type "double3" 1.3806337118148804 0.055883008986711502 -0.26177448034286499 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.5339674205019983 0.5339674205019983 0.5339674205019983 ;
createNode nurbsCurve -n "nurbsCircleShape2" -p "nurbsCircle2";
	rename -uid "A1EA00A4-4CED-998C-B42C-FDBC47964157";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.792719476147649 0.2870047170019463 
		1.2529998579218311 1.7927194761476495 0.2870047170019463 1.2529998579218324 2.4220918398511913 
		0.2870047170019463 1.2529998579218311 2.4220918398511904 0.28700471700194635 1.2529998579218307 
		1.7927194761476497 0.2870047170019463 1.2529998579218313 1.7927194761476495 0.2870047170019463 
		1.2529998579218307 1.792719476147649 0.2870047170019463 1.2529998579218307 1.7927194761476488 
		0.28700471700194635 1.2529998579218304 0 0 0 0 0 0 0 0 0;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "F802E90C-4B7C-7B41-6AD7-6EAAC9560335";
	setAttr ".nr" -type "double3" 0 1 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".outf" 8;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
select -ne :modelPanel4ViewSelectedSet;
	setAttr ".ihi" 0;
connectAttr "makeNurbCircle2.oc" "nurbsCircleShape2.cr";
// End of half_moon_1.ma
