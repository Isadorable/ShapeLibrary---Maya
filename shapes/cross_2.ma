//Maya ASCII 2018 scene
//Name: cross_2.ma
//Last modified: Sun, Oct 14, 2018 03:49:48 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "curve1";
	rename -uid "AFB7F35B-4393-6007-87E1-9380DFEABBBF";
	setAttr ".t" -type "double3" -5 0 6 ;
	setAttr ".rp" -type "double3" 5 0 -6 ;
	setAttr ".sp" -type "double3" 5 0 -6 ;
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "A2896C84-44E2-EEF5-C67A-CFBAF119DEAB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		5 0 -11
		3 0 -9
		4 0 -9
		4 0 -7
		2 0 -7
		2 0 -8
		0 0 -6
		2 0 -4
		2 0 -5
		4 0 -5
		4 0 -3
		3 0 -3
		5 0 -1
		7 0 -3
		6 0 -3
		6 0 -5
		8 0 -5
		8 0 -4
		10 0 -6
		8 0 -8
		8 0 -7
		6 0 -7
		6 0 -9
		7 0 -9
		5 0 -11
		;
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
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
// End of cross_2.ma
