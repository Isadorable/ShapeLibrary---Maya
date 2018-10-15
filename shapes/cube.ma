//Maya ASCII 2018 scene
//Name: cube.ma
//Last modified: Fri, Oct 12, 2018 07:54:03 PM
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
createNode transform -n "curve1";
	rename -uid "702119CB-4F0B-C3F5-65A3-38B0FFFDDFC1";
	setAttr ".rp" -type "double3" 0 0 -9.1129121780395508 ;
	setAttr ".sp" -type "double3" 0 0 -9.1129121780395508 ;
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "BEAB997D-4165-3A1D-6457-F0B7A871762F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-0.5 0.5 -9.6129121780395508
		-0.5 0.5 -8.6129121780395508
		0.5 0.5 -8.6129121780395508
		0.5 0.5 -9.6129121780395508
		-0.5 0.5 -9.6129121780395508
		-0.5 -0.5 -9.6129121780395508
		-0.5 -0.5 -8.6129121780395508
		-0.5 0.5 -8.6129121780395508
		-0.5 -0.5 -8.6129121780395508
		0.5 -0.5 -8.6129121780395508
		0.5 0.5 -8.6129121780395508
		0.5 -0.5 -8.6129121780395508
		0.5 -0.5 -9.6129121780395508
		0.5 0.5 -9.6129121780395508
		0.5 -0.5 -9.6129121780395508
		-0.5 -0.5 -9.6129121780395508
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
// End of cube.ma
