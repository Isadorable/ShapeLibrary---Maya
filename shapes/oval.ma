//Maya ASCII 2018 scene
//Name: oval.ma
//Last modified: Thu, Oct 11, 2018 10:27:31 PM
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
createNode transform -n "nurbsCircle1";
	rename -uid "DF04E850-4EB3-DA20-F1B7-AD9D74A5AEAB";
	setAttr ".t" -type "double3" 1.33937672129154 0 -0.00087264374205464623 ;
	setAttr ".s" -type "double3" 1.250023806833606 1.250023806833606 1.250023806833606 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "F067CB5E-4A76-9250-82D1-3E82C66CD5DB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0 0 -0.46148343489904753 
		0 0 -0.60985175343501052 0 0 -0.46148343489904731 0.160789538595282 0 0 0 0 0.2549021787729765 
		0 0 0.4032704973089396 0 0 0.25490217877297616 -0.160789538595282 0 0 0 0 0 0 0 0 
		0 0 0;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "E154C1A8-4091-5299-351E-26A2AFD29E5C";
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
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "makeNurbCircle1.oc" "nurbsCircleShape1.cr";
// End of oval.ma
