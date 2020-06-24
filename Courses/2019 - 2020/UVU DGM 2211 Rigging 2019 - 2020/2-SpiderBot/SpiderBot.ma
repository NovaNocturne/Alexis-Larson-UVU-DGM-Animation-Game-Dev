//Maya ASCII 2018 scene
//Name: SpiderBot.ma
//Last modified: Wed, Mar 25, 2020 02:45:38 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "3.2.0.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "2C7FB34D-47D8-3F54-99F3-53B1CD23A427";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 29.376413289639999 15.123762088932178 49.149523594859261 ;
	setAttr ".r" -type "double3" 5034.8616468445052 -16893.399999975514 -2.2231585943904578e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "113807D5-483A-E7F6-4060-27B347736CC2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 58.338725085561471;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 2.1063132465741359 -8.8817841970012523e-16 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "F553D0C8-4515-52AA-37FD-DA9DA0244AC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.38394807186046753 1000.1413721154407 0.009490878379112111 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "169083DB-4FB8-C6BB-16C5-B7BAF2678EC3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 993.75379795790866;
	setAttr ".ow" 49.856448228396502;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 6.3875741575320717 -1.6565680503845215 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "604F864C-4566-31C8-AF8D-EC818D3DF76A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4848434684561966 0.4673143525338247 1000.1842169142432 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D4896A72-471D-E025-6AF7-049ED2C12C51";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.8407849646277;
	setAttr ".ow" 12.845879213740506;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 6.3875741575320717 -1.6565680503845215 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F094CAA3-47A7-BFE3-9309-39BD622B5198";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1215456655374 8.9669087591288577 2.441407389740915 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "35958F7F-4349-E13B-E466-E6BCC74AEDBE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1215456655374;
	setAttr ".ow" 6.1164106259070454;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 6.3875741575320717 -1.6565680503845215 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Spider_Rig";
	rename -uid "F132C3EF-4C99-A534-8973-E9BE82196859";
createNode joint -n "Master_Jnt" -p "Spider_Rig";
	rename -uid "90C03C56-4470-A5AD-6994-9E9186F063A7";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 5;
createNode joint -n "Root_Jnt" -p "Master_Jnt";
	rename -uid "EFF0B645-4296-DFCE-277C-7C86B6240DFC";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".radi" 10;
createNode joint -n "Left_Middle_Arm_Shoulder_IK_Jnt" -p "Root_Jnt";
	rename -uid "577E7E5B-4125-8B62-C033-C9AA2E63736E";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -89.955190904610902 1.0855019236223271 92.363947096317787 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Middle_Arm_Elbow_IK_Jnt" -p "Left_Middle_Arm_Shoulder_IK_Jnt";
	rename -uid "88F84937-412E-CC60-3E18-1E86CE39DB50";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 4.1476725794333245 1.55986646729559e-12 -7.3178275537429767e-15 ;
	setAttr ".r" -type "double3" -6.5771518033538545e-28 -1.5935969500708675e-13 5.3948148039785746e-26 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 82.659603953801039 0 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Middle_Arm_Wrist_IK_Jnt" -p "Left_Middle_Arm_Elbow_IK_Jnt";
	rename -uid "784F28CB-49BA-EFC7-B30A-33B736545825";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 10.187472238457856 -4.2046109213379265e-14 2.0730436613003709e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 5;
createNode joint -n "Left_Middle_Arm_Thumb1_IK_Jnt" -p "Left_Middle_Arm_Wrist_IK_Jnt";
	rename -uid "F204C4DB-4657-6451-55E2-8EB886F09DF1";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 103.78607010791778 34.836385725055138 -53.708279935273517 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Middle_Arm_Thumb2_IK_Jnt" -p "Left_Middle_Arm_Thumb1_IK_Jnt";
	rename -uid "AD6446CB-47C4-118E-AC24-24A679CEB969";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.28143886172536 -3.6029775658001238e-16 6.4749100696773209e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 60.473910165262325 19.924073761172124 121.03438186464913 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1" 
		-p "Left_Middle_Arm_Thumb1_IK_Jnt";
	rename -uid "51A05B4F-420F-FC48-EED6-BE92CFC8DE68";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Toe_1_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 -2.6645352591003757e-15 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 6.361109362927032e-15 1.1927080055488187e-14 
		2.2263882770244617e-14 ;
	setAttr ".lr" -type "double3" 1.1131941385122313e-14 -1.9083328088781097e-14 -2.8624992133171654e-14 ;
	setAttr ".rst" -type "double3" 0.0068370727999426187 -0.20714462005485657 -0.228337383656533 ;
	setAttr ".rsrr" -type "double3" 1.1131941385122313e-14 -1.9083328088781097e-14 -2.8624992133171654e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Middle_Arm_MidFinger1_IK_Jnt" -p "Left_Middle_Arm_Wrist_IK_Jnt";
	rename -uid "471347AB-49E7-F3A2-4E65-EABF1F3D9EB9";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.49187844347862747 -52.19138317983726 0.44017698567572999 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Middle_Arm_MidFinger2_IK_Jnt" -p "Left_Middle_Arm_MidFinger1_IK_Jnt";
	rename -uid "DE69AD7D-4DA1-E2B8-252A-1FB9572167D2";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.8488695701471642 -9.2015394812761503e-16 2.4074127462581074e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000640129621146 -28.104458641903726 -0.0013588538752270368 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1" 
		-p "Left_Middle_Arm_MidFinger1_IK_Jnt";
	rename -uid "260D6A81-4E03-6EE0-3949-4E863764B34F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-15 6.2189836613768534e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -2.2357063083178129e-14 9.5416640443905503e-15 
		8.355168059703965e-15 ;
	setAttr ".lr" -type "double3" 0.45868230819837941 -0.44348744063646345 -0.10076858525691655 ;
	setAttr ".rst" -type "double3" 0.066987575837247196 0.065980359240034189 0.29938011009087973 ;
	setAttr ".rsrr" -type "double3" 0.45868230819837941 -0.44348744063646345 -0.10076858525691655 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Middle_Arm_Pinky1_IK_Jnt" -p "Left_Middle_Arm_Wrist_IK_Jnt";
	rename -uid "44C2CA2F-40B6-04A5-F754-DAAEFF0414D8";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -98.532277421083108 29.148959774359476 55.842758565042558 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Middle_Arm_Pinky1_IK_Jnt" -p "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt";
	rename -uid "FEA1EEEB-40F7-583A-BE90-6CAD2919EC58";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.2831586106414616 2.4914290780393826e-16 -2.7190157137128475e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 121.06677675461589 15.655171237197672 -114.12845462790024 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1" 
		-p "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt";
	rename -uid "562BFB9E-48E7-EFFA-6650-FDA324755462";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-15 1.7763568394002505e-15 
		2.2204460492503131e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.4312496066585827e-14 8.7465253740246703e-15 
		0 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-14 -6.3611093629270327e-15 -3.1805546814635176e-15 ;
	setAttr ".rst" -type "double3" 0.0037904076166573944 0.15509057180686048 -0.22977085315290946 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-14 -6.3611093629270327e-15 -3.1805546814635176e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "Left_Middle_Arm_Elbow_IK_Jnt";
	rename -uid "1CA4ED20-400B-B2EC-1DEE-7193709FD60F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1" 
		-p "Left_Middle_Arm_Shoulder_IK_Jnt";
	rename -uid "EBF0B9FA-4F73-0A53-8632-1C85995D440D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Shoulder_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 -1.7763568394002505e-15 
		5.620504062164855e-16 ;
	setAttr ".tg[0].tor" -type "double3" -89.955190904610916 1.0855019236223271 2.3639470963177889 ;
	setAttr ".lr" -type "double3" -3.1805546814635155e-14 -1.2722218725854064e-14 3.1805546814635195e-15 ;
	setAttr ".rst" -type "double3" 1.7922240495681756 -0.51089191436767756 0.032039523124695386 ;
	setAttr ".rsrr" -type "double3" 3.1060104311167156e-18 1.987846675914698e-16 9.9392333795734899e-17 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Back_Arm_Shoulder_IK_Jnt" -p "Root_Jnt";
	rename -uid "403AE52F-458A-2067-10C7-72BC101CEC16";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -87.689518609970676 44.32581324597917 93.304774534751616 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Back_Arm_Elbow_IK_Jnt" -p "Left_Back_Arm_Shoulder_IK_Jnt";
	rename -uid "EFBF5D52-4CA5-3C15-1542-03A275B993DE";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 3.9089314192719495 -0.0045557034218965953 -0.95683462963143207 ;
	setAttr ".r" -type "double3" 0.031494161048154938 0.00090623215898585853 -0.12351629579462613 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 82.659603953801124 0 ;
	setAttr ".pa" -type "double3" 0 5 0 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Back_Arm_Wrist_IK_Jnt" -p "Left_Back_Arm_Elbow_IK_Jnt";
	rename -uid "ECD27EE0-4ADE-5554-A930-2091BBD41BF2";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 10.229643408484776 0.10659109235893061 -0.68226714988606219 ;
	setAttr ".r" -type "double3" -5.6535223426008461 0.047658026062468405 0.96514835751173345 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 5;
createNode joint -n "Left_Back_Arm_Thumb1_IK_Jnt" -p "Left_Back_Arm_Wrist_IK_Jnt";
	rename -uid "F518F224-4863-B5DA-552A-4B8B60133FBD";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 103.78607010791778 34.836385725055138 -53.708279935273524 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Back_Arm_Thumb2_IK_Jnt" -p "Left_Back_Arm_Thumb1_IK_Jnt";
	rename -uid "C42167EB-4BA5-D8DC-1C80-C28B90A8D853";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.3486308867454229 -0.038903704168837372 0.061411372074460013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 60.473910165262325 19.924073761172117 121.03438186464913 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1" -p
		 "Left_Back_Arm_Thumb1_IK_Jnt";
	rename -uid "BE941B0D-4EE7-3E23-92F9-07BA2E411602";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Toe_1_CtrlW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.1353178659164769e-09 -1.119193182574918e-08 
		-2.4466890735652669e-09 ;
	setAttr ".tg[0].tor" -type "double3" 9.3580121538207895e-07 -6.0662527811134113e-08 
		-1.3040844117593795e-06 ;
	setAttr ".lr" -type "double3" -9.358030871385067e-07 6.0660817467890506e-08 4.4522811721836519e-12 ;
	setAttr ".rst" -type "double3" -0.021772527690631094 -0.22191161023795369 -0.3765259112971453 ;
	setAttr ".rsrr" -type "double3" -9.3580121697235631e-07 6.0662534967382084e-08 -6.85650426399599e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Back_Arm_MidFinger1_IK_Jnt" -p "Left_Back_Arm_Wrist_IK_Jnt";
	rename -uid "FDE04714-4182-9BCA-ECA1-B89B852A0C23";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.49187844347862569 -52.19138317983726 0.44017698567572699 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Back_Arm_MidFinger2_IK_Jnt" -p "Left_Back_Arm_MidFinger1_IK_Jnt";
	rename -uid "218B95E5-4B65-3A5F-5B86-9C85068BB0F1";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.8156122516656756 -0.10806827418995291 -0.022130890372860534 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000640129621146 -28.104458641903726 -0.001358853875221628 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1" 
		-p "Left_Back_Arm_MidFinger1_IK_Jnt";
	rename -uid "40E9DA27-42FD-B4EB-D070-3DB5FD8C620C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Toe_2_CtrlW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.6717830432262417e-10 -6.218344339448123e-09 
		2.1546409101347308e-10 ;
	setAttr ".tg[0].tor" -type "double3" 6.9366296103362882e-07 1.3107418883880797e-08 
		-1.4486890343728665e-06 ;
	setAttr ".lr" -type "double3" 0.45868161453227113 -0.44348745374327558 -0.10076858535856824 ;
	setAttr ".rst" -type "double3" 0.052496360654507912 0.021744017373246605 0.21563947164906239 ;
	setAttr ".rsrr" -type "double3" 0.45868161453620837 -0.44348745374345511 -0.10076858536184159 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Back_Arm_Pinky1_IK_Jnt" -p "Left_Back_Arm_Wrist_IK_Jnt";
	rename -uid "5CAFC4E3-4C1D-85E6-2E53-4B9A3A6A791E";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -98.532277421083108 29.148959774359469 55.842758565042558 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Back_Arm_Pinky1_IK_Jnt1" -p "Left_Back_Arm_Pinky1_IK_Jnt";
	rename -uid "A0C8A1B9-48A5-09D8-3A46-B5B947566E3B";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.3485100171391871 -0.039690140501217108 0.065198911460150555 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 121.06677675461593 15.655171237197672 -114.12845462790027 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1" -p
		 "Left_Back_Arm_Pinky1_IK_Jnt";
	rename -uid "CB425E8C-41DB-7494-29D7-ECA087D114A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Toe_2_CtrlW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.5769663614692035e-09 -7.2999046807353807e-09 
		3.120583902394003e-09 ;
	setAttr ".tg[0].tor" -type "double3" 9.4739994848961019e-07 3.9812092287857247e-08 
		-1.2964908024712835e-06 ;
	setAttr ".lr" -type "double3" -9.4740171131204396e-07 -3.9810449531326951e-08 4.5135362314457977e-12 ;
	setAttr ".rst" -type "double3" -0.0065509933745337978 0.13368730264891293 -0.3037099073857279 ;
	setAttr ".rsrr" -type "double3" -9.4739993974308487e-07 -3.9812090697579954e-08 
		-6.0319579607777599e-15 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "Left_Back_Arm_Elbow_IK_Jnt";
	rename -uid "73912E58-4CA1-91E6-D254-D0AC2751C3F9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1" 
		-p "Left_Back_Arm_Shoulder_IK_Jnt";
	rename -uid "9AF81138-4F08-9D37-B9A6-B2A34520EB14";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Shoulder_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1102230246251565e-15 -1.7763568394002505e-15 
		-2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" -82.938638565906174 46.157441991922958 2.5053493375569165 ;
	setAttr ".lr" -type "double3" 5.3285264365518561 0.62722710442922369 1.8106115836367125 ;
	setAttr ".rst" -type "double3" 1.7922240495681754 0.660153388977049 -1.6412436962127688 ;
	setAttr ".rsrr" -type "double3" 5.328526436551857 0.62722710442921759 1.810611583636706 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Front_Arm_Shoulder_IK_Jnt1" -p "Root_Jnt";
	rename -uid "1D6ADFD0-4DC7-9BDC-9768-0697119AD142";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -89.940192157357913 -41.488965350477841 92.323476956405145 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Front_Arm_Elbow_IK_Jnt" -p "Left_Front_Arm_Shoulder_IK_Jnt1";
	rename -uid "2093082E-4D0E-0637-A466-A29F5A6A307E";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 3.9709425700222014 -0.023127242884176724 1.3113211755382821 ;
	setAttr ".r" -type "double3" 0.042263914366443091 0.0018095881719484524 -0.25935170109429467 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 82.659603953801039 0 ;
	setAttr ".pa" -type "double3" 0 5 0 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Front_Arm_Wrist_IK_Jnt" -p "Left_Front_Arm_Elbow_IK_Jnt";
	rename -uid "1EFE1754-4BE1-FBCC-1C92-5589917926A4";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 10.066229183672679 -0.28452911255746738 -1.6089868309003421 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 5;
createNode joint -n "Left_Front_Arm_Thumb1_IK_Jnt" -p "Left_Front_Arm_Wrist_IK_Jnt";
	rename -uid "605800D2-48D4-2FAB-0294-EA8A30A594EA";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 103.78607010791779 34.836385725055145 -53.708279935273524 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Front_Arm_Thumb2_IK_Jnt" -p "Left_Front_Arm_Thumb1_IK_Jnt";
	rename -uid "63D9A58E-42A6-49DE-594A-B7B9B42F3877";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.3216285084908259 0.04626795022373642 0.03068110089154974 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 60.473910165262318 19.924073761172117 121.03438186464913 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1" -p
		 "Left_Front_Arm_Thumb1_IK_Jnt";
	rename -uid "F27BF963-438D-2C10-B9EC-4FB28B004B0F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Toe_1_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6217126691818748e-08 -1.847670869636886e-07 
		-2.847057978261347e-08 ;
	setAttr ".tg[0].tor" -type "double3" 2.0447815761461503e-05 1.5504653446556805e-06 
		-2.8891600882569127e-05 ;
	setAttr ".lr" -type "double3" -1.5902773407317578e-14 -6.3611093629270304e-15 1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" 0.0068370727999430003 -0.20714462005485665 -0.22833738365653122 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317578e-14 -6.3611093629270304e-15 
		1.2722218725854064e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Front_Arm_MidFinger1_IK_Jnt" -p "Left_Front_Arm_Wrist_IK_Jnt";
	rename -uid "FB794202-4E11-FDE9-A774-D789B1CE5815";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.093013037819509245 -52.635612558555252 0.28041820977283671 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Front_Arm_MidFinger2_IK_Jnt" -p "Left_Front_Arm_MidFinger1_IK_Jnt";
	rename -uid "1BF2445C-4ADB-5C52-62AA-96ADF03AFF94";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.9973897074308846 -0.22831722405056265 0.1498395459023687 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000640129621146 -28.104458641903726 -0.0013588538752270368 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1" 
		-p "Left_Front_Arm_MidFinger1_IK_Jnt";
	rename -uid "2A6E83C7-4726-543D-0AD2-CFA7C757D5C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.2660218529656504e-08 -1.8890849759478634e-07 
		2.6045680279196404e-08 ;
	setAttr ".tg[0].tor" -type "double3" 1.748191091031629e-05 -1.2229756333138884e-06 
		-3.079170124793528e-05 ;
	setAttr ".lr" -type "double3" 5.2617863393427832e-38 9.7062825972397362e-20 6.2120208622334312e-17 ;
	setAttr ".rst" -type "double3" 0.06698757583724696 0.065980359240034009 0.29938011009088328 ;
	setAttr ".rsrr" -type "double3" 5.2617863393427832e-38 9.7062825972397362e-20 6.2120208622334312e-17 ;
	setAttr -k on ".w0";
createNode joint -n "Left_Front_Arm_Pinky1_IK_Jnt" -p "Left_Front_Arm_Wrist_IK_Jnt";
	rename -uid "DCC16186-4BE2-F773-1045-4B9F88129428";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -98.532277421083108 29.148959774359476 55.842758565042558 ;
	setAttr ".radi" 5;
createNode joint -n "Left_Front_Arm_Pinky1_IK_Jnt" -p "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt";
	rename -uid "BE05020D-44B3-759F-B462-879062E17C89";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 2.2302180397452402 -0.26925460331398465 -0.05672474748162426 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 121.06677675461592 15.655171237197665 -114.12845462790025 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1" -p
		 "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt";
	rename -uid "C5D90B4C-4977-A6EC-71FD-4E88177B296C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.3503766689620988e-08 -1.522603199077821e-07 
		4.2651881360100674e-08 ;
	setAttr ".tg[0].tor" -type "double3" 1.8817662485167666e-05 -5.5925821788935181e-07 
		-3.0013739316526177e-05 ;
	setAttr ".lr" -type "double3" 1.1131940484815369e-14 5.5925820755254934e-07 -1.8447217147055517e-13 ;
	setAttr ".rst" -type "double3" 0.0037904076166566103 0.1550905718068584 -0.22977085315290768 ;
	setAttr ".rsrr" -type "double3" 1.1131940484815369e-14 5.5925820755254934e-07 -1.8447217147055517e-13 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Left_Front_Arm_Elbow_IK_Jnt";
	rename -uid "F1A3B117-48FB-81AB-7AE7-94A46E9FEAA8";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1" 
		-p "Left_Front_Arm_Shoulder_IK_Jnt1";
	rename -uid "1420C1C5-499C-EE53-387B-9E9559E1E0E8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Shoulder_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -89.846521309861842 -40.994076351351083 2.3063144569418501 ;
	setAttr ".lr" -type "double3" 0.082414803091804031 0.013470438609956047 0.49487393553823739 ;
	setAttr ".rst" -type "double3" 1.7922240495681756 -1.6589784622192383 1.6788135766983032 ;
	setAttr ".rsrr" -type "double3" 0.08241480309180807 0.01347043860997035 0.49487393553822773 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Middle_Arm_Shoulder_IK_Jnt" -p "Root_Jnt";
	rename -uid "B8ED37EE-4C0E-8640-5485-4085F5219D74";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90.044809095389951 -1.0855019236223251 87.636052903682213 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Middle_Arm_Elbow_IK_Jnt" -p "Right_Middle_Arm_Shoulder_IK_Jnt";
	rename -uid "8B083676-43AC-A04D-C16C-DABE96AD2A24";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -4.14767558976666 3.893244848729438e-07 -5.17555165746586e-05 ;
	setAttr ".r" -type "double3" 4.8135270525056465e-21 -3.182744503138732e-13 4.0452262711518221e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.44899038671789149 82.659603953801053 -1.8352635985629842 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Middle_Arm_Wrist_IK_Jnt" -p "Right_Middle_Arm_Elbow_IK_Jnt";
	rename -uid "43D42A0A-4107-25D5-8224-2A839C36AA28";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -10.187516066424674 -3.5296637201920333e-07 -2.5034887052299837e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 5;
createNode joint -n "Right_Middle_Arm_Thumb1_IK_Jnt" -p "Right_Middle_Arm_Wrist_IK_Jnt";
	rename -uid "25BB33D5-4394-728B-D103-F4A73FBCF2FD";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 103.78607010791767 34.836385725055052 -53.70827993527358 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Middle_Arm_Thumb2_IK_Jnt" -p "Right_Middle_Arm_Thumb1_IK_Jnt";
	rename -uid "73AE74FF-454B-D127-5A5C-A394F3344F23";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.2814410969239489 4.7567107852586332e-07 3.3499041949269781e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 60.473910165262268 19.924073761172121 121.03438186464913 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1" 
		-p "Right_Middle_Arm_Thumb1_IK_Jnt";
	rename -uid "2E8DAA7E-435A-0558-32B1-3D9E2A0A074E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Toe_1_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 3.5527136788005009e-15 
		2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854067e-14 2.6239576122074008e-14 
		6.361109362927032e-15 ;
	setAttr ".lr" -type "double3" -1.4312496066585814e-14 -3.1805546814635149e-14 -1.2722218725854059e-14 ;
	setAttr ".rst" -type "double3" -0.0068331544418488432 0.20714477942221357 0.22833968459183129 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585814e-14 -3.1805546814635149e-14 
		-1.2722218725854061e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Middle_Arm_MidFinger1_IK_Jnt" -p "Right_Middle_Arm_Wrist_IK_Jnt";
	rename -uid "30A9C400-4293-AD34-E48B-81A011A0F0F6";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.49187844347757481 -52.19138317983721 0.44017698567587804 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Middle_Arm_MidFinger2_IK_Jnt" -p "Right_Middle_Arm_MidFinger1_IK_Jnt";
	rename -uid "04056EA5-4281-AB14-9B5D-2A94D1E3D8F3";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.8488628334001467 -4.334049188425837e-07 5.8088106635878489e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000640129619768 -28.104458641903751 -0.0013588538745581791 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1" 
		-p "Right_Middle_Arm_MidFinger1_IK_Jnt";
	rename -uid "29999C84-47AE-EB20-E079-11B3C523CE06";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.9984014443252818e-15 4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.3053365339865144e-15 3.1805546814635168e-15 
		5.1994614616893819e-15 ;
	setAttr ".lr" -type "double3" 0.45868230819836464 -0.44348744063646478 -0.1007685852569133 ;
	setAttr ".rst" -type "double3" -0.066985433422939875 -0.065980328550577894 -0.2993763321531917 ;
	setAttr ".rsrr" -type "double3" 0.45868230819836464 -0.44348744063646478 -0.1007685852569133 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Middle_Arm_Pinky1_IK_Jnt" -p "Right_Middle_Arm_Wrist_IK_Jnt";
	rename -uid "16E37D63-4E07-28A1-635F-C9A795C2967A";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -98.532277421083194 29.148959774359579 55.842758565042537 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Middle_Arm_Pinky1_IK_Jnt" -p "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt";
	rename -uid "B7E53235-4CC5-37C6-4DF0-76AB3DBBCAAD";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.283159447071001 -6.0945756832353482e-06 2.5090641708747086e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 121.06677675461596 15.655171237197674 -114.12845462790024 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1" 
		-p "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt";
	rename -uid "E34D09E0-4A20-3F6B-2AA3-2191C6F9C595";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.8849813083506888e-15 -8.8817841970012523e-16 
		1.1102230246251565e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.3517357396219944e-14 7.9513867036587899e-16 
		2.2263882770244611e-14 ;
	setAttr ".lr" -type "double3" -1.5902773407317581e-14 -6.3611093629270375e-15 -2.5444437451708134e-14 ;
	setAttr ".rst" -type "double3" -0.0037879506191638365 -0.15509109794616732 0.22977340766059307 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905535e-15 -1.2722218725854065e-14 -2.2263882770244617e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector5" -p "Right_Middle_Arm_Elbow_IK_Jnt";
	rename -uid "73EA2844-4D2A-BCF4-7EA0-D883CF569EE2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1" 
		-p "Right_Middle_Arm_Shoulder_IK_Jnt";
	rename -uid "DD95DADF-4844-8A53-0766-C0BD87334F0D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Shoulder_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5476683812873944e-09 -8.125305178907638e-06 
		4.5158386245691684e-08 ;
	setAttr ".tg[0].tor" -type "double3" 90.044809095389937 -1.0855019236223251 -2.3639470963177698 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-15 1.2722218725854067e-14 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" -1.7922199999999997 -0.51090003967285469 0.03203956828308107 ;
	setAttr ".rsrr" -type "double3" 0 -9.9392333795734874e-17 0 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Back_Arm_Shoulder_IK_Jnt" -p "Root_Jnt";
	rename -uid "986BB743-49DC-9210-62C9-FA9179345A12";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 92.310481390029338 -44.325813245979155 86.695225465248356 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Back_Arm_Elbow_IK_Jnt" -p "Right_Back_Arm_Shoulder_IK_Jnt";
	rename -uid "D1FE32D4-4CB1-91D1-FE93-DE86756B891B";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -3.9089267662988676 0.0045648322945591735 0.95691085604583748 ;
	setAttr ".r" -type "double3" 2.2294043689148645e-15 -1.7809813896070327e-13 4.4059691411422338e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.44899038671152014 82.659603953801181 -1.8352635985568027 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Back_Arm_Wrist_IK_Jnt" -p "Right_Back_Arm_Elbow_IK_Jnt";
	rename -uid "518F1B60-49C4-1927-CBB0-B3834BB244AC";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -10.229618622812774 -0.10659276402307004 0.68225671792955822 ;
	setAttr ".r" -type "double3" -5.6535223426008461 0.047658026062468405 0.96514835751173345 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 5;
createNode joint -n "Right_Back_Arm_Thumb1_IK_Jnt" -p "Right_Back_Arm_Wrist_IK_Jnt";
	rename -uid "EC5120BC-4697-1E26-251D-B8BFA2DEB92D";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 103.78607010791757 34.836385725054924 -53.708279935273623 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Back_Arm_Thumb2_IK_Jnt" -p "Right_Back_Arm_Thumb1_IK_Jnt";
	rename -uid "0265E448-48ED-502C-A263-50B6FCC1E116";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.348630262471664 0.038903727847829472 -0.061404873967674356 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 60.473910165262339 19.924073761172053 121.03438186464913 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1" -p
		 "Right_Back_Arm_Thumb1_IK_Jnt";
	rename -uid "47935E2A-43B8-FE1B-9E9E-A488131BC514";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Toe_1_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-15 -1.3322676295501878e-14 
		-1.0658141036401503e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.0336802714756432e-13 -1.6379856609537112e-13 
		4.2619432731611127e-13 ;
	setAttr ".lr" -type "double3" 1.0177774980683189e-13 1.7811106216195737e-13 -4.2937488199757468e-13 ;
	setAttr ".rst" -type "double3" 0.021782474823852094 0.22191130140401394 0.37653362014530423 ;
	setAttr ".rsrr" -type "double3" 1.0177774980683189e-13 1.7811106216195737e-13 -4.2937488199757468e-13 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Back_Arm_MidFinger1_IK_Jnt" -p "Right_Back_Arm_Wrist_IK_Jnt";
	rename -uid "A76F7AB3-46F8-6B94-DB10-8B9A6A202139";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.49187844347765103 -52.191383179837274 0.44017698567603319 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Back_Arm_MidFinger2_IK_Jnt" -p "Right_Back_Arm_MidFinger1_IK_Jnt";
	rename -uid "AD39D904-4176-B49D-5ED8-2AB4868CAE4D";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.8156130358963196 0.10807409007009416 0.022128150050821915 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.00064012961964 -28.104458641903733 -0.0013588538744950783 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1" 
		-p "Right_Back_Arm_MidFinger1_IK_Jnt";
	rename -uid "39ABA923-48C1-41AF-51AA-D38B88E52CA7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 1.2323475573339238e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.4543184408621451e-13 -6.3611093629270351e-15 
		2.6348286487163101e-13 ;
	setAttr ".lr" -type "double3" 0.45868230819870476 -0.44348744063644524 -0.10076858525717158 ;
	setAttr ".rst" -type "double3" -0.052493224272540551 -0.021749919077533209 -0.21563063262345938 ;
	setAttr ".rsrr" -type "double3" 0.45868230819870476 -0.44348744063644524 -0.10076858525717158 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Back_Arm_Pinky1_IK_Jnt" -p "Right_Back_Arm_Wrist_IK_Jnt";
	rename -uid "C269A0A8-42A7-B57D-7E21-07AF733E72ED";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -98.532277421083293 29.148959774359636 55.842758565042487 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Back_Arm_Pinky1_IK_Jnt1" -p "Right_Back_Arm_Pinky1_IK_Jnt";
	rename -uid "1CC1DBF1-4D02-45BA-B4FB-4F9186176A52";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.3485068204044128 0.03968873431408948 -0.065201296286108601 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 121.06677675461592 15.655171237197717 -114.1284546279003 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1" -p
		 "Right_Back_Arm_Pinky1_IK_Jnt";
	rename -uid "244F3DB8-41F6-EFC9-6E09-D0A74DEFD53B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5543122344752192e-14 -3.5527136788005009e-15 
		5.3845816694320092e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.1768052321415011e-13 2.480832651541543e-13 
		3.6894434304976796e-13 ;
	setAttr ".lr" -type "double3" 1.1131941385122388e-13 -2.4172215579122691e-13 -3.7530545241269525e-13 ;
	setAttr ".rst" -type "double3" 0.0065513632988182247 -0.13369282162466711 0.30371308645654516 ;
	setAttr ".rsrr" -type "double3" 1.1131941385122388e-13 -2.4172215579122691e-13 -3.7530545241269525e-13 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector4" -p "Right_Back_Arm_Elbow_IK_Jnt";
	rename -uid "19ABAFA3-494D-31E9-8AD9-8A984BB03357";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1" 
		-p "Right_Back_Arm_Shoulder_IK_Jnt";
	rename -uid "C862A4BE-40B3-A813-E6F4-DD9472407C1D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Shoulder_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5476690474212091e-09 4.6571350093671526e-05 
		-3.7355041508924103e-06 ;
	setAttr ".tg[0].tor" -type "double3" 96.894022519789843 -46.475432357231611 -2.6019904752181584 ;
	setAttr ".lr" -type "double3" 5.0946429315962813 0.57031127011905269 2.1305253848489936 ;
	setAttr ".rst" -type "double3" -1.7922200000000004 0.66019996032714445 -1.6412474317169194 ;
	setAttr ".rsrr" -type "double3" 5.0946429315962636 0.57031127011903682 2.130525384849002 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Front_Arm_Shoulder_IK_Jnt1" -p "Root_Jnt";
	rename -uid "4C66CD52-4C83-D7FB-D266-13AF6F2C9EB8";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90.059807842642073 41.488965350477841 87.676523043594841 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Front_Arm_Elbow_IK_Jnt" -p "Right_Front_Arm_Shoulder_IK_Jnt1";
	rename -uid "FF11BC10-4449-B215-E797-748F5BA6E816";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -3.9709523445535986 0.023128014893741694 -1.3113680470452849 ;
	setAttr ".r" -type "double3" 0.042249472053918248 0.0018103951454087187 -0.25934706843379046 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 2.1892865898740152e-14 82.659603953801067 2.4894000004352383e-14 ;
	setAttr ".pa" -type "double3" 0 5 0 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Front_Arm_Wrist_IK_Jnt" -p "Right_Front_Arm_Elbow_IK_Jnt";
	rename -uid "12E730A0-4948-F98F-5168-238EC72FAF67";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -10.066250409314685 0.28452971251530501 1.608990223608556 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 5;
createNode joint -n "Right_Front_Arm_Thumb1_IK_Jnt" -p "Right_Front_Arm_Wrist_IK_Jnt";
	rename -uid "F3941E84-4476-DB7C-687C-4F893F2183F9";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 103.78607010791784 34.836385725055138 -53.708279935273502 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Front_Arm_Thumb2_IK_Jnt" -p "Right_Front_Arm_Thumb1_IK_Jnt";
	rename -uid "949F1FCD-4DF8-94F5-E577-13B2EF60D9D1";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.3216308754197801 -0.046260127214534208 -0.030684828708776091 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 60.473910165262353 19.924073761172121 121.03438186464913 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1" 
		-p "Right_Front_Arm_Thumb1_IK_Jnt";
	rename -uid "5A71D5AA-4FA0-B606-1C52-42AF15E2D502";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Toe_1_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5276668818842154e-13 1.3233858453531866e-13 
		1.2101430968414206e-13 ;
	setAttr ".tg[0].tor" -type "double3" -3.1328463612415656e-13 1.6467321863277361e-12 
		-1.4121662785698018e-12 ;
	setAttr ".lr" -type "double3" 3.101040814426728e-13 -1.6411662156351787e-12 1.4089857238883337e-12 ;
	setAttr ".rst" -type "double3" -0.006843180487412226 0.2071423149304448 0.22833673126782106 ;
	setAttr ".rsrr" -type "double3" 3.101040814426728e-13 -1.6411662156351787e-12 1.4089857238883337e-12 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Front_Arm_MidFinger1_IK_Jnt" -p "Right_Front_Arm_Wrist_IK_Jnt";
	rename -uid "B1EC2371-4865-475D-E039-DF8AD5EEF0BB";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.09301303781875761 -52.635612558555295 0.28041820977283499 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Front_Arm_MidFinger2_IK_Jnt" -p "Right_Front_Arm_MidFinger1_IK_Jnt";
	rename -uid "B07D1A9C-4517-D806-156D-709D4B93DF3A";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.9973884275107592 0.22831833467894791 -0.14983825104095416 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000640129622013 -28.104458641903719 -0.0013588538756452982 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1" 
		-p "Right_Front_Arm_MidFinger1_IK_Jnt";
	rename -uid "59CE48F4-43EB-857F-EB36-228A8D7FC49C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.2434497875801753e-14 -2.2441770664016758e-13 
		-5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.2770535191768374e-12 -7.3152757673660883e-14 
		5.1274020196874742e-14 ;
	setAttr ".lr" -type "double3" -2.2770286710933888e-12 7.3213227814240672e-14 -5.1298868280325132e-14 ;
	setAttr ".rst" -type "double3" -0.066991059403642139 -0.065980305006499956 -0.29938001788901314 ;
	setAttr ".rsrr" -type "double3" -2.2770286710933892e-12 7.3213227814240672e-14 -5.1298868280325132e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Right_Front_Arm_Pinky1_IK_Jnt" -p "Right_Front_Arm_Wrist_IK_Jnt";
	rename -uid "5851DCAC-46AD-FB10-B7EE-B3809C729E11";
	setAttr -l on -k off ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -98.532277421083151 29.148959774359458 55.842758565042544 ;
	setAttr ".radi" 5;
createNode joint -n "Right_Front_Arm_Pinky1_IK_Jnt" -p "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt";
	rename -uid "0BD055F4-4F96-8E6A-76B5-E8AE77098A70";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -2.2302248275699377 0.26925920668021064 0.056720961492089272 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 121.06677675461593 15.655171237197669 -114.12845462790024 ;
	setAttr ".radi" 5;
createNode parentConstraint -n "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1" 
		-p "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt";
	rename -uid "1181DA53-4F01-417D-42C5-488A06AA33BD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Toe_2_CtrlW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.6298074001497298e-13 1.2523315717771766e-13 
		-1.1324274851176597e-13 ;
	setAttr ".tg[0].tor" -type "double3" -2.9897214005757052e-13 -1.6546835730313946e-12 
		-1.3899023957995568e-12 ;
	setAttr ".lr" -type "double3" 3.0533324942051801e-13 1.6729717624498058e-12 1.3994440598439518e-12 ;
	setAttr ".rst" -type "double3" -0.0037934558522614847 -0.15508716524160501 0.22977373298534598 ;
	setAttr ".rsrr" -type "double3" 3.0533324942051801e-13 1.6729717624498058e-12 1.399444059843952e-12 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector6" -p "Right_Front_Arm_Elbow_IK_Jnt";
	rename -uid "D0DB2A5B-4888-AB08-68FD-6A80AEB0D592";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1" 
		-p "Right_Front_Arm_Shoulder_IK_Jnt1";
	rename -uid "B51D97C0-4805-260D-D24F-96A878F0C8C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Shoulder_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5476681592427894e-09 3.5705566148180878e-07 
		-4.1961678576285522e-10 ;
	setAttr ".tg[0].tor" -type "double3" 90.306464128530678 41.39556241587124 -2.3253298473923194 ;
	setAttr ".lr" -type "double3" 0.24788159648864613 -0.0012924701865789925 0.093404319766789048 ;
	setAttr ".rst" -type "double3" -1.7922199999999995 -1.6590000396728541 1.67881 ;
	setAttr ".rsrr" -type "double3" 0.24788159648863187 -0.0012924701865630853 0.093404319766792282 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Root_Jnt_parentConstraint1" -p "Root_Jnt";
	rename -uid "2E67A2C1-4B63-22FB-BAB8-90A79AF313EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Master_Jnt_parentConstraint1" -p "Master_Jnt";
	rename -uid "28CA00E9-4264-DEAB-92EE-5F90EC6708AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Master_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6783009738613566e-16 11.740900039672852 
		0 ;
	setAttr ".rst" -type "double3" -2.6783009738613566e-16 11.740900039672852 0 ;
	setAttr -k on ".w0";
createNode transform -n "SpiderBot_Geo" -p "Spider_Rig";
	rename -uid "F2CAA3E9-490A-8544-C9A0-779B5ED7B625";
	setAttr ".t" -type "double3" 0 0 0.74996256828308105 ;
	setAttr ".rp" -type "double3" 6.3115139007568359 6.3875741575320717 -1.6565680503845215 ;
	setAttr ".sp" -type "double3" 6.3115139007568359 6.3875741575320717 -1.6565680503845215 ;
createNode transform -n "Body" -p "SpiderBot_Geo";
	rename -uid "812EFA81-4110-DB49-DE79-A983BFC18DB2";
createNode transform -n "polySurface20" -p "Body";
	rename -uid "4D948616-43D2-67F6-C6FE-1699A7EA9F5D";
createNode mesh -n "polySurfaceShape20" -p "polySurface20";
	rename -uid "30CA7206-4E71-D2A4-943B-359D395FD7A4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape20Orig" -p "polySurface20";
	rename -uid "0878DA08-456D-8745-BCA4-B8AC42C8E606";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0.062119 0.055884998
		 0.059014 0.006054 0.0243 0.0061039999 0.030805999 0.066058002 0.0094799995 0.066538997
		 0.0059890002 0.0084319999 0.58063197 0.084383003 0.60508901 0.117053 0.60010499 0.0052780001
		 0.582335 0.0053030001 0.46102899 0.163664 0.47359499 0.108845 0.25288501 0.173893
		 0.27010301 0.1256 0.104284 0.119569 0.12603299 0.094144002 0.045674 0.277821 0.042247999
		 0.230488 0.1267 0.230581 0.098291002 0.31683201 0.24115799 0.230719 0.227235 0.38325301
		 0.42314899 0.36543801 0.42262399 0.230662 0.56157398 0.319175 0.57265699 0.23062401
		 0.60740799 0.17942099 0.68386197 0.19809601 0.68998301 0.15537199 0.466061 0.22350401
		 0.243852 0.226748 0.092260003 0.17549101 0.03101 0.162614 0.023433 0.112641 0.27831
		 0.0057390002 0.474711 0.0054569999 0.128819 0.0059540002 0.062119 0.055884998 0.030805999
		 0.066058002 0.0243 0.0061039999 0.059014 0.006054 0.0094799995 0.066538997 0.0059890002
		 0.0084319999 0.58063197 0.084383003 0.582335 0.0053030001 0.60010499 0.0052780001
		 0.60508901 0.117053 0.46102899 0.163664 0.47359499 0.108845 0.25288501 0.173893 0.27010301
		 0.1256 0.104284 0.119569 0.12603299 0.094144002 0.045674 0.277821 0.098291002 0.31683201
		 0.1267 0.230581 0.042247999 0.230488 0.227235 0.38325301 0.24115799 0.230719 0.42314899
		 0.36543801 0.42262399 0.230662 0.56157398 0.319175 0.57265699 0.23062401 0.60740799
		 0.17942099 0.68998301 0.15537199 0.68386197 0.19809601 0.466061 0.22350401 0.243852
		 0.226748 0.092260003 0.17549101 0.03101 0.162614 0.023433 0.112641 0.27831 0.0057390002
		 0.474711 0.0054569999 0.128819 0.0059540002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.78248101 10.49464512 3.32102394 -2.1037452e-16 10.48544693 3.36180592
		 -1.6055945e-16 9.93661213 3.48402596 0.93855298 9.99572659 3.43028688 0.74207699 9.46274662 2.58927894
		 1.233078 15.47926807 -2.32344007 1.73674202 15.15735912 -2.93613601 -4.0394755e-16 15.13360786 -3.18584704
		 -3.3052872e-16 15.63107777 -2.20871711 2.45206499 14.088438034 -1.27824903 1.60765505 14.72637558 -0.81845403
		 2.60507107 12.2963829 1.24425006 1.86131406 12.97169971 1.64688301 1.764714 10.80359554 2.76895499
		 1.37342095 11.35785007 2.93409896 -1.6915196e-16 9.34932613 2.59272289 -1.8961928e-16 9.95526028 1.42671895
		 1.34561706 9.84503078 1.87336802 -2.7993166e-16 10.99137878 -0.021105001 2.37360907 11.0041675568 0.25097099
		 2.097374916 12.75903225 -2.22219896 -3.0128025e-16 12.62314224 -2.318295 1.38205194 14.11254597 -3.88359308
		 -3.6650824e-16 14.1324749 -4.092648029 -1.4569222e-16 13.1581583 1.642977 -2.1443824e-16 11.47824287 2.983953
		 -2.0451638e-16 14.84996033 -0.732858 -0.78248101 10.49464512 3.32102394 -0.93855298 9.99572659 3.43028688
		 -0.74207699 9.46274662 2.58927894 -1.233078 15.47926807 -2.32344007 -1.73674202 15.15735912 -2.93613601
		 -2.45206499 14.088438034 -1.27824903 -1.60765505 14.72637558 -0.81845403 -2.60507107 12.2963829 1.24425006
		 -1.86131406 12.97169971 1.64688301 -1.764714 10.80359554 2.76895499 -1.37342095 11.35785007 2.93409896
		 -1.34561706 9.84503078 1.87336802 -2.37360907 11.0041675568 0.25097099 -2.097374916 12.75903225 -2.22219896
		 -1.38205194 14.11254597 -3.88359308;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 1 2 3 0 3 0 1 4 3 0 5 6 0 6 7 1
		 7 8 1 8 5 0 9 6 0 5 10 0 10 9 1 11 9 0 10 12 0 12 11 1 13 11 0 12 14 0 14 13 1 3 13 0
		 14 0 0 4 15 0 15 16 1 16 17 1 17 4 0 16 18 1 18 19 1 19 17 0 20 19 0 18 21 1 21 20 1
		 22 20 0 21 23 1 23 22 0 23 7 1 6 22 0 9 20 1 11 19 1 13 17 1 24 12 1 24 25 1 25 14 1
		 25 1 1 8 26 1 26 10 1 26 24 1 2 15 1 27 1 0 2 28 0 28 27 1 29 28 0 29 15 0 30 31 0
		 31 7 1 8 30 0 32 31 0 30 33 0 33 32 1 34 32 0 33 35 0 35 34 1 36 34 0 35 37 0 37 36 1
		 28 36 0 37 27 0 16 38 1 38 29 0 18 39 1 39 38 0 40 39 0 21 40 1 41 40 0 23 41 0 31 41 0
		 32 40 1 34 39 1 36 38 1 24 35 1 26 33 1 25 37 1;
	setAttr -s 40 -ch 160 ".fc[0:39]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -3 45 -21
		mu 0 4 4 3 2 5
		f 4 5 6 7 8
		mu 0 4 6 7 8 9
		f 4 9 -6 10 11
		mu 0 4 10 7 6 11
		f 4 12 -12 13 14
		mu 0 4 12 10 11 13
		f 4 15 -15 16 17
		mu 0 4 14 12 13 15
		f 4 18 -18 19 -4
		mu 0 4 3 14 15 0
		f 4 20 21 22 23
		mu 0 4 16 17 18 19
		f 4 -23 24 25 26
		mu 0 4 19 18 20 21
		f 4 27 -26 28 29
		mu 0 4 22 21 20 23
		f 4 30 -30 31 32
		mu 0 4 24 22 23 25
		f 4 -33 33 -7 34
		mu 0 4 26 27 28 7
		f 4 -31 -35 -10 35
		mu 0 4 29 26 7 10
		f 4 -28 -36 -13 36
		mu 0 4 30 29 10 12
		f 4 -27 -37 -16 37
		mu 0 4 31 30 12 14
		f 4 -24 -38 -19 -5
		mu 0 4 32 31 14 33
		f 4 38 -14 -44 44
		mu 0 4 34 13 11 35
		f 4 -17 -39 39 40
		mu 0 4 15 13 34 36
		f 4 -20 -41 41 -1
		mu 0 4 0 15 36 1
		f 4 -9 42 43 -11
		mu 0 4 6 9 35 11
		f 4 -49 -48 -2 -47
		mu 0 4 37 38 39 40
		f 4 50 -46 47 -50
		mu 0 4 41 42 39 38
		f 4 -54 -8 -53 -52
		mu 0 4 43 44 45 46
		f 4 -57 -56 51 -55
		mu 0 4 47 48 43 46
		f 4 -60 -59 56 -58
		mu 0 4 49 50 48 47
		f 4 -63 -62 59 -61
		mu 0 4 51 52 50 49
		f 4 48 -65 62 -64
		mu 0 4 38 37 52 51
		f 4 -67 -66 -22 -51
		mu 0 4 53 54 55 56
		f 4 -69 -68 -25 65
		mu 0 4 54 57 58 55
		f 4 -71 -29 67 -70
		mu 0 4 59 60 58 57
		f 4 -73 -32 70 -72
		mu 0 4 61 62 60 59
		f 4 -74 52 -34 72
		mu 0 4 63 46 64 65
		f 4 -75 54 73 71
		mu 0 4 66 47 46 63
		f 4 -76 57 74 69
		mu 0 4 67 49 47 66
		f 4 -77 60 75 68
		mu 0 4 68 51 49 67
		f 4 49 63 76 66
		mu 0 4 69 70 51 68
		f 4 -45 78 58 -78
		mu 0 4 71 72 48 50
		f 4 -80 -40 77 61
		mu 0 4 52 73 71 50
		f 4 46 -42 79 64
		mu 0 4 37 40 73 52
		f 4 55 -79 -43 53
		mu 0 4 43 48 72 44;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface17" -p "Body";
	rename -uid "097B65FF-422E-E188-E26E-3E9EFF3B5292";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	rename -uid "FC7937EA-4A71-2B8A-807B-1488C398F450";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape17Orig" -p "polySurface17";
	rename -uid "F1AC4556-4196-0611-6FDB-C8B620BEF8B9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0.60177797 0.51121497
		 0.60815501 0.53058201 0.64851898 0.51776099 0.64129901 0.495401 0.68799299 0.48417801
		 0.694282 0.50388497 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998
		 0.62255698 0.69637197 0.63816899 0.68434 0.609712 0.658557 0.68147498 0.72371203
		 0.67420399 0.73255998 0.65184897 0.66894501 0.69097197 0.71272302 0.69901901 0.70456398
		 0.66212499 0.65384901 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398
		 0.67958403 0.75030202 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159
		 0.709773 0.64167202 0.75165403 0.52244002 0.73714203 0.46809 0.72608399 0.46415401
		 0.74320859 0.52505672 0.75822997 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898
		 0.71015197 0.57198602 0.66263402 0.57925498 0.66354001 0.59908402 0.70771301 0.55317098
		 0.660083 0.560305 0.70397902 0.53557497 0.65644997 0.54351002 0.659244 0.80057198
		 0.68692702 0.80496401 0.69194102 0.76880097 0.67273301 0.75392801 0.66895401 0.83796299
		 0.64602602 0.84729803 0.61720401 0.56577402 0.61997002 0.58558398 0.621387 0.59997499
		 0.66297001 0.624327 0.62158799 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001
		 0.619008 0.64908397 0.62129599 0.63988101 0.61717898 0.74692702 0.60069299 0.781793
		 0.62854099 0.79232401 0.64025003 0.74519801 0.59942001 0.81702501 0.61655903 0.83938402
		 0.71140701 0.53491002 0.72365201 0.53111607 0.71005899 0.467933 0.70192498 0.47639501
		 0.72852063 0.54919553 0.71505499 0.55338103 0.60177797 0.51121497 0.64129901 0.495401
		 0.64851898 0.51776099 0.60815501 0.53058201 0.68799299 0.48417801 0.694282 0.50388497
		 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998 0.609712 0.658557
		 0.63816899 0.68434 0.62255698 0.69637197 0.68147498 0.72371203 0.67420399 0.73255998
		 0.65184897 0.66894501 0.69097197 0.71272302 0.66212499 0.65384901 0.69901901 0.70456398
		 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398 0.67958403 0.75030202
		 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159 0.709773 0.64167202 0.75165403
		 0.52244002 0.74320859 0.52505672 0.72608399 0.46415401 0.73714203 0.46809 0.75822997
		 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898 0.66354001 0.59908402 0.66263402
		 0.57925498 0.71015197 0.57198602 0.660083 0.560305 0.70771301 0.55317098 0.65644997
		 0.54351002 0.70397902 0.53557497 0.659244 0.80057198 0.67273301 0.75392801 0.69194102
		 0.76880097 0.68692702 0.80496401 0.66895401 0.83796299 0.64602602 0.84729803 0.61720401
		 0.56577402 0.61997002 0.58558398 0.621387 0.59997499 0.66297001 0.624327 0.62158799
		 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001 0.619008 0.64908397 0.62129599
		 0.63988101 0.61717898 0.74692702 0.64025003 0.74519801 0.62854099 0.79232401 0.60069299
		 0.781793 0.61655903 0.83938402 0.59942001 0.81702501 0.71140701 0.53491002 0.70192498
		 0.47639501 0.71005899 0.467933 0.72365201 0.53111607 0.72852063 0.54919553 0.71505499
		 0.55338103;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  1.844262 10.2328167 1.48633802 1.844262 10.54095078 1.20758402
		 0.97860003 10.58765411 1.233729 0.97860003 10.23359394 1.56084597 -2.207544e-16 10.31215477 1.54242897
		 0.38923499 10.18245888 1.67103302 -2.0543023e-16 10.31041241 1.54457104 1.081100941 9.85168839 1.57040095
		 0.91156799 9.18033886 2.54351997 1.081100941 9.55779266 1.364622 0.91156799 8.87298298 2.32831192
		 0.741216 8.74616432 2.11770296 0.38923499 8.65567493 2.24693704 0.97860003 9.46801758 1.086791992
		 0.39116701 9.35986805 1.17572701 0.38923499 9.33111954 2.71987796 0.38923499 9.063809395 2.70992398
		 0.741216 9.42160797 2.5906651 -1.9707748e-16 9.42559814 1.016777992 -1.8111297e-16 9.42415047 1.019067049
		 0.38923499 8.75647354 2.49471593 -1.8815083e-16 9.95983791 0.086540997 -2.1893921e-16 10.4377346 0.075873002
		 0.97860003 10.36001396 0.186837 -2.2329874e-16 10.76176453 0.30275699 0.97860003 10.68406487 0.41374201
		 -2.393843e-16 10.92363358 0.637371 0.97860003 10.83658791 0.73720503 -2.510635e-16 10.6157732 1.24433398
		 1.844262 9.68011856 0.60484201 1.844262 9.96809101 0.28509599 1.79222405 9.92743492 0.82068002
		 1.844262 9.51715755 1.016610026 1.844262 9.60693359 1.29444003 1.844262 10.57198715 0.57380402
		 1.844262 10.2479372 0.346899 0.97860003 9.95448303 0.183246 0.97860003 9.64481735 0.57254398
		 -1.5734659e-16 9.61245537 0.546 1.844262 10.7318821 0.79499698 1.844262 9.90082836 1.50021899
		 1.79222405 10.23640823 1.037021995 0.38982278 9.93218899 1.52033818 -1.4599077e-16 10.034000397 1.38067424
		 0.39076158 9.53248024 1.27966213 -1.3501856e-16 9.61394501 1.13160431 -1.844262 10.2328167 1.48633802
		 -1.844262 10.54095078 1.20758402 -0.97860003 10.58765411 1.233729 -0.97860003 10.23359394 1.56084597
		 -0.38923499 10.18245888 1.67103302 -1.081100941 9.85168839 1.57040095 -0.91156799 9.18033886 2.54351997
		 -1.081100941 9.55779266 1.364622 -0.91156799 8.87298298 2.32831192 -0.741216 8.74616432 2.11770296
		 -0.38923499 8.65567493 2.24693704 -0.97860003 9.46801758 1.086791992 -0.39116701 9.35986805 1.17572701
		 -0.38923499 9.33111954 2.71987796 -0.38923499 9.063809395 2.70992398 -0.741216 9.42160797 2.5906651
		 -0.38923499 8.75647354 2.49471593 -0.97860003 10.36001396 0.186837 -0.97860003 10.68406487 0.41374201
		 -0.97860003 10.83658791 0.73720503 -1.844262 9.68011856 0.60484201 -1.844262 9.96809101 0.28509599
		 -1.79222405 9.92743492 0.82068002 -1.844262 9.51715755 1.016610026 -1.844262 9.60693359 1.29444003
		 -1.844262 10.57198715 0.57380402 -1.844262 10.2479372 0.346899 -0.97860003 9.95448303 0.183246
		 -0.97860003 9.64481735 0.57254398 -1.844262 10.7318821 0.79499698 -1.844262 9.90082836 1.50021899
		 -1.79222405 10.23640823 1.037021995 -0.38982278 9.93218899 1.52033818 -0.39076158 9.53248024 1.27966213;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 1 2 3 1 3 0 0 4 3 1 4 5 1 5 3 1
		 4 6 1 6 5 0 3 7 0 8 7 1 9 7 0 8 10 0 10 9 0 10 11 0 12 11 0 13 11 0 12 14 0 14 13 1
		 15 16 0 16 8 0 8 17 0 17 15 0 3 17 0 5 15 0 18 13 1 14 18 1 14 19 0 19 18 1 12 20 0
		 20 16 0 5 42 0 6 43 0 21 22 1 22 23 0 22 24 1 24 25 1 25 23 1 24 26 1 26 27 0 27 25 1
		 26 28 1 28 2 1 2 27 1 28 4 1 29 30 0 31 29 1 32 29 0 31 33 1 33 32 0 34 35 0 35 23 1
		 35 30 0 30 36 0 36 23 1 37 36 1 37 38 1 18 38 1 1 39 0 39 27 0 39 34 0 34 25 1 40 0 0
		 7 40 0 33 40 0 9 33 0 9 13 0 29 37 1 32 13 0 13 37 1 10 20 0 1 41 1 41 34 1 41 31 1
		 31 35 1 40 41 1 36 21 0 38 21 1 42 44 0 43 45 0 16 42 1 42 43 1 44 14 0 45 19 0 20 44 1
		 44 45 1 46 47 0 47 48 1 48 49 1 49 46 0 4 49 1 28 48 1 4 50 1 50 49 1 6 50 0 49 51 0
		 51 76 0 76 46 0 52 51 1 49 61 0 52 61 0 53 51 0 52 54 0 54 53 0 54 55 0 57 55 0 53 57 0
		 56 55 0 54 62 0 56 62 0 56 58 0 58 57 1 59 60 0 60 52 0 61 59 0 50 59 0 18 57 1 58 18 1
		 58 19 0 62 79 1 79 58 0 79 45 1 22 63 0 73 63 1 73 21 0 24 64 1 64 63 1 26 65 0 65 64 1
		 48 65 1 68 66 1 66 67 0 72 67 0 68 72 1 69 66 0 68 70 1 70 69 0 71 72 0 72 63 1 71 64 1
		 67 73 0 74 73 1 66 74 1 74 38 1 57 74 1 47 75 0 75 65 0 75 71 0 70 76 0 53 70 0 69 57 0
		 62 60 0 47 77 1 77 71 1 77 68 1 76 77 1 50 78 0 60 78 1 78 43 1 78 79 0;
	setAttr -s 82 -ch 320 ".fc[0:81]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -3 -43 44
		mu 0 4 4 3 2 5
		f 3 -5 5 6
		mu 0 3 3 4 6
		f 3 -6 7 8
		mu 0 3 6 4 7
		f 4 -4 9 63 62
		mu 0 4 8 9 10 11
		f 4 10 -10 23 -22
		mu 0 4 12 10 9 13
		f 4 11 -11 12 13
		mu 0 4 14 10 12 15
		f 4 -14 14 -17 -67
		mu 0 4 14 15 16 17
		f 4 15 -15 70 -30
		mu 0 4 18 16 15 19
		f 4 16 -16 17 18
		mu 0 4 17 16 18 20
		f 4 19 20 21 22
		mu 0 4 21 22 12 13
		f 4 -23 -24 -7 24
		mu 0 4 21 13 9 23
		f 3 25 -19 26
		mu 0 3 24 17 20
		f 3 -27 27 28
		mu 0 3 24 20 25
		f 4 -18 29 84 82
		mu 0 4 26 27 28 29
		f 4 -28 -83 85 83
		mu 0 4 30 26 29 31
		f 4 33 34 -55 76
		mu 0 4 32 33 34 35
		f 4 -35 35 36 37
		mu 0 4 34 33 36 37
		f 4 -37 38 39 40
		mu 0 4 37 36 38 39
		f 4 -40 41 42 43
		mu 0 4 39 38 5 2
		f 4 46 45 -53 -75
		mu 0 4 40 41 42 43
		f 4 47 -47 48 49
		mu 0 4 44 41 40 45
		f 4 50 51 -38 -62
		mu 0 4 46 47 34 37
		f 4 -52 52 53 54
		mu 0 4 34 47 48 35
		f 4 55 -54 -46 67
		mu 0 4 49 35 48 50
		f 4 -56 56 77 -77
		mu 0 4 35 49 51 32
		f 4 57 -57 -70 -26
		mu 0 4 24 51 49 17
		f 4 -2 58 59 -44
		mu 0 4 2 1 52 39
		f 4 -60 60 61 -41
		mu 0 4 39 52 46 37
		f 4 64 -64 -12 65
		mu 0 4 53 11 10 14
		f 4 -66 66 -69 -50
		mu 0 4 53 14 17 54
		f 4 -68 -48 68 69
		mu 0 4 49 50 54 17
		f 4 -31 -71 -13 -21
		mu 0 4 22 19 15 12
		f 4 -59 71 72 -61
		mu 0 4 55 56 57 58
		f 4 -73 73 74 -51
		mu 0 4 58 57 40 43
		f 4 -72 -1 -63 75
		mu 0 4 57 56 59 60
		f 4 -74 -76 -65 -49
		mu 0 4 40 57 60 45
		f 4 31 -81 -20 -25
		mu 0 4 61 62 63 64
		f 4 -82 -32 -9 32
		mu 0 4 65 62 61 66
		f 4 -85 30 80 78
		mu 0 4 29 28 63 62
		f 4 -86 -79 81 79
		mu 0 4 31 29 62 65
		f 4 -90 -89 -88 -87
		mu 0 4 67 68 69 70
		f 4 -45 91 88 -91
		mu 0 4 71 72 69 68
		f 3 -94 -93 90
		mu 0 3 68 73 71
		f 3 -95 -8 92
		mu 0 3 73 74 71
		f 4 -98 -97 -96 89
		mu 0 4 75 76 77 78
		f 4 100 -100 95 -99
		mu 0 4 79 80 78 77
		f 4 -104 -103 98 -102
		mu 0 4 81 82 79 77
		f 4 106 105 -105 103
		mu 0 4 81 83 84 82
		f 4 109 -109 104 -108
		mu 0 4 85 86 82 84
		f 4 -112 -111 107 -106
		mu 0 4 83 87 85 84
		f 4 -115 -101 -114 -113
		mu 0 4 88 80 79 89
		f 4 -116 93 99 114
		mu 0 4 88 90 78 80
		f 3 -118 111 -117
		mu 0 3 91 87 83
		f 3 -29 -119 117
		mu 0 3 91 92 87
		f 4 -121 -120 -110 110
		mu 0 4 93 94 95 96
		f 4 -84 -122 120 118
		mu 0 4 97 98 94 93
		f 4 -125 123 -123 -34
		mu 0 4 99 100 101 102
		f 4 -127 -126 -36 122
		mu 0 4 101 103 104 102
		f 4 -129 -128 -39 125
		mu 0 4 103 105 106 104
		f 4 -130 -92 -42 127
		mu 0 4 105 69 72 106
		f 4 133 132 -132 -131
		mu 0 4 107 108 109 110
		f 4 -137 -136 130 -135
		mu 0 4 111 112 107 110
		f 4 139 126 -139 -138
		mu 0 4 113 103 101 114
		f 4 -124 -141 -133 138
		mu 0 4 101 100 115 114
		f 4 -143 131 140 -142
		mu 0 4 116 117 115 100
		f 4 124 -78 -144 141
		mu 0 4 100 99 118 116
		f 4 116 144 143 -58
		mu 0 4 91 83 116 118
		f 4 129 -147 -146 87
		mu 0 4 69 105 119 70
		f 4 128 -140 -148 146
		mu 0 4 105 103 113 119
		f 4 -150 101 96 -149
		mu 0 4 120 81 77 76
		f 4 136 150 -107 149
		mu 0 4 120 121 83 81
		f 4 -145 -151 134 142
		mu 0 4 116 83 121 117
		f 4 113 102 108 151
		mu 0 4 89 79 82 86
		f 4 147 -154 -153 145
		mu 0 4 122 123 124 125
		f 4 137 -134 -155 153
		mu 0 4 123 108 107 124
		f 4 -156 97 86 152
		mu 0 4 124 126 127 125
		f 4 135 148 155 154
		mu 0 4 107 112 126 124
		f 4 115 112 157 -157
		mu 0 4 128 129 130 131
		f 4 -33 94 156 158
		mu 0 4 132 133 128 131
		f 4 -160 -158 -152 119
		mu 0 4 94 131 130 95
		f 4 -80 -159 159 121
		mu 0 4 98 132 131 94;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface19" -p "Body";
	rename -uid "2892E023-4AA2-5E60-F9A7-10B641E66E85";
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	rename -uid "A9B70A91-487C-283D-730C-12A361532BDB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape19Orig" -p "polySurface19";
	rename -uid "78D3FCB1-4AA9-0B19-6B0A-8C89D448342D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0.60177797 0.51121497
		 0.60815501 0.53058201 0.64851898 0.51776099 0.64129901 0.495401 0.68799299 0.48417801
		 0.694282 0.50388497 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998
		 0.62255698 0.69637197 0.63816899 0.68434 0.609712 0.658557 0.68147498 0.72371203
		 0.67420399 0.73255998 0.65184897 0.66894501 0.69097197 0.71272302 0.69901901 0.70456398
		 0.66212499 0.65384901 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398
		 0.67958403 0.75030202 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159
		 0.709773 0.64167202 0.75165403 0.52244002 0.73714203 0.46809 0.72608399 0.46415401
		 0.74320859 0.52505672 0.75822997 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898
		 0.71015197 0.57198602 0.66263402 0.57925498 0.66354001 0.59908402 0.70771301 0.55317098
		 0.660083 0.560305 0.70397902 0.53557497 0.65644997 0.54351002 0.659244 0.80057198
		 0.68692702 0.80496401 0.69194102 0.76880097 0.67273301 0.75392801 0.66895401 0.83796299
		 0.64602602 0.84729803 0.61720401 0.56577402 0.61997002 0.58558398 0.621387 0.59997499
		 0.66297001 0.624327 0.62158799 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001
		 0.619008 0.64908397 0.62129599 0.63988101 0.61717898 0.74692702 0.60069299 0.781793
		 0.62854099 0.79232401 0.64025003 0.74519801 0.59942001 0.81702501 0.61655903 0.83938402
		 0.71140701 0.53491002 0.72365201 0.53111607 0.71005899 0.467933 0.70192498 0.47639501
		 0.72852063 0.54919553 0.71505499 0.55338103 0.60177797 0.51121497 0.64129901 0.495401
		 0.64851898 0.51776099 0.60815501 0.53058201 0.68799299 0.48417801 0.694282 0.50388497
		 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998 0.609712 0.658557
		 0.63816899 0.68434 0.62255698 0.69637197 0.68147498 0.72371203 0.67420399 0.73255998
		 0.65184897 0.66894501 0.69097197 0.71272302 0.66212499 0.65384901 0.69901901 0.70456398
		 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398 0.67958403 0.75030202
		 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159 0.709773 0.64167202 0.75165403
		 0.52244002 0.74320859 0.52505672 0.72608399 0.46415401 0.73714203 0.46809 0.75822997
		 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898 0.66354001 0.59908402 0.66263402
		 0.57925498 0.71015197 0.57198602 0.660083 0.560305 0.70771301 0.55317098 0.65644997
		 0.54351002 0.70397902 0.53557497 0.659244 0.80057198 0.67273301 0.75392801 0.69194102
		 0.76880097 0.68692702 0.80496401 0.66895401 0.83796299 0.64602602 0.84729803 0.61720401
		 0.56577402 0.61997002 0.58558398 0.621387 0.59997499 0.66297001 0.624327 0.62158799
		 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001 0.619008 0.64908397 0.62129599
		 0.63988101 0.61717898 0.74692702 0.64025003 0.74519801 0.62854099 0.79232401 0.60069299
		 0.781793 0.61655903 0.83938402 0.59942001 0.81702501 0.71140701 0.53491002 0.70192498
		 0.47639501 0.71005899 0.467933 0.72365201 0.53111607 0.72852063 0.54919553 0.71505499
		 0.55338103;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  1.844262 12.55194855 -1.83371937 1.844262 12.86008263 -2.11247349
		 0.97860003 12.90678596 -2.086328506 0.97860003 12.55272579 -1.75921142 -2.2234334e-16 12.63128662 -1.77762842
		 0.38923499 12.50159073 -1.64902437 -1.8112132e-16 12.62954426 -1.77548635 1.081100941 12.17082024 -1.74965644
		 0.91156799 11.49947071 -0.77653742 1.081100941 11.87692451 -1.9554354 0.91156799 11.19211483 -0.99174547
		 0.741216 11.065296173 -1.20235443 0.38923499 10.97480679 -1.073120356 0.97860003 11.78714943 -2.2332654
		 0.39116701 11.6789999 -2.1443305 0.38923499 11.65025139 -0.60017943 0.38923499 11.38294125 -0.61013341
		 0.741216 11.74073982 -0.72939229 -1.8013604e-16 11.74473 -2.3032794 -3.5969717e-16 11.74328232 -2.30099034
		 0.38923499 11.075605392 -0.82534146 -2.3497848e-16 12.27896976 -3.23351645 -2.896382e-16 12.75686646 -3.24418449
		 0.97860003 12.67914581 -3.13322043 -2.6418246e-16 13.080896378 -3.017300367 0.97860003 13.0031967163 -2.90631533
		 -1.8715332e-16 13.24276543 -2.68268633 0.97860003 13.15571976 -2.58285236 -1.8723784e-16 12.93490505 -2.07572341
		 1.844262 11.99925041 -2.71521544 1.844262 12.28722286 -3.034961462 1.79222405 12.24656677 -2.49937725
		 1.844262 11.83628941 -2.30344725 1.844262 11.92606544 -2.025617361 1.844262 12.891119 -2.74625349
		 1.844262 12.56706905 -2.97315836 0.97860003 12.27361488 -3.13681149 0.97860003 11.9639492 -2.74751329
		 -1.7197285e-16 11.93158722 -2.77405739 1.844262 13.051013947 -2.52506042 1.844262 12.21996021 -1.8198384
		 1.79222405 12.55554008 -2.28303528 0.38982278 12.25132084 -1.79971921 -1.6118165e-16 12.35313225 -1.93938315
		 0.39076158 11.85161209 -2.04039526 -3.3813635e-16 11.93307686 -2.1884532 -1.844262 12.55194855 -1.83371937
		 -1.844262 12.86008263 -2.11247349 -0.97860003 12.90678596 -2.086328506 -0.97860003 12.55272579 -1.75921142
		 -0.38923499 12.50159073 -1.64902437 -1.081100941 12.17082024 -1.74965644 -0.91156799 11.49947071 -0.77653742
		 -1.081100941 11.87692451 -1.9554354 -0.91156799 11.19211483 -0.99174547 -0.741216 11.065296173 -1.20235443
		 -0.38923499 10.97480679 -1.073120356 -0.97860003 11.78714943 -2.2332654 -0.39116701 11.6789999 -2.1443305
		 -0.38923499 11.65025139 -0.60017943 -0.38923499 11.38294125 -0.61013341 -0.741216 11.74073982 -0.72939229
		 -0.38923499 11.075605392 -0.82534146 -0.97860003 12.67914581 -3.13322043 -0.97860003 13.0031967163 -2.90631533
		 -0.97860003 13.15571976 -2.58285236 -1.844262 11.99925041 -2.71521544 -1.844262 12.28722286 -3.034961462
		 -1.79222405 12.24656677 -2.49937725 -1.844262 11.83628941 -2.30344725 -1.844262 11.92606544 -2.025617361
		 -1.844262 12.891119 -2.74625349 -1.844262 12.56706905 -2.97315836 -0.97860003 12.27361488 -3.13681149
		 -0.97860003 11.9639492 -2.74751329 -1.844262 13.051013947 -2.52506042 -1.844262 12.21996021 -1.8198384
		 -1.79222405 12.55554008 -2.28303528 -0.38982278 12.25132084 -1.79971921 -0.39076158 11.85161209 -2.04039526;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 1 2 3 1 3 0 0 4 3 1 4 5 1 5 3 1
		 4 6 1 6 5 0 3 7 0 8 7 1 9 7 0 8 10 0 10 9 0 10 11 0 12 11 0 13 11 0 12 14 0 14 13 1
		 15 16 0 16 8 0 8 17 0 17 15 0 3 17 0 5 15 0 18 13 1 14 18 1 14 19 0 19 18 1 12 20 0
		 20 16 0 5 42 0 6 43 0 21 22 1 22 23 0 22 24 1 24 25 1 25 23 1 24 26 1 26 27 0 27 25 1
		 26 28 1 28 2 1 2 27 1 28 4 1 29 30 0 31 29 1 32 29 0 31 33 1 33 32 0 34 35 0 35 23 1
		 35 30 0 30 36 0 36 23 1 37 36 1 37 38 1 18 38 1 1 39 0 39 27 0 39 34 0 34 25 1 40 0 0
		 7 40 0 33 40 0 9 33 0 9 13 0 29 37 1 32 13 0 13 37 1 10 20 0 1 41 1 41 34 1 41 31 1
		 31 35 1 40 41 1 36 21 0 38 21 1 42 44 0 43 45 0 16 42 1 42 43 1 44 14 0 45 19 0 20 44 1
		 44 45 1 46 47 0 47 48 1 48 49 1 49 46 0 4 49 1 28 48 1 4 50 1 50 49 1 6 50 0 49 51 0
		 51 76 0 76 46 0 52 51 1 49 61 0 52 61 0 53 51 0 52 54 0 54 53 0 54 55 0 57 55 0 53 57 0
		 56 55 0 54 62 0 56 62 0 56 58 0 58 57 1 59 60 0 60 52 0 61 59 0 50 59 0 18 57 1 58 18 1
		 58 19 0 62 79 1 79 58 0 79 45 1 22 63 0 73 63 1 73 21 0 24 64 1 64 63 1 26 65 0 65 64 1
		 48 65 1 68 66 1 66 67 0 72 67 0 68 72 1 69 66 0 68 70 1 70 69 0 71 72 0 72 63 1 71 64 1
		 67 73 0 74 73 1 66 74 1 74 38 1 57 74 1 47 75 0 75 65 0 75 71 0 70 76 0 53 70 0 69 57 0
		 62 60 0 47 77 1 77 71 1 77 68 1 76 77 1 50 78 0 60 78 1 78 43 1 78 79 0;
	setAttr -s 82 -ch 320 ".fc[0:81]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -3 -43 44
		mu 0 4 4 3 2 5
		f 3 -5 5 6
		mu 0 3 3 4 6
		f 3 -6 7 8
		mu 0 3 6 4 7
		f 4 -4 9 63 62
		mu 0 4 8 9 10 11
		f 4 10 -10 23 -22
		mu 0 4 12 10 9 13
		f 4 11 -11 12 13
		mu 0 4 14 10 12 15
		f 4 -14 14 -17 -67
		mu 0 4 14 15 16 17
		f 4 15 -15 70 -30
		mu 0 4 18 16 15 19
		f 4 16 -16 17 18
		mu 0 4 17 16 18 20
		f 4 19 20 21 22
		mu 0 4 21 22 12 13
		f 4 -23 -24 -7 24
		mu 0 4 21 13 9 23
		f 3 25 -19 26
		mu 0 3 24 17 20
		f 3 -27 27 28
		mu 0 3 24 20 25
		f 4 -18 29 84 82
		mu 0 4 26 27 28 29
		f 4 -28 -83 85 83
		mu 0 4 30 26 29 31
		f 4 33 34 -55 76
		mu 0 4 32 33 34 35
		f 4 -35 35 36 37
		mu 0 4 34 33 36 37
		f 4 -37 38 39 40
		mu 0 4 37 36 38 39
		f 4 -40 41 42 43
		mu 0 4 39 38 5 2
		f 4 46 45 -53 -75
		mu 0 4 40 41 42 43
		f 4 47 -47 48 49
		mu 0 4 44 41 40 45
		f 4 50 51 -38 -62
		mu 0 4 46 47 34 37
		f 4 -52 52 53 54
		mu 0 4 34 47 48 35
		f 4 55 -54 -46 67
		mu 0 4 49 35 48 50
		f 4 -56 56 77 -77
		mu 0 4 35 49 51 32
		f 4 57 -57 -70 -26
		mu 0 4 24 51 49 17
		f 4 -2 58 59 -44
		mu 0 4 2 1 52 39
		f 4 -60 60 61 -41
		mu 0 4 39 52 46 37
		f 4 64 -64 -12 65
		mu 0 4 53 11 10 14
		f 4 -66 66 -69 -50
		mu 0 4 53 14 17 54
		f 4 -68 -48 68 69
		mu 0 4 49 50 54 17
		f 4 -31 -71 -13 -21
		mu 0 4 22 19 15 12
		f 4 -59 71 72 -61
		mu 0 4 55 56 57 58
		f 4 -73 73 74 -51
		mu 0 4 58 57 40 43
		f 4 -72 -1 -63 75
		mu 0 4 57 56 59 60
		f 4 -74 -76 -65 -49
		mu 0 4 40 57 60 45
		f 4 31 -81 -20 -25
		mu 0 4 61 62 63 64
		f 4 -82 -32 -9 32
		mu 0 4 65 62 61 66
		f 4 -85 30 80 78
		mu 0 4 29 28 63 62
		f 4 -86 -79 81 79
		mu 0 4 31 29 62 65
		f 4 -90 -89 -88 -87
		mu 0 4 67 68 69 70
		f 4 -45 91 88 -91
		mu 0 4 71 72 69 68
		f 3 -94 -93 90
		mu 0 3 68 73 71
		f 3 -95 -8 92
		mu 0 3 73 74 71
		f 4 -98 -97 -96 89
		mu 0 4 75 76 77 78
		f 4 100 -100 95 -99
		mu 0 4 79 80 78 77
		f 4 -104 -103 98 -102
		mu 0 4 81 82 79 77
		f 4 106 105 -105 103
		mu 0 4 81 83 84 82
		f 4 109 -109 104 -108
		mu 0 4 85 86 82 84
		f 4 -112 -111 107 -106
		mu 0 4 83 87 85 84
		f 4 -115 -101 -114 -113
		mu 0 4 88 80 79 89
		f 4 -116 93 99 114
		mu 0 4 88 90 78 80
		f 3 -118 111 -117
		mu 0 3 91 87 83
		f 3 -29 -119 117
		mu 0 3 91 92 87
		f 4 -121 -120 -110 110
		mu 0 4 93 94 95 96
		f 4 -84 -122 120 118
		mu 0 4 97 98 94 93
		f 4 -125 123 -123 -34
		mu 0 4 99 100 101 102
		f 4 -127 -126 -36 122
		mu 0 4 101 103 104 102
		f 4 -129 -128 -39 125
		mu 0 4 103 105 106 104
		f 4 -130 -92 -42 127
		mu 0 4 105 69 72 106
		f 4 133 132 -132 -131
		mu 0 4 107 108 109 110
		f 4 -137 -136 130 -135
		mu 0 4 111 112 107 110
		f 4 139 126 -139 -138
		mu 0 4 113 103 101 114
		f 4 -124 -141 -133 138
		mu 0 4 101 100 115 114
		f 4 -143 131 140 -142
		mu 0 4 116 117 115 100
		f 4 124 -78 -144 141
		mu 0 4 100 99 118 116
		f 4 116 144 143 -58
		mu 0 4 91 83 116 118
		f 4 129 -147 -146 87
		mu 0 4 69 105 119 70
		f 4 128 -140 -148 146
		mu 0 4 105 103 113 119
		f 4 -150 101 96 -149
		mu 0 4 120 81 77 76
		f 4 136 150 -107 149
		mu 0 4 120 121 83 81
		f 4 -145 -151 134 142
		mu 0 4 116 83 121 117
		f 4 113 102 108 151
		mu 0 4 89 79 82 86
		f 4 147 -154 -153 145
		mu 0 4 122 123 124 125
		f 4 137 -134 -155 153
		mu 0 4 123 108 107 124
		f 4 -156 97 86 152
		mu 0 4 124 126 127 125
		f 4 135 148 155 154
		mu 0 4 107 112 126 124
		f 4 115 112 157 -157
		mu 0 4 128 129 130 131
		f 4 -33 94 156 158
		mu 0 4 132 133 128 131
		f 4 -160 -158 -152 119
		mu 0 4 94 131 130 95
		f 4 -80 -159 159 121
		mu 0 4 98 132 131 94;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface18" -p "Body";
	rename -uid "1FFAA53D-4A4D-3755-CD20-0EAD5C25D90A";
createNode mesh -n "polySurfaceShape18" -p "polySurface18";
	rename -uid "4CEADBE2-443B-2E29-0773-55806C8A874B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape18Orig" -p "polySurface18";
	rename -uid "78045E49-4138-277C-83E7-809B5D13C518";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0.60177797 0.51121497
		 0.60815501 0.53058201 0.64851898 0.51776099 0.64129901 0.495401 0.68799299 0.48417801
		 0.694282 0.50388497 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998
		 0.62255698 0.69637197 0.63816899 0.68434 0.609712 0.658557 0.68147498 0.72371203
		 0.67420399 0.73255998 0.65184897 0.66894501 0.69097197 0.71272302 0.69901901 0.70456398
		 0.66212499 0.65384901 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398
		 0.67958403 0.75030202 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159
		 0.709773 0.64167202 0.75165403 0.52244002 0.73714203 0.46809 0.72608399 0.46415401
		 0.74320859 0.52505672 0.75822997 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898
		 0.71015197 0.57198602 0.66263402 0.57925498 0.66354001 0.59908402 0.70771301 0.55317098
		 0.660083 0.560305 0.70397902 0.53557497 0.65644997 0.54351002 0.659244 0.80057198
		 0.68692702 0.80496401 0.69194102 0.76880097 0.67273301 0.75392801 0.66895401 0.83796299
		 0.64602602 0.84729803 0.61720401 0.56577402 0.61997002 0.58558398 0.621387 0.59997499
		 0.66297001 0.624327 0.62158799 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001
		 0.619008 0.64908397 0.62129599 0.63988101 0.61717898 0.74692702 0.60069299 0.781793
		 0.62854099 0.79232401 0.64025003 0.74519801 0.59942001 0.81702501 0.61655903 0.83938402
		 0.71140701 0.53491002 0.72365201 0.53111607 0.71005899 0.467933 0.70192498 0.47639501
		 0.72852063 0.54919553 0.71505499 0.55338103 0.60177797 0.51121497 0.64129901 0.495401
		 0.64851898 0.51776099 0.60815501 0.53058201 0.68799299 0.48417801 0.694282 0.50388497
		 0.66718602 0.48136601 0.68795401 0.48404899 0.59746301 0.66676998 0.609712 0.658557
		 0.63816899 0.68434 0.62255698 0.69637197 0.68147498 0.72371203 0.67420399 0.73255998
		 0.65184897 0.66894501 0.69097197 0.71272302 0.66212499 0.65384901 0.69901901 0.70456398
		 0.71692699 0.70931 0.71319199 0.72687799 0.69240499 0.65115398 0.67958403 0.75030202
		 0.69706702 0.744757 0.616422 0.72525501 0.70974302 0.64159 0.709773 0.64167202 0.75165403
		 0.52244002 0.74320859 0.52505672 0.72608399 0.46415401 0.73714203 0.46809 0.75822997
		 0.53996098 0.74898398 0.54283488 0.71097499 0.59457898 0.66354001 0.59908402 0.66263402
		 0.57925498 0.71015197 0.57198602 0.660083 0.560305 0.70771301 0.55317098 0.65644997
		 0.54351002 0.70397902 0.53557497 0.659244 0.80057198 0.67273301 0.75392801 0.69194102
		 0.76880097 0.68692702 0.80496401 0.66895401 0.83796299 0.64602602 0.84729803 0.61720401
		 0.56577402 0.61997002 0.58558398 0.621387 0.59997499 0.66297001 0.624327 0.62158799
		 0.62073702 0.70987898 0.62097102 0.61472303 0.55215001 0.619008 0.64908397 0.62129599
		 0.63988101 0.61717898 0.74692702 0.64025003 0.74519801 0.62854099 0.79232401 0.60069299
		 0.781793 0.61655903 0.83938402 0.59942001 0.81702501 0.71140701 0.53491002 0.70192498
		 0.47639501 0.71005899 0.467933 0.72365201 0.53111607 0.72852063 0.54919553 0.71505499
		 0.55338103;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  1.844262 11.38090324 -0.16043603 1.844262 11.68903732 -0.43919003
		 0.97860003 11.73574066 -0.41304505 0.97860003 11.38167953 -0.085928082 -1.8215376e-16 11.46024132 -0.10434508
		 0.38923499 11.33054543 0.024258971 -3.2077736e-16 11.458498 -0.10220301 1.081100941 10.99977493 -0.0763731
		 0.91156799 10.32842445 0.89674592 1.081100941 10.70587921 -0.28215206 0.91156799 10.021068573 0.68153787
		 0.741216 9.89425087 0.47092891 0.38923499 9.80376053 0.60016298 0.97860003 10.61610413 -0.55998206
		 0.39116701 10.50795364 -0.47104704 0.38923499 10.47920609 1.073103905 0.38923499 10.21189499 1.063149929
		 0.741216 10.56969452 0.94389105 -2.1377567e-16 10.57368469 -0.62999606 -9.2659905e-17 10.57223701 -0.627707
		 0.38923499 9.90456009 0.84794188 -2.2708755e-16 11.10792351 -1.56023312 -1.5600421e-16 11.58582115 -1.57090104
		 0.97860003 11.50810051 -1.4599371 -1.3045491e-16 11.90985107 -1.34401703 0.97860003 11.83215141 -1.23303199
		 -2.0028191e-16 12.071720123 -1.0094029903 0.97860003 11.98467445 -0.90956903 -2.1113012e-16 11.7638588 -0.40244007
		 1.844262 10.82820511 -1.041932106 1.844262 11.11617661 -1.36167812 1.79222405 11.075521469 -0.82609403
		 1.844262 10.66524315 -0.63016403 1.844262 10.75502014 -0.35233402 1.844262 11.7200737 -1.072970033
		 1.844262 11.3960228 -1.29987502 0.97860003 11.10256958 -1.46352804 0.97860003 10.7929039 -1.074230075
		 -2.5654508e-16 10.76054192 -1.10077405 1.844262 11.87996864 -0.85177708 1.844262 11.048913956 -0.14655507
		 1.79222405 11.38449478 -0.60975206 0.38982278 11.080274582 -0.12643588 -2.6442383e-16 11.18208694 -0.26609981
		 0.39076158 10.68056679 -0.36711192 -5.5080971e-17 10.76203156 -0.51516974 -1.844262 11.38090324 -0.16043603
		 -1.844262 11.68903732 -0.43919003 -0.97860003 11.73574066 -0.41304505 -0.97860003 11.38167953 -0.085928082
		 -0.38923499 11.33054543 0.024258971 -1.081100941 10.99977493 -0.0763731 -0.91156799 10.32842445 0.89674592
		 -1.081100941 10.70587921 -0.28215206 -0.91156799 10.021068573 0.68153787 -0.741216 9.89425087 0.47092891
		 -0.38923499 9.80376053 0.60016298 -0.97860003 10.61610413 -0.55998206 -0.39116701 10.50795364 -0.47104704
		 -0.38923499 10.47920609 1.073103905 -0.38923499 10.21189499 1.063149929 -0.741216 10.56969452 0.94389105
		 -0.38923499 9.90456009 0.84794188 -0.97860003 11.50810051 -1.4599371 -0.97860003 11.83215141 -1.23303199
		 -0.97860003 11.98467445 -0.90956903 -1.844262 10.82820511 -1.041932106 -1.844262 11.11617661 -1.36167812
		 -1.79222405 11.075521469 -0.82609403 -1.844262 10.66524315 -0.63016403 -1.844262 10.75502014 -0.35233402
		 -1.844262 11.7200737 -1.072970033 -1.844262 11.3960228 -1.29987502 -0.97860003 11.10256958 -1.46352804
		 -0.97860003 10.7929039 -1.074230075 -1.844262 11.87996864 -0.85177708 -1.844262 11.048913956 -0.14655507
		 -1.79222405 11.38449478 -0.60975206 -0.38982278 11.080274582 -0.12643588 -0.39076158 10.68056679 -0.36711192;
	setAttr -s 160 ".ed[0:159]"  0 1 0 1 2 1 2 3 1 3 0 0 4 3 1 4 5 1 5 3 1
		 4 6 1 6 5 0 3 7 0 8 7 1 9 7 0 8 10 0 10 9 0 10 11 0 12 11 0 13 11 0 12 14 0 14 13 1
		 15 16 0 16 8 0 8 17 0 17 15 0 3 17 0 5 15 0 18 13 1 14 18 1 14 19 0 19 18 1 12 20 0
		 20 16 0 5 42 0 6 43 0 21 22 1 22 23 0 22 24 1 24 25 1 25 23 1 24 26 1 26 27 0 27 25 1
		 26 28 1 28 2 1 2 27 1 28 4 1 29 30 0 31 29 1 32 29 0 31 33 1 33 32 0 34 35 0 35 23 1
		 35 30 0 30 36 0 36 23 1 37 36 1 37 38 1 18 38 1 1 39 0 39 27 0 39 34 0 34 25 1 40 0 0
		 7 40 0 33 40 0 9 33 0 9 13 0 29 37 1 32 13 0 13 37 1 10 20 0 1 41 1 41 34 1 41 31 1
		 31 35 1 40 41 1 36 21 0 38 21 1 42 44 0 43 45 0 16 42 1 42 43 1 44 14 0 45 19 0 20 44 1
		 44 45 1 46 47 0 47 48 1 48 49 1 49 46 0 4 49 1 28 48 1 4 50 1 50 49 1 6 50 0 49 51 0
		 51 76 0 76 46 0 52 51 1 49 61 0 52 61 0 53 51 0 52 54 0 54 53 0 54 55 0 57 55 0 53 57 0
		 56 55 0 54 62 0 56 62 0 56 58 0 58 57 1 59 60 0 60 52 0 61 59 0 50 59 0 18 57 1 58 18 1
		 58 19 0 62 79 1 79 58 0 79 45 1 22 63 0 73 63 1 73 21 0 24 64 1 64 63 1 26 65 0 65 64 1
		 48 65 1 68 66 1 66 67 0 72 67 0 68 72 1 69 66 0 68 70 1 70 69 0 71 72 0 72 63 1 71 64 1
		 67 73 0 74 73 1 66 74 1 74 38 1 57 74 1 47 75 0 75 65 0 75 71 0 70 76 0 53 70 0 69 57 0
		 62 60 0 47 77 1 77 71 1 77 68 1 76 77 1 50 78 0 60 78 1 78 43 1 78 79 0;
	setAttr -s 82 -ch 320 ".fc[0:81]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -3 -43 44
		mu 0 4 4 3 2 5
		f 3 -5 5 6
		mu 0 3 3 4 6
		f 3 -6 7 8
		mu 0 3 6 4 7
		f 4 -4 9 63 62
		mu 0 4 8 9 10 11
		f 4 10 -10 23 -22
		mu 0 4 12 10 9 13
		f 4 11 -11 12 13
		mu 0 4 14 10 12 15
		f 4 -14 14 -17 -67
		mu 0 4 14 15 16 17
		f 4 15 -15 70 -30
		mu 0 4 18 16 15 19
		f 4 16 -16 17 18
		mu 0 4 17 16 18 20
		f 4 19 20 21 22
		mu 0 4 21 22 12 13
		f 4 -23 -24 -7 24
		mu 0 4 21 13 9 23
		f 3 25 -19 26
		mu 0 3 24 17 20
		f 3 -27 27 28
		mu 0 3 24 20 25
		f 4 -18 29 84 82
		mu 0 4 26 27 28 29
		f 4 -28 -83 85 83
		mu 0 4 30 26 29 31
		f 4 33 34 -55 76
		mu 0 4 32 33 34 35
		f 4 -35 35 36 37
		mu 0 4 34 33 36 37
		f 4 -37 38 39 40
		mu 0 4 37 36 38 39
		f 4 -40 41 42 43
		mu 0 4 39 38 5 2
		f 4 46 45 -53 -75
		mu 0 4 40 41 42 43
		f 4 47 -47 48 49
		mu 0 4 44 41 40 45
		f 4 50 51 -38 -62
		mu 0 4 46 47 34 37
		f 4 -52 52 53 54
		mu 0 4 34 47 48 35
		f 4 55 -54 -46 67
		mu 0 4 49 35 48 50
		f 4 -56 56 77 -77
		mu 0 4 35 49 51 32
		f 4 57 -57 -70 -26
		mu 0 4 24 51 49 17
		f 4 -2 58 59 -44
		mu 0 4 2 1 52 39
		f 4 -60 60 61 -41
		mu 0 4 39 52 46 37
		f 4 64 -64 -12 65
		mu 0 4 53 11 10 14
		f 4 -66 66 -69 -50
		mu 0 4 53 14 17 54
		f 4 -68 -48 68 69
		mu 0 4 49 50 54 17
		f 4 -31 -71 -13 -21
		mu 0 4 22 19 15 12
		f 4 -59 71 72 -61
		mu 0 4 55 56 57 58
		f 4 -73 73 74 -51
		mu 0 4 58 57 40 43
		f 4 -72 -1 -63 75
		mu 0 4 57 56 59 60
		f 4 -74 -76 -65 -49
		mu 0 4 40 57 60 45
		f 4 31 -81 -20 -25
		mu 0 4 61 62 63 64
		f 4 -82 -32 -9 32
		mu 0 4 65 62 61 66
		f 4 -85 30 80 78
		mu 0 4 29 28 63 62
		f 4 -86 -79 81 79
		mu 0 4 31 29 62 65
		f 4 -90 -89 -88 -87
		mu 0 4 67 68 69 70
		f 4 -45 91 88 -91
		mu 0 4 71 72 69 68
		f 3 -94 -93 90
		mu 0 3 68 73 71
		f 3 -95 -8 92
		mu 0 3 73 74 71
		f 4 -98 -97 -96 89
		mu 0 4 75 76 77 78
		f 4 100 -100 95 -99
		mu 0 4 79 80 78 77
		f 4 -104 -103 98 -102
		mu 0 4 81 82 79 77
		f 4 106 105 -105 103
		mu 0 4 81 83 84 82
		f 4 109 -109 104 -108
		mu 0 4 85 86 82 84
		f 4 -112 -111 107 -106
		mu 0 4 83 87 85 84
		f 4 -115 -101 -114 -113
		mu 0 4 88 80 79 89
		f 4 -116 93 99 114
		mu 0 4 88 90 78 80
		f 3 -118 111 -117
		mu 0 3 91 87 83
		f 3 -29 -119 117
		mu 0 3 91 92 87
		f 4 -121 -120 -110 110
		mu 0 4 93 94 95 96
		f 4 -84 -122 120 118
		mu 0 4 97 98 94 93
		f 4 -125 123 -123 -34
		mu 0 4 99 100 101 102
		f 4 -127 -126 -36 122
		mu 0 4 101 103 104 102
		f 4 -129 -128 -39 125
		mu 0 4 103 105 106 104
		f 4 -130 -92 -42 127
		mu 0 4 105 69 72 106
		f 4 133 132 -132 -131
		mu 0 4 107 108 109 110
		f 4 -137 -136 130 -135
		mu 0 4 111 112 107 110
		f 4 139 126 -139 -138
		mu 0 4 113 103 101 114
		f 4 -124 -141 -133 138
		mu 0 4 101 100 115 114
		f 4 -143 131 140 -142
		mu 0 4 116 117 115 100
		f 4 124 -78 -144 141
		mu 0 4 100 99 118 116
		f 4 116 144 143 -58
		mu 0 4 91 83 116 118
		f 4 129 -147 -146 87
		mu 0 4 69 105 119 70
		f 4 128 -140 -148 146
		mu 0 4 105 103 113 119
		f 4 -150 101 96 -149
		mu 0 4 120 81 77 76
		f 4 136 150 -107 149
		mu 0 4 120 121 83 81
		f 4 -145 -151 134 142
		mu 0 4 116 83 121 117
		f 4 113 102 108 151
		mu 0 4 89 79 82 86
		f 4 147 -154 -153 145
		mu 0 4 122 123 124 125
		f 4 137 -134 -155 153
		mu 0 4 123 108 107 124
		f 4 -156 97 86 152
		mu 0 4 124 126 127 125
		f 4 135 148 155 154
		mu 0 4 107 112 126 124
		f 4 115 112 157 -157
		mu 0 4 128 129 130 131
		f 4 -33 94 156 158
		mu 0 4 132 133 128 131
		f 4 -160 -158 -152 119
		mu 0 4 94 131 130 95
		f 4 -80 -159 159 121
		mu 0 4 98 132 131 94;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Body_parentConstraint1" -p "Body";
	rename -uid "2855848E-4379-637D-7507-F29833F6D285";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_JntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 11.740900039672852 -2.3391734133873071e-15 
		0.74996256828308105 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Front_Arm_Geo" -p "SpiderBot_Geo";
	rename -uid "58D95AC6-43D0-2821-5081-669286F262EF";
createNode transform -n "Left_Front_Upper_Arm_Geo" -p "Left_Front_Arm_Geo";
	rename -uid "5743D383-4D47-562F-F192-C2AEE555B874";
createNode transform -n "Left_Front_Arm_Knee_Geo" -p "Left_Front_Upper_Arm_Geo";
	rename -uid "BB7138EF-4D4B-DC3D-DEC7-0FA1AF9F4F62";
createNode mesh -n "Left_Front_Arm_Knee_GeoShape" -p "Left_Front_Arm_Knee_Geo";
	rename -uid "AB5B7645-4C6D-7C3E-73A5-9B8B0B05A24B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Knee_GeoShapeOrig" -p "Left_Front_Arm_Knee_Geo";
	rename -uid "5672E944-4FBB-F77D-5DDF-E59579B67BEB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.93326402 0.55445099
		 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202 0.922194 0.56268197
		 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199 0.91118097 0.58714199
		 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099 0.93326402 0.55445099
		 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802 0.91465998 0.53527802
		 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202 0.90329701 0.54415202
		 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701 0.90489799 0.55673701
		 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199 0.894777 0.57577199
		 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202 0.90329701 0.54415202
		 0.91465998 0.53527802;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  4.55380821 11.40808105 3.9517169 4.54032612 11.6261034 3.93823504
		 4.44066 11.32322121 3.85553694 4.41728592 11.70092773 3.83216405 4.34483719 11.39831734 3.735039
		 4.33133411 11.61633873 3.7215569 4.15982723 11.38596916 3.43570495 4.19443512 11.62341595 3.47031307
		 4.55282116 11.38596916 3.04271102 4.85217619 11.39831734 3.2277 4.97265196 11.32322121 3.32354498
		 5.068852901 11.40808105 3.436692 5.05535078 11.6261034 3.42319012 4.94929981 11.70092773 3.3001709
		 4.8386941 11.61633873 3.21421909 4.58742905 11.62341595 3.077318907;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 0 0 1 3 0 3 2 1 4 2 0 3 5 0 5 4 1
		 6 4 0 5 7 0 7 6 0 6 8 0 8 9 0 9 4 1 9 10 0 10 2 0 10 11 0 11 0 0 12 11 0 10 13 1
		 13 12 0 9 14 1 14 13 0 8 15 0 15 14 0 15 7 0 5 14 0 3 13 0 1 12 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 11 12 -8
		mu 0 4 6 8 9 4
		f 4 -13 13 14 -5
		mu 0 4 4 10 11 0
		f 4 -15 15 16 -2
		mu 0 4 0 12 13 1
		f 4 -1 -17 -18 -28
		mu 0 4 2 1 14 15
		f 4 17 -16 18 19
		mu 0 4 16 17 18 19
		f 4 -19 -14 20 21
		mu 0 4 20 21 22 23
		f 4 -21 -12 22 23
		mu 0 4 24 25 26 27
		f 4 24 -9 25 -24
		mu 0 4 28 7 5 29
		f 4 -26 -6 26 -22
		mu 0 4 30 5 3 31
		f 4 -27 -3 27 -20
		mu 0 4 32 3 2 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Thigh_Geo" -p "Left_Front_Upper_Arm_Geo";
	rename -uid "739EAA09-4CC3-EBE4-1BD3-F5BED05ECE58";
createNode mesh -n "Left_Front_Arm_Thigh_GeoShape" -p "Left_Front_Arm_Thigh_Geo";
	rename -uid "5E3046DA-405B-3BE0-C1C0-73A749B75A74";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" 0.88565999 0.55092603
		 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499
		 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802
		 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802
		 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701
		 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478
		 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  4.60053301 12.030500412 3.84686399 4.64064312 11.9798069 3.8869741
		 5.0041098595 11.9798069 3.52352691 4.96397877 12.030500412 3.48341799 1.71645606 10.29273033 1.19949901
		 1.73439002 10.032203674 0.96702898 1.96287 9.54542446 1.44591296 1.88800502 10.40585709 1.37106895
		 2.13441896 9.65855026 1.61748302 1.87798798 9.59668541 1.11062706 2.56302905 9.54542446 0.84573299
		 2.73459911 9.6585722 1.01730299 2.22776389 9.59668541 0.76087201 2.31663609 10.29273033 0.59934002
		 2.48818493 10.40585709 0.77088898 2.08416605 10.032203674 0.61727399 2.16705298 9.62610626 1.72489798
		 1.87805104 10.50260353 1.43589604 2.53268409 9.98678112 1.78865397 2.36237407 10.50335979 1.61834395
		 3.027276039 11.11826134 2.28324604 2.84201407 9.62610626 1.04993701 2.90579104 9.98678112 1.41556799
		 3.19015193 10.77545738 2.44612193 2.55301189 10.50260353 0.76093501 2.73546004 10.50335979 1.24523699
		 3.40036201 11.11826134 1.91015995 3.56325889 10.77545738 2.073035955 4.088741779 11.50869274 2.59854007
		 4.23948002 11.23367786 2.74925709 4.33471489 11.6456337 2.84451294 4.54200602 11.29659271 3.051783085
		 4.74652481 11.76653099 3.029230118 4.11679697 11.87564659 3.59984112 4.14634514 11.76653099 3.62940907
		 4.16889906 11.29659271 3.42486906 4.71697807 11.87564659 2.99966097 3.96162891 11.6456337 3.21759892
		 3.86639404 11.23367786 3.12236404 3.71565604 11.50869274 2.97162604;
	setAttr -s 77 ".ed[0:76]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 6 4 0 7 4 0
		 6 8 0 8 7 0 6 9 0 10 6 0 10 11 0 11 8 0 10 12 0 13 10 0 13 14 0 14 11 0 13 15 0 4 13 0
		 7 14 0 8 16 0 16 17 0 17 7 0 16 18 0 18 19 1 19 17 0 20 19 0 11 21 0 21 16 0 21 22 0
		 22 18 1 23 18 0 14 24 0 24 21 0 24 25 0 25 22 1 25 26 0 26 27 1 27 22 0 26 28 0 28 29 1
		 29 27 0 28 30 0 30 31 1 31 29 0 32 31 0 17 14 1 17 24 0 19 25 0 0 33 0 33 34 0 34 1 0
		 35 34 0 34 32 0 32 2 0 32 36 0 36 3 0 30 36 0 36 33 1 37 33 0 12 15 0 5 9 0 15 5 0
		 12 9 0 38 35 0 39 38 1 23 38 0 39 20 0 20 23 1 37 39 0 35 37 1 35 31 0 38 29 1 23 27 1
		 30 37 1 28 39 1 26 20 1;
	setAttr -s 39 -ch 154 ".fc[0:38]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 5 4 61 -10
		mu 0 4 4 5 6 7
		f 4 6 -6 7 8
		mu 0 4 8 5 4 9
		f 4 10 9 -64 -14
		mu 0 4 10 4 7 11
		f 4 -8 -11 11 12
		mu 0 4 9 4 12 13
		f 4 14 13 60 -18
		mu 0 4 14 15 16 17
		f 4 -12 -15 15 16
		mu 0 4 18 19 20 21
		f 4 18 17 62 -5
		mu 0 4 5 22 23 6
		f 4 -16 -19 -7 19
		mu 0 4 24 25 5 8
		f 4 -9 20 21 22
		mu 0 4 8 9 26 27
		f 4 -22 23 24 25
		mu 0 4 27 26 28 29
		f 4 26 -25 -32 -69
		mu 0 4 30 29 28 31
		f 4 -13 27 28 -21
		mu 0 4 32 33 34 35
		f 4 -29 29 30 -24
		mu 0 4 35 34 36 37
		f 4 31 -31 -39 -74
		mu 0 4 38 37 36 39
		f 4 -17 32 33 -28
		mu 0 4 40 41 42 43
		f 4 -34 34 35 -30
		mu 0 4 44 45 46 47
		f 4 -36 36 37 38
		mu 0 4 48 49 50 51
		f 4 -38 39 40 41
		mu 0 4 51 52 53 54
		f 4 -41 42 43 44
		mu 0 4 54 53 55 56
		f 4 45 -44 57 -56
		mu 0 4 57 56 55 58
		f 3 -20 -23 46
		mu 0 3 59 60 61
		f 3 -47 47 -33
		mu 0 3 59 61 62
		f 4 -48 -26 48 -35
		mu 0 4 62 61 63 64
		f 4 -37 -49 -27 -77
		mu 0 4 65 64 63 66
		f 4 -1 49 50 51
		mu 0 4 1 0 67 68
		f 4 52 -51 -60 -71
		mu 0 4 69 70 67 71
		f 4 -2 -52 53 54
		mu 0 4 72 73 74 75
		f 4 -46 -54 -53 71
		mu 0 4 76 75 74 77
		f 4 -3 -55 55 56
		mu 0 4 78 79 57 80
		f 4 -4 -57 58 -50
		mu 0 4 81 82 83 84
		f 4 59 -59 -58 74
		mu 0 4 85 84 83 86
		f 4 -63 -61 63 -62
		mu 0 4 6 87 88 7
		f 4 65 64 70 69
		mu 0 4 89 90 91 92
		f 4 66 -66 67 68
		mu 0 4 93 94 95 30
		f 4 -72 -65 72 -45
		mu 0 4 76 77 96 97
		f 4 -73 -67 73 -42
		mu 0 4 97 96 38 39
		f 4 -75 -43 75 -70
		mu 0 4 85 86 98 99
		f 4 -76 -40 76 -68
		mu 0 4 99 98 65 66;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Front_Upper_Arm_Geo_parentConstraint1" -p "Left_Front_Upper_Arm_Geo";
	rename -uid "65F97D9D-42F2-6866-6302-329C77FF1FA2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Shoulder_IK_Jnt1W0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2671680340227329 -0.76656349173068772 -9.9996151652081284 ;
	setAttr ".tg[0].tor" -type "double3" 89.884074434012462 2.4069722474950441 40.989319893526812 ;
	setAttr ".lr" -type "double3" 1.4618446590783568e-14 7.8714712411911538e-15 1.272221872585407e-14 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-16 0 2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" 1.4618446590783568e-14 7.8714712411911538e-15 1.272221872585407e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Front_Fore_Arm_Geo" -p "Left_Front_Arm_Geo";
	rename -uid "88FA62FD-4F75-714D-3F2B-7198F73CEB38";
createNode transform -n "Left_Front_Arm_Ankle_Geo" -p "Left_Front_Fore_Arm_Geo";
	rename -uid "E0C2DD54-4F42-0C2B-F2C8-14A9EDA1E88C";
createNode mesh -n "Left_Front_Arm_Ankle_GeoShape" -p "Left_Front_Arm_Ankle_Geo";
	rename -uid "94078B45-484C-9F93-B8D7-E0AC05C3A23A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.77148402 0.87109399
		 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601
		 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125
		 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699
		 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402 0.74804699
		 0.92773402 0.74609399 0.92773402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  4.93063116 2.72481298 4.04275322 4.57995176 2.72481298 3.68348408
		 4.81683302 2.72649288 3.45229602 5.16751099 2.72649288 3.81156301 4.875422 2.83890605 4.24071884
		 4.41128111 2.83890605 3.76519489 4.36339998 3.23540711 3.81194091 4.65047121 3.49761295 3.75574493
		 4.8854599 3.49702501 3.5264051 4.90669203 3.23580599 3.28162909 4.87624121 2.84048104 3.31136394
		 5.34038401 2.84048104 3.78688788 5.37083292 3.23580599 3.75715303 4.82754183 3.23540711 4.28746605
		 4.88735104 3.49761295 3.99844193 5.12234116 3.49702501 3.76907992;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 4 5 0 5 1 0
		 6 5 0 7 8 0 8 9 0 9 6 0 6 7 0 9 10 0 10 5 0 10 2 0 10 11 0 11 3 0 12 11 0 11 4 0
		 13 4 0 12 13 0 14 13 0 12 15 0 15 14 0 8 15 0 12 9 0 14 7 0 6 13 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -1 4 5 6
		mu 0 4 1 0 4 5
		f 4 7 -6 -20 -28
		mu 0 4 6 5 4 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 6
		f 4 -11 12 13 -8
		mu 0 4 6 10 11 5
		f 4 -14 14 -2 -7
		mu 0 4 5 11 2 1
		f 4 -3 -15 15 16
		mu 0 4 12 2 11 13
		f 4 17 -16 -13 -26
		mu 0 4 14 13 11 10
		f 4 -4 -17 18 -5
		mu 0 4 0 3 13 4
		f 4 19 -19 -18 20
		mu 0 4 7 4 13 15
		f 4 21 -21 22 23
		mu 0 4 16 7 15 17
		f 4 24 -23 25 -10
		mu 0 4 9 18 14 10
		f 4 26 -12 27 -22
		mu 0 4 16 8 6 7
		f 4 -9 -27 -24 -25
		mu 0 4 9 8 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Ankle_to_Heel_Geo" -p "Left_Front_Fore_Arm_Geo";
	rename -uid "B36E8D36-48AA-2A75-670B-23A8511FADD6";
createNode mesh -n "Left_Front_Arm_Ankle_to_Heel_GeoShape" -p "Left_Front_Arm_Ankle_to_Heel_Geo";
	rename -uid "8F1BAF60-4E6A-BB52-86A4-80A36F0AD37A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.1681838 1.59862494 3.76595211 4.87481403 1.59862494 3.46539998
		 4.87481403 2.78766608 3.46539998 5.1681838 2.78766608 3.76595211 4.57424116 1.59862494 3.75876904
		 4.57424116 2.78485203 3.75876904 4.86760998 1.59862494 4.059320927 4.86760998 2.78485203 4.059320927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 4 6 0 6 7 0 7 5 0 6 0 0 3 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 4 5 6 7
		f 4 7 8 9 -6
		mu 0 4 8 9 10 11
		f 4 10 -4 11 -9
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Heel_Geo" -p "Left_Front_Fore_Arm_Geo";
	rename -uid "FE5D9F4D-4F26-B7FC-EC1A-AAB7502B50B9";
createNode mesh -n "Left_Front_Arm_Heel_GeoShape" -p "Left_Front_Arm_Heel_Geo";
	rename -uid "FA0069AA-4434-8D70-0FEB-CB8EEC807335";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Heel_GeoShapeOrig" -p "Left_Front_Arm_Heel_Geo";
	rename -uid "43415227-401D-74B3-528B-2D8B6FD2D745";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  5.47824907 1.63783205 3.85940099 5.47824907 1.080827951 3.85940099
		 5.160182 1.63783205 3.21600389 5.160182 1.080827951 3.21600389 4.44996309 1.63783205 3.31967998
		 4.44996309 1.080827951 3.31967998 4.32912779 1.63783205 4.027171135 4.32912779 1.080827951 4.027171135
		 4.96463108 1.63783205 4.36073399 4.96463108 1.080806971 4.36073399;
	setAttr -s 17 ".ed[0:16]"  0 1 0 2 0 0 1 3 0 3 2 0 4 2 0 3 5 0 5 4 0
		 6 4 0 5 7 0 7 6 0 8 6 0 7 9 0 9 8 0 0 8 0 9 1 0 5 1 1 2 6 1;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 -10 11 12
		mu 0 4 8 6 7 9
		f 4 13 -13 14 -1
		mu 0 4 10 8 9 11
		f 4 -12 -9 15 -15
		mu 0 4 12 13 14 15
		f 3 -16 -6 -3
		mu 0 3 15 14 16
		f 4 -14 -2 16 -11
		mu 0 4 8 10 0 6
		f 3 -17 -5 -8
		mu 0 3 6 0 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Calf_Geo" -p "Left_Front_Fore_Arm_Geo";
	rename -uid "5BDF8917-4598-C6FB-BFB6-1E81AFB63FE7";
createNode mesh -n "Left_Front_Arm_Calf_GeoShape" -p "Left_Front_Arm_Calf_Geo";
	rename -uid "CB2F8500-442F-0ECE-EB11-D89396DD979C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.52856898 0.97485399
		 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137
		 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501
		 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499
		 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303
		 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899
		 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699
		 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899
		 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698
		 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699
		 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797 0.69657397
		 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999
		 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302
		 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399 0.96858698
		 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413 0.82681203
		 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099 0.57310098
		 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303
		 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898
		 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104
		 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763
		 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401
		 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098
		 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288 0.56166101 0.49178499
		 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201 0.56129599 0.49112499
		 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498
		 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949
		 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699
		 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399
		 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366
		 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502
		 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401
		 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803
		 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398
		 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401
		 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302
		 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101
		 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599
		 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801
		 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999
		 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398
		 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398
		 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801
		 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101
		 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899
		 0.996889 0.58270597 0.99704999 0.51962101 0.69467402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  5.47253704 11.34886265 3.48621106 5.17788601 11.46284962 3.680125
		 5.26881599 11.46211433 3.76511097 5.57617092 11.32618141 3.55849195 4.89839602 4.19596815 4.636549
		 4.7795372 2.39158511 4.30651188 4.71500301 2.26764297 4.4159441 4.72317314 4.18618202 4.85929489
		 5.97758579 4.18618202 3.604882 5.534235 2.26764297 3.59669089 5.42497206 2.39158511 3.66107702
		 4.37394285 3.14750099 4.084774017 4.10232782 4.1257019 3.856251 4.46077824 3.61678791 3.76017594
		 4.48835087 3.15850496 3.96366596 4.97471094 4.1257019 2.98386908 5.20323277 3.14750099 3.25548291
		 5.082126141 3.15850496 3.36989188 4.87863493 3.61678791 3.34231901 4.73442793 11.57118893 3.92500496
		 4.63108778 11.72014236 3.84906912 4.30479002 11.57118893 3.4953661 4.73442793 11.3034811 3.92500496
		 4.30479002 11.3034811 3.4953661 4.38070488 11.72014236 3.59868598 4.62714005 11.57118893 3.17301607
		 4.62714005 11.3034811 3.17301607 4.69738483 11.23502064 2.89065003 4.022422791 11.23502064 3.56561089
		 4.7368021 10.81836033 2.89821005 4.016668797 10.81836033 3.61834192 4.90303802 8.83054256 2.91503191
		 4.033491135 8.83054256 3.78457808 4.9142518 6.62062788 2.91958809 4.73048115 11.72014236 3.24893093
		 5.056777954 11.57118893 3.60265493 5.056777954 11.3034811 3.60265493 4.68522501 11.22743988 4.22841406
		 4.74219799 10.79983807 4.34387207 4.89520502 8.99574947 4.639678 4.69517899 8.65878296 4.45292377
		 5.571383 4.53263998 3.57672 5.75500822 4.19596815 3.77993798 5.58327007 6.5957222 3.58860612
		 5.571383 8.65878296 3.57672 5.75813723 8.99574947 3.77674603 5.46233082 10.79983807 3.623739
		 5.36018705 11.22743988 3.55345201 4.79812098 2.27327108 4.50874186 5.62703323 2.27327108 3.67983007
		 6.088297844 4.35495901 3.69635701 4.81464911 4.35495901 4.97000694 6.19296312 6.59292889 3.78231001
		 4.90060091 6.59292889 5.074649811 6.093213081 8.83161259 3.69041395 4.80872583 8.83161259 4.97492218
		 5.76363802 10.82258129 3.54337311 4.6619792 10.82545757 4.64503193 4.69247103 11.32937336 4.44219398
		 4.89720011 11.46211433 4.13672686 4.98086405 11.72014236 3.49931407 4.69517899 4.53263998 4.45292377
		 4.70706606 6.5957222 4.46481085 5.24109602 2.61676788 3.66049004 4.71116114 9.0010824203 4.86924887
		 4.50949812 8.66418076 4.68371391 4.57453394 10.82965946 4.55656004 4.61970615 11.35047817 4.33906317
		 4.5214262 6.59288692 4.69545317 4.50968599 4.52161503 4.68350506 5.80181599 4.52161503 3.39139605
		 5.81374502 6.59288692 3.40313506 5.80200577 8.66418076 3.39120698 5.98752022 9.0010824203 3.5928061
		 5.675313 10.82606697 3.45578098 4.81221199 11.46284962 4.04577589 4.038046837 6.62062788 3.7957921
		 4.77894783 2.61676788 4.12263584 4.78037596 3.59910607 4.079796791 4.88016796 3.30485392 4.35548401
		 4.84967709 2.6902051 4.19334316 5.19825602 3.59910607 3.66191697 5.47394323 3.30485392 3.76170993
		 5.31180286 2.6902051 3.7312181;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 0 0 2 3 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 1 11 12 0 12 13 1 13 14 0 14 11 1 15 16 0 16 17 1 17 18 0 18 15 1 19 20 0 21 19 1
		 22 19 0 21 23 0 23 22 0 21 24 0 25 21 0 25 26 0 26 23 0 26 27 1 27 28 0 28 23 1 27 29 0
		 29 30 1 30 28 0 29 31 0 31 32 1 32 30 0 31 33 0 25 34 0 35 25 1 35 36 0 36 26 0 28 37 0
		 37 22 0 30 38 1 38 37 0 32 39 1 39 38 0 40 39 0 41 42 0 42 15 1 15 41 1 43 41 0 15 33 0
		 33 43 1 44 43 0 31 44 1 31 45 1 45 44 0 29 46 1 46 45 0 27 47 0 47 46 0 36 47 0 48 49 0
		 49 50 0 50 51 1 51 48 0 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1
		 57 55 0 56 3 0 3 58 1 58 57 0 2 59 0 59 58 0 34 60 0 60 35 0 20 24 0 61 62 0 12 61 1
		 4 61 0 11 4 1 11 5 0 63 17 0 16 10 0 10 63 1 42 10 0 64 65 0 65 55 1 55 64 1 66 64 0
		 57 66 1 67 66 0 58 67 0 65 68 0 68 53 1 68 69 0 69 51 1 69 7 0 7 51 1 6 48 0 6 9 0
		 9 49 0 8 70 0 70 50 1 50 8 1 70 71 0 71 52 1 71 72 0 72 54 1 72 73 0 73 54 1 73 74 0
		 74 56 1 74 0 0 1 75 0 75 59 1 75 67 0 5 10 1 71 43 1 70 41 0 8 42 0 44 72 0 45 73 0
		 46 74 1 47 0 1 36 1 0 36 22 0 22 75 1 40 62 0 65 40 0 64 39 0 66 38 1 67 37 1 18 13 0
		 12 15 1 12 76 0 76 33 1 76 32 0 14 77 0 77 5 1 77 63 0 13 78 0 78 79 0 79 14 1 79 80 0
		 80 77 0 18 81 0 81 78 0 81 82 0 82 79 0 63 83 0 83 82 0 82 17 1 80 83 0 61 69 0 35 19 0
		 60 20 0 34 24 0 76 62 1;
	setAttr ".ed[166:167]" 62 68 1 32 40 1;
	setAttr -s 86 -ch 336 ".fc[0:85]" -type "polyFaces" 
		f 4 0 1 3 2
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 -93 -128
		mu 0 4 8 9 10 11
		f 4 10 11 12 13
		mu 0 4 12 13 14 15
		f 4 14 15 16 17
		mu 0 4 16 17 18 19
		f 4 19 18 83 -24
		mu 0 4 20 21 22 23
		f 4 20 -20 21 22
		mu 0 4 24 21 20 25
		f 4 24 23 -165 -38
		mu 0 4 26 20 23 27
		f 4 -22 -25 25 26
		mu 0 4 25 20 28 29
		f 4 -27 27 28 29
		mu 0 4 25 30 31 32
		f 4 -29 30 31 32
		mu 0 4 33 31 34 35
		f 4 -32 33 34 35
		mu 0 4 36 34 37 38
		f 4 -35 36 -144 144
		mu 0 4 39 37 40 41
		f 4 38 37 81 82
		mu 0 4 42 43 44 45
		f 4 -26 -39 39 40
		mu 0 4 46 47 48 49
		f 4 -23 -30 41 42
		mu 0 4 24 25 50 51
		f 4 -42 -33 43 44
		mu 0 4 51 52 53 54
		f 4 -44 -36 45 46
		mu 0 4 54 55 56 57
		f 3 47 -46 167
		mu 0 3 58 57 59
		f 3 48 49 50
		mu 0 3 60 61 62
		f 4 51 -51 52 53
		mu 0 4 63 60 64 40
		f 4 54 -54 -37 55
		mu 0 4 65 63 40 37
		f 3 -56 56 57
		mu 0 3 66 37 67
		f 4 -57 -34 58 59
		mu 0 4 68 37 34 69
		f 4 -59 -31 60 61
		mu 0 4 70 34 31 71
		f 4 -61 -28 -41 62
		mu 0 4 72 31 73 74
		f 4 63 64 65 66
		mu 0 4 75 76 77 78
		f 4 -66 67 68 69
		mu 0 4 78 77 79 80
		f 4 -69 70 71 72
		mu 0 4 80 79 81 82
		f 4 -72 73 74 75
		mu 0 4 82 81 83 84
		f 4 -75 76 77 78
		mu 0 4 84 83 85 86
		f 4 -78 -4 79 80
		mu 0 4 86 85 87 88
		f 4 85 84 -166 -143
		mu 0 4 13 89 90 41
		f 4 86 -86 -11 87
		mu 0 4 4 91 13 12
		f 3 -88 88 -5
		mu 0 3 4 12 5
		f 4 89 -16 90 91
		mu 0 4 92 93 94 95
		f 4 -91 -15 -50 92
		mu 0 4 96 97 98 99
		f 3 93 94 95
		mu 0 3 100 101 102
		f 4 96 -96 -76 97
		mu 0 4 103 100 102 104
		f 4 98 -98 -79 99
		mu 0 4 105 103 104 106
		f 4 -95 100 101 -73
		mu 0 4 102 101 107 108
		f 4 -102 102 103 -70
		mu 0 4 108 107 109 110
		f 3 -104 104 105
		mu 0 3 110 109 7
		f 4 -67 -106 -7 106
		mu 0 4 111 110 7 6
		f 4 107 108 -64 -107
		mu 0 4 6 112 113 111
		f 3 109 110 111
		mu 0 3 114 115 116
		f 4 -9 -112 -65 -109
		mu 0 4 117 118 119 120
		f 4 -111 112 113 -68
		mu 0 4 121 115 122 123
		f 4 -114 114 115 -71
		mu 0 4 124 125 126 127
		f 3 -116 116 117
		mu 0 3 127 126 128
		f 4 -74 -118 118 119
		mu 0 4 129 127 128 130
		f 4 -77 -120 120 -3
		mu 0 4 3 129 130 0
		f 4 121 122 -80 -2
		mu 0 4 1 131 132 2
		f 4 123 -100 -81 -123
		mu 0 4 133 105 106 134
		f 4 124 -10 -108 -6
		mu 0 4 5 135 136 6
		f 4 125 -55 128 -115
		mu 0 4 137 63 138 126
		f 4 -52 -126 -113 126
		mu 0 4 60 63 139 115
		f 4 -49 -127 -110 127
		mu 0 4 140 60 115 141
		f 4 -117 -129 -58 129
		mu 0 4 128 126 142 143
		f 4 -119 -130 -60 130
		mu 0 4 130 128 144 145
		f 4 -121 -131 -62 131
		mu 0 4 0 130 146 147
		f 4 -1 -132 -63 132
		mu 0 4 1 0 148 149
		f 4 -122 -133 133 134
		mu 0 4 150 1 151 24
		f 4 -21 -134 -40 162
		mu 0 4 21 24 152 153
		f 4 136 135 166 -101
		mu 0 4 101 58 154 107
		f 4 -48 -137 -94 137
		mu 0 4 57 58 101 100
		f 4 -47 -138 -97 138
		mu 0 4 54 57 100 103
		f 4 -45 -139 -99 139
		mu 0 4 51 54 103 105
		f 4 -43 -140 -124 -135
		mu 0 4 24 51 105 155
		f 4 140 -12 141 -18
		mu 0 4 156 14 13 157
		f 4 -142 142 143 -53
		mu 0 4 158 13 41 40
		f 4 -89 -14 145 146
		mu 0 4 5 12 15 159
		f 4 -125 -147 147 -92
		mu 0 4 160 5 161 92
		f 4 -13 148 149 150
		mu 0 4 15 14 162 163
		f 4 -146 -151 151 152
		mu 0 4 164 15 163 165
		f 4 -141 153 154 -149
		mu 0 4 14 166 167 162
		f 4 -155 155 156 -150
		mu 0 4 162 168 169 163
		f 4 -152 -157 -159 -161
		mu 0 4 165 163 170 171
		f 4 -90 157 158 159
		mu 0 4 172 92 173 174
		f 4 -17 -160 -156 -154
		mu 0 4 175 176 177 178
		f 4 -148 -153 160 -158
		mu 0 4 92 179 165 180
		f 4 161 -103 -167 -85
		mu 0 4 181 109 107 182
		f 4 -105 -162 -87 -8
		mu 0 4 7 109 183 4
		f 4 -163 -83 163 -19
		mu 0 4 21 184 185 22
		f 4 -164 -82 164 -84
		mu 0 4 22 186 187 23
		f 4 -168 -145 165 -136
		mu 0 4 58 59 41 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Shin_Geo" -p "Left_Front_Fore_Arm_Geo";
	rename -uid "DEF5791F-4D9E-D08A-5BB7-DB8C52E9A15C";
createNode mesh -n "Left_Front_Arm_Shin_GeoShape" -p "Left_Front_Arm_Shin_Geo";
	rename -uid "59DA2F23-448C-B3B0-5A33-C19625231CD1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:105]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 237 ".uvst[0].uvsp[0:236]" -type "float2" 0.091770999 0.369551
		 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097
		 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197
		 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999
		 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386
		 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551
		 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197
		 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801
		 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501
		 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572
		 0.65227503 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001
		 0.65341401 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499
		 0.73260999 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703
		 0.125136 0.65086901 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297
		 0.074359 0.58401501 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402
		 0.063110001 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301
		 0.10611 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899
		 0.116622 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499
		 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903
		 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099
		 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749
		 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503
		 0.21557599 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702
		 0.29026499 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401
		 0.29699001 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703
		 0.183137 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901
		 0.18320601 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699
		 0.198421 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265
		 0.64977902 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359
		 0.58401501 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001
		 0.65320301 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498
		 0.093028001 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001
		 0.130492 0.53603703 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001
		 0.29699001 0.65341401 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503
		 0.29158199 0.55224901 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002
		 0.306741 0.48896801 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999
		 0.29026499 0.91377503 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001
		 0.097764999 0.46727601 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703
		 0.061469 0.83352 0.14167701 0.83245897 0.119689 0.75301498 0.14167701 0.83245897
		 0.061469 0.83352 0.063110001 0.75552702 0.14167701 0.83245897 0.119689 0.75301498
		 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903 0.180035 0.54325098
		 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002 0.52486098 0.198421
		 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401 0.24582 0.55150002
		 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499 0.73260999
		 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099 0.74019098
		 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622 0.768843 0.21557599
		 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297
		 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918
		 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689 0.75301498 0.135295
		 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401
		 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801
		 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702
		 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999
		 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352
		 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101 0.92042899 0.091770999 0.369551
		 0.099601001 0.36329001 0.158557 0.94473398 0.138069 0.95506698 0.058373999 0.917386
		 0.062306002 0.89308703 0.138069 0.95506698 0.158557 0.94473398 0.138069 0.95506698
		 0.069045 0.97977501 0.046569001 0.95226097 0.058373999 0.917386 0.058373999 0.917386
		 0.046569001 0.95226097;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".vt[0:118]"  5.14453697 3.10440898 4.58394289 5.42492914 3.10407305 4.30353022
		 5.56073713 4.34458494 4.43778276 5.64131403 9.20845795 5.19052792 5.96832609 9.21755028 4.83934498
		 5.59152317 9.23019314 4.46256399 5.268857 9.24086094 4.75727701 5.062386036 4.36430407 4.70013714
		 5.027126789 3.129987 4.46653318 5.18038511 4.345047 4.81815577 4.39723206 4.53723907 3.27413106
		 4.51602793 4.53721809 3.39292789 4.25023079 4.53755379 3.658746 4.13141298 4.53757477 3.53996992
		 6.19080019 9.60634518 5.061316013 6.03806591 9.72226524 4.90845585 5.71094894 9.71317196 5.25972414
		 5.42837286 10.18500042 4.2982378 5.10560322 10.19566822 4.59305716 5.70532084 3.1037159 4.023118019
		 6.31946707 9.20761776 4.51233292 5.88623714 9.24008369 4.13985586 5.8230691 4.36335897 3.9393909
		 5.94106722 4.34412289 4.057411194 5.58793211 3.12929392 3.90568495 4.66302919 4.53692389 3.0083129406
		 4.78182602 4.5369029 3.12711 6.38929081 9.71233177 4.5813179 5.72319317 10.19489098 3.97542691
		 3.99709797 5.3478179 4.046279907 4.34815502 5.39674807 4.53245211 4.218081 6.59605789 4.39952087
		 3.89776802 6.61886406 3.94877696 4.17213202 7.665483 4.35067606 3.93172503 7.62596083 3.97748399
		 4.23305416 6.61712122 3.1074121 4.064611912 5.34785986 3.47216105 3.96610188 6.61745691 3.3743639
		 4.26365089 7.62272692 3.13677001 3.99869394 7.62306309 3.40174794 4.30531502 9.90509033 3.1755991
		 4.064466 9.90538502 3.4164691 4.34519291 5.38461018 4.72521019 4.86928988 5.10176086 5.17158699
		 4.90009689 6.59366417 5.24535894 4.3652482 6.60546589 4.72287893 4.86685514 7.84721708 5.19000292
		 4.34072113 7.67087984 4.71067905 5.49141598 5.77508402 4.91070414 5.73621321 5.78314781 4.61147499
		 6.045962811 6.59292889 4.92021704 5.63417387 6.60466814 5.33202696 5.66252279 7.84194613 5.56642818
		 5.061923981 7.83908987 5.14949512 5.32578802 6.60473108 5.21060514 5.12616301 5.11692286 4.96345615
		 5.60672712 5.11633492 4.48285007 4.33043098 5.34752417 3.20634294 4.21497202 7.62503719 3.61800599
		 4.18319893 9.91132832 3.535182 5.0079331398 5.12811613 4.84463692 5.68215895 9.60619736 5.5706501
		 4.82409906 10.29409504 4.61508703 5.6630702 8.8480978 5.58457184 4.881639 8.82915592 4.90020418
		 4.94495296 7.83203411 4.93170404 4.073748112 5.35279512 3.835356 4.69517899 5.3954668 4.46050501
		 4.50968599 5.3846941 4.6911068 4.84268284 5.11072779 5.0059390068 4.038530827 7.625247 3.7944901
		 4.69253302 7.66670084 4.45506716 4.50687313 7.67234993 4.6858778 4.85209084 7.83971977 5.022821903
		 4.2507782 5.35258484 3.65830493 6.17809391 7.84131622 5.050815105 6.18790102 8.84786701 5.059361935
		 4.42402697 9.91103363 3.294312 5.30753899 3.12965107 4.18612003 5.28439808 10.29428387 4.15413713
		 5.65660095 5.39513111 3.22390008 5.17032623 5.34636879 2.87294698 5.52514219 6.59444094 3.092375994
		 5.074398041 6.61741495 2.77206302 5.47759819 7.66388702 3.04510498 5.10434389 7.6245122 2.80475998
		 4.54614305 9.90479755 2.93475008 4.52860785 7.62239122 2.87179208 4.49998522 6.61678505 2.84043908
		 4.59622812 5.34720802 2.94052505 6.2954011 5.099997044 3.74537206 5.84933901 5.38274097 3.22095895
		 6.37102222 6.59183693 3.77430892 5.84852123 6.60363913 3.23950291 6.31721878 7.84541082 3.73955393
		 5.83762121 7.6690321 3.21367311 6.4577508 6.60366011 4.50838518 6.69368696 7.84066486 4.535182
		 6.035399914 5.77441216 4.36667824 6.087310791 5.11574697 4.0022439957 6.33632898 6.60349178 4.20000076
		 6.27671099 7.8375988 3.934623 4.74488688 7.62438583 3.088049889 4.66487694 9.9107399 3.053462982
		 5.96849298 5.12691879 3.88399291 5.74530602 10.29296112 3.6938169 6.7000699 9.60493755 4.55265284
		 6.71306896 8.84679604 4.53448915 6.028616905 8.82772732 3.75314093 6.058897972 7.83066893 3.81767511
		 6.12977314 5.10913181 3.71874404 5.81525707 5.38309813 3.38545299 5.58467722 5.39437485 3.57094598
		 4.95942307 5.35170317 2.94961905 4.92135 7.62415504 2.911587 5.58202982 7.66560888 3.56550694
		 5.81284094 7.67073298 3.37982392 6.15001822 7.8381238 3.72479105 4.78239298 5.35193396 3.1266489;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 4 0 4 5 1 5 6 0 6 3 0 7 8 0 8 0 0 0 9 0
		 9 7 1 10 11 1 11 12 0 12 13 0 13 10 0 14 15 1 15 16 0 17 18 0 18 6 0 5 17 1 1 19 0
		 20 21 0 21 5 0 4 20 0 22 23 1 23 19 0 19 24 0 24 22 0 10 25 0 25 26 0 26 11 0 27 15 0
		 21 28 0 28 17 0 29 30 0 30 31 0 31 32 1 32 29 1 31 33 0 33 34 0 34 32 1 36 37 1 37 35 1
		 38 35 1 37 39 1 39 38 1 40 38 1 39 41 0 41 40 0 42 43 0 43 44 0 44 45 1 45 42 0 44 46 0
		 46 47 0 47 45 0 30 42 0 45 31 1 47 33 0 48 49 0 49 50 1 50 51 1 51 48 0 52 51 0 53 46 0
		 44 54 1 54 53 0 44 55 0 55 48 1 48 54 0 43 55 0 55 56 1 56 49 1 55 9 0 9 2 1 2 56 1
		 34 39 0 37 32 1 36 29 0 35 57 1 57 36 1 13 36 0 57 10 1 58 59 0 59 41 0 39 58 0 60 7 0
		 55 60 0 61 62 0 63 61 0 62 64 0 64 63 1 64 53 1 64 65 0 65 53 0 36 66 1 66 29 1 66 67 0
		 67 30 1 67 68 0 68 42 1 68 69 0 69 43 0 39 70 1 70 58 0 34 70 1 71 70 0 33 71 1 72 71 0
		 47 72 1 73 72 0 46 73 1 65 73 0 69 60 0 36 74 0 74 66 0 12 74 0 52 63 0 53 52 1 54 51 1
		 50 75 1 75 52 1 75 76 1 76 63 1 76 14 1 14 61 0 59 77 0 77 40 1 8 78 0 78 1 1 17 79 1
		 79 62 0 62 18 1 16 18 0 16 61 1 16 3 0 15 4 1 80 81 0 82 80 0 81 83 1 83 82 1 84 82 0
		 83 85 1 85 84 0 40 86 0 86 87 0 87 38 1 87 88 1 88 35 1 88 89 1 90 91 0 92 90 0 91 93 0
		 93 92 1 94 92 0 93 95 0 95 94 0 91 80 0 82 93 1 84 95 0 96 97 0 50 96 1 98 96 0 49 98 0
		 99 98 1 100 98 0 99 92 0;
	setAttr ".ed[166:224]" 92 100 1 101 100 0 94 101 0 99 90 0 56 99 1 23 99 0
		 2 23 1 87 85 0 83 88 1 81 89 0 57 89 1 89 25 0 102 87 0 86 103 0 103 102 0 104 99 0
		 22 104 0 105 106 0 106 107 0 107 108 1 108 105 0 101 108 1 101 109 0 109 108 0 90 110 0
		 110 111 0 111 91 1 111 112 0 112 80 1 112 113 0 113 81 1 113 89 1 102 114 0 114 87 1
		 114 85 1 114 115 0 115 84 1 115 116 0 116 95 1 116 117 0 117 94 1 117 109 0 104 110 0
		 113 118 0 118 89 0 118 26 0 107 97 0 97 101 1 96 100 1 106 14 0 76 107 1 75 97 1
		 77 103 0 78 24 0 28 27 0 105 28 1 105 79 0 27 106 1 20 27 0;
	setAttr -s 106 -ch 410 ".fc[0:105]" -type "polyFaces" 
		f 4 0 1 -74 -9
		mu 0 4 0 1 2 3
		f 4 2 3 4 5
		mu 0 4 4 5 6 7
		f 4 6 7 8 9
		mu 0 4 8 9 0 3
		f 4 10 11 12 13
		mu 0 4 10 11 12 13
		f 4 14 15 133 -125
		mu 0 4 14 15 16 17
		f 4 16 17 -5 18
		mu 0 4 18 19 7 6
		f 4 -2 19 -25 -173
		mu 0 4 2 1 20 21
		f 4 20 21 -4 22
		mu 0 4 22 23 6 5
		f 4 23 24 25 26
		mu 0 4 24 25 26 27
		f 4 27 28 29 -11
		mu 0 4 10 28 29 11
		f 4 30 -15 -216 -224
		mu 0 4 30 15 14 31
		f 4 -19 -22 31 32
		mu 0 4 18 6 32 33
		f 4 33 34 35 36
		mu 0 4 34 35 36 37
		f 4 -36 37 38 39
		mu 0 4 37 36 38 39
		f 4 40 41 78 79
		mu 0 4 40 41 42 43
		f 4 42 -42 43 44
		mu 0 4 44 42 41 45
		f 4 45 -45 46 47
		mu 0 4 46 44 45 47
		f 4 48 49 50 51
		mu 0 4 48 49 50 51
		f 4 -51 52 53 54
		mu 0 4 51 50 52 53
		f 4 55 -52 56 -35
		mu 0 4 35 48 51 36
		f 4 -57 -55 57 -38
		mu 0 4 36 51 53 38
		f 4 58 59 60 61
		mu 0 4 54 55 56 57
		f 4 62 -61 119 120
		mu 0 4 58 57 56 59
		f 4 63 -53 64 65
		mu 0 4 60 52 50 61
		f 4 -65 66 67 68
		mu 0 4 61 50 62 54
		f 4 -59 -68 70 71
		mu 0 4 55 54 62 63
		f 3 -50 69 -67
		mu 0 3 50 49 62
		f 4 -71 72 73 74
		mu 0 4 63 62 3 2
		f 4 75 -44 76 -40
		mu 0 4 39 45 41 37
		f 4 -77 -41 77 -37
		mu 0 4 37 41 40 34
		f 4 80 -80 81 -14
		mu 0 4 13 40 43 10
		f 4 82 83 -47 84
		mu 0 4 64 65 47 45
		f 4 85 -10 -73 86
		mu 0 4 66 8 3 62
		f 4 88 87 89 90
		mu 0 4 67 17 68 69
		f 4 -91 91 117 116
		mu 0 4 67 69 60 58
		f 3 -92 92 93
		mu 0 3 60 69 70
		f 3 -78 94 95
		mu 0 3 34 40 71
		f 4 -34 -96 96 97
		mu 0 4 35 34 71 72
		f 4 -56 -98 98 99
		mu 0 4 48 35 72 73
		f 4 -49 -100 100 101
		mu 0 4 49 48 73 74
		f 3 -85 102 103
		mu 0 3 64 45 75
		f 3 -103 -76 104
		mu 0 3 75 45 39
		f 4 105 -105 -39 106
		mu 0 4 76 75 39 38
		f 4 107 -107 -58 108
		mu 0 4 77 76 38 53
		f 4 109 -109 -54 110
		mu 0 4 78 77 53 52
		f 4 111 -111 -64 -94
		mu 0 4 70 78 52 60
		f 4 112 -87 -70 -102
		mu 0 4 74 66 62 49
		f 3 113 114 -95
		mu 0 3 40 79 71
		f 4 115 -114 -81 -13
		mu 0 4 12 79 40 13
		f 4 -63 -118 -66 118
		mu 0 4 57 58 60 61
		f 3 -119 -69 -62
		mu 0 3 57 61 54
		f 4 -117 -121 121 122
		mu 0 4 67 58 59 80
		f 4 -89 -123 123 124
		mu 0 4 17 67 80 14
		f 4 -84 125 126 -48
		mu 0 4 47 65 81 46
		f 4 -8 127 128 -1
		mu 0 4 0 9 82 1
		f 4 129 130 131 -17
		mu 0 4 18 83 68 19
		f 4 132 -132 -88 -134
		mu 0 4 16 19 68 17
		f 4 -133 134 -6 -18
		mu 0 4 19 16 4 7
		f 4 -16 135 -3 -135
		mu 0 4 16 15 5 4
		f 4 137 136 138 139
		mu 0 4 84 85 86 87
		f 4 140 -140 141 142
		mu 0 4 88 89 90 91
		f 4 143 144 145 -46
		mu 0 4 46 92 93 44
		f 4 -146 146 147 -43
		mu 0 4 44 94 95 42
		f 4 -148 148 -177 -79
		mu 0 4 42 96 97 43
		f 4 150 149 151 152
		mu 0 4 98 99 100 101
		f 4 153 -153 154 155
		mu 0 4 102 103 104 105
		f 4 -152 156 -138 157
		mu 0 4 106 107 108 109
		f 4 -155 -158 -141 158
		mu 0 4 110 111 112 113
		f 4 160 159 -218 -120
		mu 0 4 56 114 115 59
		f 4 161 -161 -60 162
		mu 0 4 116 117 56 55
		f 4 163 -163 -72 170
		mu 0 4 118 119 55 63
		f 4 164 -164 165 166
		mu 0 4 120 121 122 123
		f 4 167 -167 -154 168
		mu 0 4 124 125 126 127
		f 3 169 -151 -166
		mu 0 3 128 129 130
		f 4 171 -171 -75 172
		mu 0 4 131 132 63 2
		f 4 -147 173 -142 174
		mu 0 4 133 134 135 136
		f 4 -149 -175 -139 175
		mu 0 4 137 138 139 140
		f 4 -28 -82 176 177
		mu 0 4 141 10 43 142
		f 4 178 -145 179 180
		mu 0 4 143 144 145 146
		f 4 181 -172 -24 182
		mu 0 4 147 148 149 150
		f 4 183 184 185 186
		mu 0 4 151 152 153 154
		f 4 187 -186 212 213
		mu 0 4 155 156 157 158
		f 3 -188 188 189
		mu 0 3 159 160 161
		f 4 190 191 192 -150
		mu 0 4 162 163 164 165
		f 4 -193 193 194 -157
		mu 0 4 166 167 168 169
		f 4 -195 195 196 -137
		mu 0 4 170 171 172 173
		f 3 -197 197 -176
		mu 0 3 174 175 176
		f 3 -179 198 199
		mu 0 3 177 178 179
		f 3 -200 200 -174
		mu 0 3 180 181 182
		f 4 -201 201 202 -143
		mu 0 4 183 184 185 186
		f 4 -203 203 204 -159
		mu 0 4 187 188 189 190
		f 4 -205 205 206 -156
		mu 0 4 191 192 193 194
		f 4 -207 207 -189 -169
		mu 0 4 195 196 197 198
		f 4 -191 -170 -182 208
		mu 0 4 199 200 201 202
		f 3 209 210 -198
		mu 0 3 203 204 205
		f 4 -29 -178 -211 211
		mu 0 4 206 207 208 209
		f 4 -214 -160 214 -168
		mu 0 4 210 211 212 213
		f 3 -215 -162 -165
		mu 0 3 214 215 216
		f 4 215 -124 216 -185
		mu 0 4 217 14 80 218
		f 4 -217 -122 217 -213
		mu 0 4 219 80 59 220
		f 4 -144 -127 218 -180
		mu 0 4 221 46 81 222
		f 4 -20 -129 219 -26
		mu 0 4 223 1 82 224
		f 4 221 220 223 -184
		mu 0 4 225 226 227 228
		f 4 -33 -222 222 -130
		mu 0 4 18 229 230 83
		f 4 -32 -21 224 -221
		mu 0 4 231 232 233 234
		f 4 -225 -23 -136 -31
		mu 0 4 235 236 5 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Front_Fore_Arm_Geo_parentConstraint1" -p "Left_Front_Fore_Arm_Geo";
	rename -uid "6340E5A3-45A9-0279-27D2-A59B299C2294";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Elbow_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 10.424732889387291 -0.70188600761744024 -7.6312713545026396 ;
	setAttr ".tg[0].tor" -type "double3" 13.610855152769023 -47.914003450472094 78.378581259208971 ;
	setAttr ".lr" -type "double3" 7.9513867036587939e-16 -3.1805546814635176e-15 -2.2069531490250804e-32 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -1.7763568394002505e-15 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587939e-16 -3.1805546814635176e-15 -2.2069531490250804e-32 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Front_Arm_Toe_1_Geo" -p "Left_Front_Arm_Geo";
	rename -uid "F5EE4A73-43AD-7AA2-E12D-BEB1F357D663";
createNode transform -n "Left_Front_Arm_Heel_to_Toe_Tip1_Geo" -p "Left_Front_Arm_Toe_1_Geo";
	rename -uid "624FB0E7-43E9-A44A-48E2-4581EA6ABCF5";
createNode mesh -n "Left_Front_Arm_Heel_to_Toe_Tip1_GeoShape" -p "Left_Front_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "287C68C4-43E9-815B-CD2A-3EB2FC56BD52";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Heel_to_Toe_Tip1_GeoShapeOrig" -p "Left_Front_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "16DA9ED9-4E68-45E5-7FB3-FAB29423CF1D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.50817394 1.20791996 3.49656296 4.091911793 0.95617199 3.54320407
		 3.967026 1.297212 3.56319594 4.41896677 1.42411494 3.51101089 4.56243801 1.20959997 3.80679607
		 4.1555419 0.95814598 3.90690303 4.47322989 1.42579496 3.82122302 4.030654907 1.29918599 3.92691588;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 8 0 3 9
		f 4 -11 -3 11 -9
		mu 0 4 9 3 2 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Toe_Tip1_Geo" -p "Left_Front_Arm_Toe_1_Geo";
	rename -uid "20CF5B36-4C29-3778-4F45-A08230418130";
createNode mesh -n "Left_Front_Arm_Toe_Tip1_GeoShape" -p "Left_Front_Arm_Toe_Tip1_Geo";
	rename -uid "CD412790-4E97-AD86-EED2-CE8A097F4099";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Toe_Tip1_GeoShapeOrig" -p "Left_Front_Arm_Toe_Tip1_Geo";
	rename -uid "5D45EEF4-4E3A-E7D8-6A46-DD8D4B895FE3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  3.12652206 0.68840098 3.129987 2.073204041 0.125286 3.59946299
		 2.021943092 0.215334 3.6021719 3.20252109 1.11707401 4.65624714 2.18985891 0.220542 4.56187201
		 2.23916698 0.130431 4.54796982 3.8919301 1.45063806 2.87385011 4.060853958 1.018206 2.856987
		 2.47755909 -8.3999999e-05 3.63318896 2.19057298 0.158214 3.68253899 3.18481803 0.66805202 3.36814809
		 3.20497799 0.25491899 3.36684608 4.12479877 0.62567401 3.034499884 4.35980892 0.63293999 4.37780809
		 4.2433219 0.96324903 4.39639187 3.36230993 0.673554 4.382617 3.38246989 0.26042101 4.38133621
		 2.3213191 0.162267 4.42984486 2.60830498 0.0039479998 4.38047409 2.94075608 1.10896802 3.1601851
		 4.35913801 1.027425051 4.56199789 4.19371986 1.45996201 4.59895802 3.38826609 0.69650698 4.6259861
		 4.0083332062 0.95598298 3.053085089;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 1 11 8 0 12 11 0 13 14 0 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0
		 2 4 0 3 19 1 19 2 0 6 19 0 0 19 1 1 5 0 20 21 0 21 3 0 3 22 1 22 20 0 5 22 0 10 0 1
		 9 1 1 9 17 0 17 5 1 22 15 1 18 8 0 10 23 0 23 12 0 21 6 0 20 7 0 7 23 1 20 14 1 14 23 0
		 13 12 0 11 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -21 -23
		mu 0 4 0 1 2 3
		f 4 2 3 28 -27
		mu 0 4 4 5 6 7
		f 4 4 5 22 -22
		mu 0 4 8 9 0 3
		f 4 6 7 8 9
		mu 0 4 10 11 12 13
		f 4 10 -9 35 36
		mu 0 4 14 13 12 15
		f 4 11 12 13 14
		mu 0 4 16 17 18 19
		f 4 -14 15 16 17
		mu 0 4 19 18 20 21
		f 4 18 -3 19 20
		mu 0 4 2 5 4 3
		f 4 21 -20 -26 37
		mu 0 4 8 3 4 22
		f 4 23 -4 -19 -2
		mu 0 4 23 24 5 2
		f 4 24 25 26 27
		mu 0 4 25 26 4 7
		f 4 29 -6 39 -36
		mu 0 4 27 28 29 30
		f 4 -1 -30 -8 30
		mu 0 4 31 32 33 34
		f 4 31 32 -24 -31
		mu 0 4 35 36 37 38
		f 4 33 -13 -41 -28
		mu 0 4 39 40 41 42
		f 4 -16 -34 -29 -33
		mu 0 4 43 44 45 46
		f 4 34 -10 43 -18
		mu 0 4 21 10 13 19
		f 4 -7 -35 -17 -32
		mu 0 4 11 10 21 20
		f 4 -5 -38 -25 38
		mu 0 4 47 8 48 49
		f 4 -40 -39 40 41
		mu 0 4 50 51 52 53
		f 4 -42 -12 42 -37
		mu 0 4 15 17 16 14
		f 4 -11 -43 -15 -44
		mu 0 4 13 14 16 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Front_Arm_Toe_1_Geo_parentConstraint1" -p "Left_Front_Arm_Toe_1_Geo";
	rename -uid "17260C2D-4498-5549-7146-C4B4A50ED3BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Thumb1_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.6196211100354048 -4.4470154653394616 0.92740420129079093 ;
	setAttr ".tg[0].tor" -type "double3" 79.528632114381367 34.547126736718951 164.23136862388182 ;
	setAttr ".lr" -type "double3" 3.180554681463516e-15 9.5416640443905503e-15 -9.5416640443905503e-15 ;
	setAttr ".rst" -type "double3" 0 -2.2204460492503131e-16 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 3.180554681463516e-15 9.5416640443905503e-15 -9.5416640443905503e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Front_Arm_Toe_2_Geo" -p "Left_Front_Arm_Geo";
	rename -uid "1FE24549-4F89-1697-F89B-55BA6695F2A2";
createNode transform -n "Left_Front_Arm_Heel_to_Toe_Tip2_Geo" -p "Left_Front_Arm_Toe_2_Geo";
	rename -uid "09C2F9EF-4F3D-F2D6-F1D2-B38A602A9AA3";
createNode mesh -n "Left_Front_Arm_Heel_to_Toe_Tip2_GeoShape" -p "Left_Front_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "63BEB661-48B5-486D-AE78-37BE852B052D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Heel_to_Toe_Tip2_GeoShapeOrig" -p "Left_Front_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "72A9AE52-473C-AB1E-1664-C4B898951194";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.93640709 1.14405894 3.99027395 5.26492977 0.95846099 4.36499691
		 5.34229517 1.43795395 4.44236088 4.997159 1.543437 4.051004887 5.20434523 1.14405894 3.7223351
		 5.57907009 0.95846099 4.050858021 5.26509905 1.543437 3.78308797 5.65643311 1.43795395 4.12820101;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 12 13 14 15
		f 4 -11 -3 11 -9
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Toe_Tip2_Geo" -p "Left_Front_Arm_Toe_2_Geo";
	rename -uid "F69D97CA-4857-63A0-F354-5A9EE1B9051D";
createNode mesh -n "Left_Front_Arm_Toe_Tip2_GeoShape" -p "Left_Front_Arm_Toe_Tip2_Geo";
	rename -uid "3C96BADB-48C7-4410-93FB-FBA1DD2E1475";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Toe_Tip2_GeoShapeOrig" -p "Left_Front_Arm_Toe_Tip2_Geo";
	rename -uid "3AB66AE7-4D9B-D0E0-AF8D-9AAF2E00CD69";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801
		 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399
		 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501
		 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372
		 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331
		 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027
		 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001
		 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027
		 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625
		 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  5.59496689 0.50238299 5.67310905 6.70120382 0.122388 6.30646801
		 6.86391306 0.32297999 6.47885799 6.95710993 1.31556594 4.45099306 7.69282389 0.32297999 5.64994478
		 7.52043486 0.122388 5.48723698 4.7025919 1.66221297 4.97868013 4.559268 0.83185202 4.81798792
		 6.031914234 0.83185202 3.34540606 6.19260502 1.66221297 3.48873091 4.79446697 0.769104 4.74049902
		 5.79144192 0.474096 5.45353317 5.95471811 0.769104 3.58029008 6.88707495 0.50238299 4.38100004
		 6.69925117 0.145992 6.13057184 6.55500317 0.001701 5.9863019 7.20043802 0.001701 5.34084606
		 5.7690568 0.19378801 5.43112612 6.64525986 0.19378801 4.5549221 5.93497705 0.494403 3.56054997
		 4.77472687 0.494403 4.72075796 7.34470701 0.145992 5.485116 6.66766787 0.474096 4.57730818
		 5.66495991 1.31556594 5.74316502;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 3 0 7 10 1 10 11 0 12 8 1 8 13 0 14 11 0 15 14 0 15 16 0 15 17 0 17 18 1 18 16 0
		 19 18 0 11 17 1 20 17 0 10 20 0 21 16 0 19 12 0 12 22 0 22 18 1 22 21 0 2 4 0 3 23 1
		 23 2 0 6 23 0 0 23 1 1 5 0 3 13 1 5 13 0 11 0 1 14 1 1 14 21 0 21 5 1 13 22 1 9 6 0
		 8 7 0 12 10 0 19 20 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -30 -32
		mu 0 4 0 1 2 3
		f 4 2 3 34 -34
		mu 0 4 4 5 6 7
		f 4 4 5 31 -31
		mu 0 4 8 9 10 11
		f 4 6 7 33 -12
		mu 0 4 12 13 14 15
		f 4 8 9 35 -6
		mu 0 4 16 17 18 19
		f 4 10 11 39 -25
		mu 0 4 20 21 22 23
		f 4 13 12 19 -16
		mu 0 4 24 25 26 27
		f 4 -14 14 -23 -38
		mu 0 4 28 29 30 31
		f 4 -15 15 16 17
		mu 0 4 32 33 34 35
		f 4 18 -17 -21 -44
		mu 0 4 36 37 38 39
		f 4 20 -20 -10 21
		mu 0 4 40 41 42 43
		f 4 22 -18 -26 26
		mu 0 4 44 45 46 47
		f 4 23 24 25 -19
		mu 0 4 48 49 50 51
		f 4 27 -3 28 29
		mu 0 4 52 53 54 55
		f 4 30 -29 -8 40
		mu 0 4 56 57 58 13
		f 4 32 -4 -28 -2
		mu 0 4 59 60 61 62
		f 4 -1 -36 -13 36
		mu 0 4 63 64 18 65
		f 4 37 38 -33 -37
		mu 0 4 66 67 68 69
		f 4 -27 -40 -35 -39
		mu 0 4 70 71 22 72
		f 4 -5 -41 -7 41
		mu 0 4 73 74 13 75
		f 4 -9 -42 -11 42
		mu 0 4 76 77 78 79
		f 4 -43 -24 43 -22
		mu 0 4 80 81 82 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Front_Arm_Toe_2_Geo_parentConstraint1" -p "Left_Front_Arm_Toe_2_Geo";
	rename -uid "8FC0E13B-4BF6-F4BF-53D3-09825399A67B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_MidFinger1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.8489302365984219 -0.49135875380068517 -4.0655236356372448 ;
	setAttr ".tg[0].tor" -type "double3" 69.346108850022574 -19.844174066857896 44.252833820831192 ;
	setAttr ".lr" -type "double3" 9.5416640443905503e-15 9.5416640443905503e-15 1.5902773407317592e-15 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 -4.4408920985006262e-16 0 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-15 9.5416640443905503e-15 1.5902773407317592e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Front_Arm_Toe_3_Geo" -p "Left_Front_Arm_Geo";
	rename -uid "68F82E84-4649-03EC-B0A2-2AA0F80F2A07";
createNode transform -n "Left_Front_Arm_Heel_to_Toe_Tip3_Geo" -p "Left_Front_Arm_Toe_3_Geo";
	rename -uid "0CF563E2-49DE-FB68-6498-B6818D0C3D23";
createNode mesh -n "Left_Front_Arm_Heel_to_Toe_Tip3_GeoShape" -p "Left_Front_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "93AE10C6-4440-14B7-F821-DABE0337B1CB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Heel_to_Toe_Tip3_GeoShapeOrig" -p "Left_Front_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "47B1228D-41A3-F516-BB44-C7B74BE28589";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.9306531 1.20556796 3.52869391 5.066249847 0.95963699 3.12874794
		 5.097455978 1.30235696 3.010938883 4.95306015 1.42298102 3.44419003 4.62646818 1.20521104 3.44714999
		 4.70960712 0.95923799 3.033155918 4.64887524 1.42262399 3.36262488 4.7407918 1.30195796 2.91534591;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 12 13 14 15
		f 4 -11 -3 11 -9
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Front_Arm_Toe_Tip3_Geo" -p "Left_Front_Arm_Toe_3_Geo";
	rename -uid "A47B4613-4BE2-5400-5F4B-01982F5DF92D";
createNode mesh -n "Left_Front_Arm_Toe_Tip3_GeoShape" -p "Left_Front_Arm_Toe_Tip3_Geo";
	rename -uid "B330D319-4546-3BE9-6696-B59AC24E4535";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Front_Arm_Toe_Tip3_GeoShapeOrig" -p "Left_Front_Arm_Toe_Tip3_Geo";
	rename -uid "E1792AAC-4343-712B-86D8-F9BA57E28918";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699 0.164968
		 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  5.85041094 0.70742702 2.42455602 5.86660814 0.15760501 1.31764221
		 5.88485718 0.248367 1.2710222 4.43022299 1.12881303 1.85493004 4.94378424 0.24729601 1.018770218
		 4.93649721 0.156555 1.068309188 5.75271893 1.45960498 3.23519707 5.70099497 1.024863005 3.39057708
		 5.66681433 0.026292 1.6686362 5.74146938 0.18849599 1.38940024 5.61008692 0.68529302 2.37678099
		 5.60676908 0.27190799 2.39093399 5.51688814 0.63075602 3.36928201 4.19966412 0.62924403 3.016166925
		 4.22868586 0.961128 2.90646291 4.61531687 0.68415898 2.11012197 4.61197805 0.27077401 2.1242969
		 5.0086741447 0.187677 1.19298625 4.93401957 0.025451999 1.47222316 5.8972621 1.13049304 2.24815607
		 4.029101849 1.022951961 2.94237304 4.061106205 1.45767295 2.78172302 4.38345623 0.70574701 2.031330109
		 5.54591084 0.96261901 3.25957894;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 1 11 8 0 12 11 0 13 14 0 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0
		 2 4 0 3 19 1 19 2 0 6 19 0 0 19 1 1 5 0 20 21 0 21 3 0 3 22 1 22 20 0 5 22 0 10 0 1
		 9 1 1 9 17 0 17 5 1 22 15 1 18 8 0 10 23 0 23 12 0 21 6 0 20 7 0 7 23 1 20 14 1 14 23 0
		 13 12 0 11 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -21 -23
		mu 0 4 0 1 2 3
		f 4 2 3 28 -27
		mu 0 4 4 5 6 7
		f 4 4 5 22 -22
		mu 0 4 8 9 10 11
		f 4 6 7 8 9
		mu 0 4 12 13 14 15
		f 4 10 -9 35 36
		mu 0 4 16 17 18 19
		f 4 11 12 13 14
		mu 0 4 20 21 22 23
		f 4 -14 15 16 17
		mu 0 4 24 25 26 27
		f 4 18 -3 19 20
		mu 0 4 28 29 30 31
		f 4 21 -20 -26 37
		mu 0 4 32 33 34 35
		f 4 23 -4 -19 -2
		mu 0 4 36 37 38 39
		f 4 24 25 26 27
		mu 0 4 40 41 42 43
		f 4 29 -6 39 -36
		mu 0 4 44 45 46 47
		f 4 -1 -30 -8 30
		mu 0 4 48 49 50 51
		f 4 31 32 -24 -31
		mu 0 4 52 53 54 55
		f 4 33 -13 -41 -28
		mu 0 4 56 57 58 59
		f 4 -16 -34 -29 -33
		mu 0 4 60 61 62 63
		f 4 34 -10 43 -18
		mu 0 4 64 65 66 67
		f 4 -7 -35 -17 -32
		mu 0 4 68 69 70 71
		f 4 -5 -38 -25 38
		mu 0 4 72 73 74 75
		f 4 -40 -39 40 41
		mu 0 4 76 77 78 79
		f 4 -42 -12 42 -37
		mu 0 4 80 81 82 83
		f 4 -11 -43 -15 -44
		mu 0 4 84 85 86 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Front_Arm_Toe_3_Geo_parentConstraint1" -p "Left_Front_Arm_Toe_3_Geo";
	rename -uid "3BBA5AB0-456A-5BFF-8E51-458AD8081609";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Pinky1_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.5816563961410064 5.2264180385160577 0.16228674453271885 ;
	setAttr ".tg[0].tor" -type "double3" 122.31342967792385 -6.4960042829913061 -79.610451066612711 ;
	setAttr ".lr" -type "double3" -9.5416640443905503e-15 -3.1805546814635168e-15 -3.1805546814635164e-15 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -4.4408920985006262e-16 0 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-15 -3.1805546814635168e-15 
		-3.1805546814635164e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Middle_Arm_Geo" -p "SpiderBot_Geo";
	rename -uid "C13DBF17-41E5-394A-FFB1-15A2E4F1ED21";
createNode transform -n "Left_Middle_Upper_Arm_Geo" -p "Left_Middle_Arm_Geo";
	rename -uid "40910027-4C49-670C-278F-4BAE9F16B8AF";
createNode transform -n "Left_Middle_Arm_Knee_Geo" -p "Left_Middle_Upper_Arm_Geo";
	rename -uid "6A7C2282-4EAF-8429-8AD8-158A0806E276";
createNode mesh -n "Left_Middle_Arm_Knee_GeoShape" -p "Left_Middle_Arm_Knee_Geo";
	rename -uid "236AA29E-4DF5-D3B4-CCA0-25AEFA4D6A48";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Knee_GeoShapeOrig" -p "Left_Middle_Arm_Knee_Geo";
	rename -uid "6282D4C6-4674-7EA7-E5FD-C6AED642C93B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.93326402 0.55445099
		 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202 0.922194 0.56268197
		 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199 0.91118097 0.58714199
		 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099 0.93326402 0.55445099
		 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802 0.91465998 0.53527802
		 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202 0.90329701 0.54415202
		 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701 0.90489799 0.55673701
		 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199 0.894777 0.57577199
		 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202 0.90329701 0.54415202
		 0.91465998 0.53527802;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  6.056529045 11.247715 -0.43265581 6.11158466 11.45953178 -0.43261719
		 5.88866234 11.21732235 -0.42035794 5.98401833 11.58428669 -0.42029023 5.76965237 11.33932304 -0.43749642
		 5.82469368 11.55114365 -0.43744302 5.44266033 11.44244766 -0.5176425 5.56830311 11.64978886 -0.51774144
		 5.4416008 11.44282436 -1.073418856 5.7682848 11.33981037 -1.15498066 5.88722801 11.21783257 -1.1727066
		 6.055153847 11.24820423 -1.16102362 6.11018276 11.46003056 -1.16098475 5.9825983 11.58479118 -1.17265534
		 5.82334042 11.5516243 -1.15494108 5.56724262 11.65016556 -1.073517799;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 0 0 1 3 0 3 2 1 4 2 0 3 5 0 5 4 1
		 6 4 0 5 7 0 7 6 0 6 8 0 8 9 0 9 4 1 9 10 0 10 2 0 10 11 0 11 0 0 12 11 0 10 13 1
		 13 12 0 9 14 1 14 13 0 8 15 0 15 14 0 15 7 0 5 14 0 3 13 0 1 12 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 11 12 -8
		mu 0 4 6 8 9 4
		f 4 -13 13 14 -5
		mu 0 4 4 10 11 0
		f 4 -15 15 16 -2
		mu 0 4 0 12 13 1
		f 4 -1 -17 -18 -28
		mu 0 4 2 1 14 15
		f 4 17 -16 18 19
		mu 0 4 16 17 18 19
		f 4 -19 -14 20 21
		mu 0 4 20 21 22 23
		f 4 -21 -12 22 23
		mu 0 4 24 25 26 27
		f 4 24 -9 25 -24
		mu 0 4 28 7 5 29
		f 4 -26 -6 26 -22
		mu 0 4 30 5 3 31
		f 4 -27 -3 27 -20
		mu 0 4 32 3 2 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Thigh_Geo" -p "Left_Middle_Upper_Arm_Geo";
	rename -uid "EE154AA5-4BEE-8B5E-278E-C3A8D8CCDA98";
createNode mesh -n "Left_Middle_Arm_Thigh_GeoShape" -p "Left_Middle_Arm_Thigh_Geo";
	rename -uid "F141E923-473F-A017-6F31-A7A69FB6D4F0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" 0.88565999 0.55092603
		 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499
		 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802
		 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802
		 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701
		 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478
		 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  6.22605705 11.84802628 -0.53975391 6.26252651 11.7812624 -0.53986883
		 6.26156044 11.78160667 -1.053873301 6.22507668 11.84837437 -1.053742886 1.95894122 11.52048397 -0.36445946
		 1.72841001 11.32593155 -0.54121447 2.037008524 10.69962502 -0.36516464 2.22543931 11.54581833 -0.36493552
		 2.30350566 10.72495842 -0.36564064 1.77389503 10.84755135 -0.54162538 2.03537631 10.70020485 -1.21393061
		 2.3018949 10.72555447 -1.21442163 1.77296615 10.84788132 -1.036267519 1.95733762 11.52105427 -1.2132256
		 2.22382092 11.54639339 -1.21371639 1.72748065 11.32626057 -1.035856605 2.38605046 10.66118526 -0.31296289
		 2.2945025 11.62394619 -0.31213593 2.79252744 10.89948463 -0.52703488 2.73859668 11.46689606 -0.52654743
		 3.83054471 11.73135662 -0.52845013 2.38423085 10.66183186 -1.26749992 2.79153609 10.89983845 -1.054672003
		 3.93277049 11.33120346 -0.52891624 2.29268241 11.62459278 -1.26667285 2.73757672 11.46725845 -1.054184437
		 3.82953811 11.73171329 -1.056072235 3.93177867 11.33155632 -1.056553125 4.87759304 11.77354527 -1.058041811
		 4.9863348 11.44302273 -1.058488131 5.25122452 11.78607273 -1.058745861 5.41053295 11.3590126 -1.059353828
		 5.68885517 11.7588253 -1.22017789 5.68763161 11.87506485 -0.3713274 5.69047356 11.75825024 -0.37139797
		 5.41152477 11.35865974 -0.53171682 5.68601418 11.87563896 -1.22010922 5.25223064 11.7857151 -0.53112364
		 4.98735523 11.44266033 -0.53085136 4.87859917 11.77318859 -0.53041983;
	setAttr -s 77 ".ed[0:76]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 6 4 0 7 4 0
		 6 8 0 8 7 0 6 9 0 10 6 0 10 11 0 11 8 0 10 12 0 13 10 0 13 14 0 14 11 0 13 15 0 4 13 0
		 7 14 0 8 16 0 16 17 0 17 7 0 16 18 0 18 19 1 19 17 0 20 19 0 11 21 0 21 16 0 21 22 0
		 22 18 1 23 18 0 14 24 0 24 21 0 24 25 0 25 22 1 25 26 0 26 27 1 27 22 0 26 28 0 28 29 1
		 29 27 0 28 30 0 30 31 1 31 29 0 32 31 0 17 14 1 17 24 0 19 25 0 0 33 0 33 34 0 34 1 0
		 35 34 0 34 32 0 32 2 0 32 36 0 36 3 0 30 36 0 36 33 1 37 33 0 12 15 0 5 9 0 15 5 0
		 12 9 0 38 35 0 39 38 1 23 38 0 39 20 0 20 23 1 37 39 0 35 37 1 35 31 0 38 29 1 23 27 1
		 30 37 1 28 39 1 26 20 1;
	setAttr -s 39 -ch 154 ".fc[0:38]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 5 4 61 -10
		mu 0 4 4 5 6 7
		f 4 6 -6 7 8
		mu 0 4 8 5 4 9
		f 4 10 9 -64 -14
		mu 0 4 10 4 7 11
		f 4 -8 -11 11 12
		mu 0 4 9 4 12 13
		f 4 14 13 60 -18
		mu 0 4 14 15 16 17
		f 4 -12 -15 15 16
		mu 0 4 18 19 20 21
		f 4 18 17 62 -5
		mu 0 4 5 22 23 6
		f 4 -16 -19 -7 19
		mu 0 4 24 25 5 8
		f 4 -9 20 21 22
		mu 0 4 8 9 26 27
		f 4 -22 23 24 25
		mu 0 4 27 26 28 29
		f 4 26 -25 -32 -69
		mu 0 4 30 29 28 31
		f 4 -13 27 28 -21
		mu 0 4 32 33 34 35
		f 4 -29 29 30 -24
		mu 0 4 35 34 36 37
		f 4 31 -31 -39 -74
		mu 0 4 38 37 36 39
		f 4 -17 32 33 -28
		mu 0 4 40 41 42 43
		f 4 -34 34 35 -30
		mu 0 4 44 45 46 47
		f 4 -36 36 37 38
		mu 0 4 48 49 50 51
		f 4 -38 39 40 41
		mu 0 4 51 52 53 54
		f 4 -41 42 43 44
		mu 0 4 54 53 55 56
		f 4 45 -44 57 -56
		mu 0 4 57 56 55 58
		f 3 -20 -23 46
		mu 0 3 59 60 61
		f 3 -47 47 -33
		mu 0 3 59 61 62
		f 4 -48 -26 48 -35
		mu 0 4 62 61 63 64
		f 4 -37 -49 -27 -77
		mu 0 4 65 64 63 66
		f 4 -1 49 50 51
		mu 0 4 1 0 67 68
		f 4 52 -51 -60 -71
		mu 0 4 69 70 67 71
		f 4 -2 -52 53 54
		mu 0 4 72 73 74 75
		f 4 -46 -54 -53 71
		mu 0 4 76 75 74 77
		f 4 -3 -55 55 56
		mu 0 4 78 79 57 80
		f 4 -4 -57 58 -50
		mu 0 4 81 82 83 84
		f 4 59 -59 -58 74
		mu 0 4 85 84 83 86
		f 4 -63 -61 63 -62
		mu 0 4 6 87 88 7
		f 4 65 64 70 69
		mu 0 4 89 90 91 92
		f 4 66 -66 67 68
		mu 0 4 93 94 95 30
		f 4 -72 -65 72 -45
		mu 0 4 76 77 96 97
		f 4 -73 -67 73 -42
		mu 0 4 97 96 38 39
		f 4 -75 -43 75 -70
		mu 0 4 85 86 98 99
		f 4 -76 -40 76 -68
		mu 0 4 99 98 65 66;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Middle_Upper_Arm_Geo_parentConstraint1" -p "Left_Middle_Upper_Arm_Geo";
	rename -uid "3FAD8F6F-4992-B5AF-19EE-EC9224A19530";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Shoulder_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2670986475260335 -0.68381237948810203 -11.14599602498963 ;
	setAttr ".tg[0].tor" -type "double3" 89.955160814618466 2.3630974896926076 -1.0873510714387442 ;
	setAttr ".lr" -type "double3" 8.504000180215442e-15 -7.0280993224917799e-17 -3.1805546814635168e-14 ;
	setAttr ".rst" -type "double3" 0 1.7763568394002505e-15 0 ;
	setAttr ".rsrr" -type "double3" 8.504000180215442e-15 -7.0280993224917799e-17 -3.1805546814635168e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Middle_Fore_Arm_Geo" -p "Left_Middle_Arm_Geo";
	rename -uid "D99631C2-4509-0873-36A7-6CA47CC55BAB";
createNode transform -n "Left_Middle_Arm_Ankle_Geo" -p "Left_Middle_Fore_Arm_Geo";
	rename -uid "80FFFBD9-4205-1E14-D70C-B2857C44977B";
createNode mesh -n "Left_Middle_Arm_Ankle_GeoShape" -p "Left_Middle_Arm_Ankle_Geo";
	rename -uid "221CAE54-4786-7268-D13D-45BDADFBA856";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.77148402 0.87109399
		 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601
		 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125
		 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699
		 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402 0.74804699
		 0.92773402 0.74609399 0.92773402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  7.94142818 2.7559073 -0.62012291 7.44325638 2.6729579 -0.6262331
		 7.4469738 2.67529011 -0.95920014 7.9451437 2.75823903 -0.95309019 8.022748947 2.88580751 -0.4400239
		 7.36338425 2.77601838 -0.44812107 7.29707193 3.16935587 -0.38080716 7.41575193 3.45653248 -0.6249938
		 7.41981268 3.45660901 -0.95530009 7.3061142 3.17126846 -1.14452887 7.37093353 2.77888179 -1.10171437
		 8.030299187 2.88867116 -1.093617678 7.9654789 3.2810576 -1.13643026 7.95643806 3.27914548 -0.37270927
		 7.75227165 3.51256561 -0.62085605 7.75631809 3.51263976 -0.95117879;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 4 5 0 5 1 0
		 6 5 0 7 8 0 8 9 0 9 6 0 6 7 0 9 10 0 10 5 0 10 2 0 10 11 0 11 3 0 12 11 0 11 4 0
		 13 4 0 12 13 0 14 13 0 12 15 0 15 14 0 8 15 0 12 9 0 14 7 0 6 13 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -1 4 5 6
		mu 0 4 1 0 4 5
		f 4 7 -6 -20 -28
		mu 0 4 6 5 4 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 6
		f 4 -11 12 13 -8
		mu 0 4 6 10 11 5
		f 4 -14 14 -2 -7
		mu 0 4 5 11 2 1
		f 4 -3 -15 15 16
		mu 0 4 12 2 11 13
		f 4 17 -16 -13 -26
		mu 0 4 14 13 11 10
		f 4 -4 -17 18 -5
		mu 0 4 0 3 13 4
		f 4 19 -19 -18 20
		mu 0 4 7 4 13 15
		f 4 21 -21 22 23
		mu 0 4 16 7 15 17
		f 4 24 -23 25 -10
		mu 0 4 9 18 14 10
		f 4 26 -12 27 -22
		mu 0 4 16 8 6 7
		f 4 -9 -27 -24 -25
		mu 0 4 9 8 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Ankle_to_Heel_Geo" -p "Left_Middle_Fore_Arm_Geo";
	rename -uid "DFBF54A1-4EF4-0491-A645-EDA68946B53A";
createNode mesh -n "Left_Middle_Arm_Ankle_to_Heel_GeoShape" -p "Left_Middle_Arm_Ankle_to_Heel_Geo";
	rename -uid "4B023CC2-4DB6-EDB6-4B8E-C78859DEC633";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  7.90502501 1.59162581 -0.98601437 7.48253727 1.58942187 -0.99112391
		 7.47629738 2.78560257 -0.99112439 7.89878559 2.78780651 -0.98601437 7.47741318 1.58939505 -0.56861544
		 7.47118759 2.78274488 -0.56861591 7.89989948 1.59159899 -0.56350613 7.89367485 2.78494859 -0.56350613;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 4 6 0 6 7 0 7 5 0 6 0 0 3 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 4 5 6 7
		f 4 7 8 9 -6
		mu 0 4 8 9 10 11
		f 4 10 -4 11 -9
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Heel_Geo" -p "Left_Middle_Fore_Arm_Geo";
	rename -uid "69913452-4ED7-7769-5CA9-71B6D57AC473";
createNode mesh -n "Left_Middle_Arm_Heel_GeoShape" -p "Left_Middle_Arm_Heel_Geo";
	rename -uid "1A591F80-4D85-D4B6-EA2C-29ABDC69725B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Heel_GeoShapeOrig" -p "Left_Middle_Arm_Heel_Geo";
	rename -uid "8512C342-44CE-1433-BE1E-869A1E2915B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  8.20697975 1.63783205 -1.13793683 8.20697975 1.080827951 -1.13793683
		 7.5271225 1.63783205 -1.36798 7.5271225 1.080827951 -1.36798 7.098231316 1.63783205 -0.79246926
		 7.098231316 1.080827951 -0.79246926 7.51306009 1.63783205 -0.20675421 7.51306009 1.080827951 -0.20675421
		 8.19829369 1.63783205 -0.42025805 8.19829369 1.080806971 -0.42025805;
	setAttr -s 17 ".ed[0:16]"  0 1 0 2 0 0 1 3 0 3 2 0 4 2 0 3 5 0 5 4 0
		 6 4 0 5 7 0 7 6 0 8 6 0 7 9 0 9 8 0 0 8 0 9 1 0 5 1 1 2 6 1;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 -10 11 12
		mu 0 4 8 6 7 9
		f 4 13 -13 14 -1
		mu 0 4 10 8 9 11
		f 4 -12 -9 15 -15
		mu 0 4 12 13 14 15
		f 3 -16 -6 -3
		mu 0 3 15 14 16
		f 4 -14 -2 16 -11
		mu 0 4 8 10 0 6
		f 3 -17 -5 -8
		mu 0 3 6 0 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Calf_Geo" -p "Left_Middle_Fore_Arm_Geo";
	rename -uid "701F972C-41F8-5E5B-4C3B-CE8209443AE3";
createNode mesh -n "Left_Middle_Arm_Calf_GeoShape" -p "Left_Middle_Arm_Calf_Geo";
	rename -uid "1CA2848B-4303-EABE-A650-AC9C2090A4A7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.52856898 0.97485399
		 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137
		 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501
		 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499
		 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303
		 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899
		 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699
		 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899
		 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698
		 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699
		 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797 0.69657397
		 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999
		 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302
		 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399 0.96858698
		 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413 0.82681203
		 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099 0.57310098
		 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303
		 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898
		 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104
		 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763
		 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401
		 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098
		 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288 0.56166101 0.49178499
		 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201 0.56129599 0.49112499
		 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498
		 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949
		 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699
		 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399
		 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366
		 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502
		 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401
		 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803
		 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398
		 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401
		 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302
		 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101
		 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599
		 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801
		 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999
		 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398
		 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398
		 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801
		 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101
		 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899
		 0.996889 0.58270597 0.99704999 0.51962101 0.69467402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  6.50616455 11.31232262 -1.40151715 6.41664267 11.41366863 -1.053970575
		 6.540205 11.43349266 -1.058198929 6.63335228 11.31036854 -1.42382073 8.09239006 4.28142881 -0.174788
		 8.075546265 2.43839025 -0.32501221 8.1275301 2.32064128 -0.20125914 8.12735367 4.27726984 0.10831165
		 8.12735367 4.27726984 -1.67637181 8.12751579 2.3206389 -1.36681581 8.075546265 2.43839025 -1.24328804
		 7.51044273 3.11523104 -0.19422388 6.99786186 4.027519226 -0.16357017 7.26606178 3.55315065 -0.486902
		 7.50392342 3.12536812 -0.36176109 6.99786282 4.027519226 -1.40472984 7.51044178 3.1152308 -1.37407565
		 7.50392342 3.12536836 -1.20653939 7.26606131 3.55315065 -1.081397057 6.25939894 11.49797821 -0.56431293
		 6.10898829 11.62484646 -0.5448184 5.65644264 11.3975811 -0.56431341 6.30363369 11.23231602 -0.56431293
		 5.70067739 11.13191986 -0.56431341 5.75759983 11.56633759 -0.54481864 5.65644264 11.3975811 -1.022928715
		 5.70067739 11.13191986 -1.022928715 5.56314373 11.039198875 -1.27376294 5.56314278 11.039198875 -0.31347871
		 5.66495466 10.63121223 -1.29642487 5.66495371 10.63121223 -0.27187467 6.12186337 8.67997742 -1.40271235
		 6.12186241 8.67997742 -0.16558743 6.49808407 6.48879862 -1.40744829 5.75761461 11.56633949 -1.042438984
		 6.25939894 11.49797821 -1.022928238 6.30363369 11.23231602 -1.022928238 6.49457502 11.18655777 -0.31347799
		 6.68622494 10.78237152 -0.27187395 7.29925537 9.044511795 -0.1702919 7.083529949 8.66493034 -0.160851
		 7.76531267 4.57032871 -1.40744805 8.092391014 4.28142881 -1.3935101 7.44110155 6.62041807 -1.40744853
		 7.083529949 8.66493034 -1.40744805 7.29925585 9.044511795 -1.39800668 6.68622446 10.78237152 -1.29642463
		 6.49457502 11.18655777 -1.27376318 8.25004101 2.3467803 -0.19437313 8.25004196 2.3467803 -1.37368631
		 8.24134064 4.46837997 -1.69005609 8.24134159 4.46837997 0.12199593 8.0053081512 6.71151352 -1.70336771
		 8.0052919388 6.71151114 0.13529205 7.50092077 8.91069317 -1.69778061 7.50093555 8.91069508 0.12970591
		 6.83750153 10.83075523 -1.56793261 6.83702612 10.83360958 -0.00057554245 6.63282585 11.31353664 -0.16655731
		 6.540205 11.43349266 -0.5294919 6.10900307 11.62484837 -1.042438745 7.76531219 4.57032871 -0.160851
		 7.44110203 6.62041807 -0.160851 7.90890026 2.64029932 -1.11290264 7.33032084 9.055123329 0.12393761
		 7.11429119 8.67555714 0.13541126 6.71289063 10.81722546 -0.0013051033 6.50591278 11.3139286 -0.18815851
		 7.47314882 6.62286234 0.13527632 7.79877281 4.56465578 0.13512897 7.79878759 4.56465864 -1.70320177
		 7.4731493 6.62286234 -1.70333695 7.11429167 8.67555809 -1.70347095 7.33026218 9.055113792 -1.69202924
		 6.71348381 10.81365967 -1.56741095 6.41662645 11.41366577 -0.53373337 6.49808359 6.48879862 -0.16085076
		 7.90889835 2.64029908 -0.45539522 7.71752357 3.61028957 -0.48688602 8.029619217 3.36215711 -0.36175966
		 7.9960103 2.72970009 -0.45541096 7.71752405 3.61028957 -1.081413507 8.029619217 3.36215734 -1.20653844
		 7.99601078 2.72970009 -1.1128881;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 0 0 2 3 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 1 11 12 0 12 13 1 13 14 0 14 11 1 15 16 0 16 17 1 17 18 0 18 15 1 19 20 0 21 19 1
		 22 19 0 21 23 0 23 22 0 21 24 0 25 21 0 25 26 0 26 23 0 26 27 1 27 28 0 28 23 1 27 29 0
		 29 30 1 30 28 0 29 31 0 31 32 1 32 30 0 31 33 0 25 34 0 35 25 1 35 36 0 36 26 0 28 37 0
		 37 22 0 30 38 1 38 37 0 32 39 1 39 38 0 40 39 0 41 42 0 42 15 1 15 41 1 43 41 0 15 33 0
		 33 43 1 44 43 0 31 44 1 31 45 1 45 44 0 29 46 1 46 45 0 27 47 0 47 46 0 36 47 0 48 49 0
		 49 50 0 50 51 1 51 48 0 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1
		 57 55 0 56 3 0 3 58 1 58 57 0 2 59 0 59 58 0 34 60 0 60 35 0 20 24 0 61 62 0 12 61 1
		 4 61 0 11 4 1 11 5 0 63 17 0 16 10 0 10 63 1 42 10 0 64 65 0 65 55 1 55 64 1 66 64 0
		 57 66 1 67 66 0 58 67 0 65 68 0 68 53 1 68 69 0 69 51 1 69 7 0 7 51 1 6 48 0 6 9 0
		 9 49 0 8 70 0 70 50 1 50 8 1 70 71 0 71 52 1 71 72 0 72 54 1 72 73 0 73 54 1 73 74 0
		 74 56 1 74 0 0 1 75 0 75 59 1 75 67 0 5 10 1 71 43 1 70 41 0 8 42 0 44 72 0 45 73 0
		 46 74 1 47 0 1 36 1 0 36 22 0 22 75 1 40 62 0 65 40 0 64 39 0 66 38 1 67 37 1 18 13 0
		 12 15 1 12 76 0 76 33 1 76 32 0 14 77 0 77 5 1 77 63 0 13 78 0 78 79 0 79 14 1 79 80 0
		 80 77 0 18 81 0 81 78 0 81 82 0 82 79 0 63 83 0 83 82 0 82 17 1 80 83 0 61 69 0 35 19 0
		 60 20 0 34 24 0 76 62 1;
	setAttr ".ed[166:167]" 62 68 1 32 40 0;
	setAttr -s 86 -ch 336 ".fc[0:85]" -type "polyFaces" 
		f 4 0 1 3 2
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 -93 -128
		mu 0 4 8 9 10 11
		f 4 10 11 12 13
		mu 0 4 12 13 14 15
		f 4 14 15 16 17
		mu 0 4 16 17 18 19
		f 4 19 18 83 -24
		mu 0 4 20 21 22 23
		f 4 20 -20 21 22
		mu 0 4 24 21 20 25
		f 4 24 23 -165 -38
		mu 0 4 26 20 23 27
		f 4 -22 -25 25 26
		mu 0 4 25 20 28 29
		f 4 -27 27 28 29
		mu 0 4 25 30 31 32
		f 4 -29 30 31 32
		mu 0 4 33 31 34 35
		f 4 -32 33 34 35
		mu 0 4 36 34 37 38
		f 4 -35 36 -144 144
		mu 0 4 39 37 40 41
		f 4 38 37 81 82
		mu 0 4 42 43 44 45
		f 4 -26 -39 39 40
		mu 0 4 46 47 48 49
		f 4 -23 -30 41 42
		mu 0 4 24 25 50 51
		f 4 -42 -33 43 44
		mu 0 4 51 52 53 54
		f 4 -44 -36 45 46
		mu 0 4 54 55 56 57
		f 3 47 -46 167
		mu 0 3 58 57 59
		f 3 48 49 50
		mu 0 3 60 61 62
		f 4 51 -51 52 53
		mu 0 4 63 60 64 40
		f 4 54 -54 -37 55
		mu 0 4 65 63 40 37
		f 3 -56 56 57
		mu 0 3 66 37 67
		f 4 -57 -34 58 59
		mu 0 4 68 37 34 69
		f 4 -59 -31 60 61
		mu 0 4 70 34 31 71
		f 4 -61 -28 -41 62
		mu 0 4 72 31 73 74
		f 4 63 64 65 66
		mu 0 4 75 76 77 78
		f 4 -66 67 68 69
		mu 0 4 78 77 79 80
		f 4 -69 70 71 72
		mu 0 4 80 79 81 82
		f 4 -72 73 74 75
		mu 0 4 82 81 83 84
		f 4 -75 76 77 78
		mu 0 4 84 83 85 86
		f 4 -78 -4 79 80
		mu 0 4 86 85 87 88
		f 4 85 84 -166 -143
		mu 0 4 13 89 90 41
		f 4 86 -86 -11 87
		mu 0 4 4 91 13 12
		f 3 -88 88 -5
		mu 0 3 4 12 5
		f 4 89 -16 90 91
		mu 0 4 92 93 94 95
		f 4 -91 -15 -50 92
		mu 0 4 96 97 98 99
		f 3 93 94 95
		mu 0 3 100 101 102
		f 4 96 -96 -76 97
		mu 0 4 103 100 102 104
		f 4 98 -98 -79 99
		mu 0 4 105 103 104 106
		f 4 -95 100 101 -73
		mu 0 4 102 101 107 108
		f 4 -102 102 103 -70
		mu 0 4 108 107 109 110
		f 3 -104 104 105
		mu 0 3 110 109 7
		f 4 -67 -106 -7 106
		mu 0 4 111 110 7 6
		f 4 107 108 -64 -107
		mu 0 4 6 112 113 111
		f 3 109 110 111
		mu 0 3 114 115 116
		f 4 -9 -112 -65 -109
		mu 0 4 117 118 119 120
		f 4 -111 112 113 -68
		mu 0 4 121 115 122 123
		f 4 -114 114 115 -71
		mu 0 4 124 125 126 127
		f 3 -116 116 117
		mu 0 3 127 126 128
		f 4 -74 -118 118 119
		mu 0 4 129 127 128 130
		f 4 -77 -120 120 -3
		mu 0 4 3 129 130 0
		f 4 121 122 -80 -2
		mu 0 4 1 131 132 2
		f 4 123 -100 -81 -123
		mu 0 4 133 105 106 134
		f 4 124 -10 -108 -6
		mu 0 4 5 135 136 6
		f 4 125 -55 128 -115
		mu 0 4 137 63 138 126
		f 4 -52 -126 -113 126
		mu 0 4 60 63 139 115
		f 4 -49 -127 -110 127
		mu 0 4 140 60 115 141
		f 4 -117 -129 -58 129
		mu 0 4 128 126 142 143
		f 4 -119 -130 -60 130
		mu 0 4 130 128 144 145
		f 4 -121 -131 -62 131
		mu 0 4 0 130 146 147
		f 4 -1 -132 -63 132
		mu 0 4 1 0 148 149
		f 4 -122 -133 133 134
		mu 0 4 150 1 151 24
		f 4 -21 -134 -40 162
		mu 0 4 21 24 152 153
		f 4 136 135 166 -101
		mu 0 4 101 58 154 107
		f 4 -48 -137 -94 137
		mu 0 4 57 58 101 100
		f 4 -47 -138 -97 138
		mu 0 4 54 57 100 103
		f 4 -45 -139 -99 139
		mu 0 4 51 54 103 105
		f 4 -43 -140 -124 -135
		mu 0 4 24 51 105 155
		f 4 140 -12 141 -18
		mu 0 4 156 14 13 157
		f 4 -142 142 143 -53
		mu 0 4 158 13 41 40
		f 4 -89 -14 145 146
		mu 0 4 5 12 15 159
		f 4 -125 -147 147 -92
		mu 0 4 160 5 161 92
		f 4 -13 148 149 150
		mu 0 4 15 14 162 163
		f 4 -146 -151 151 152
		mu 0 4 164 15 163 165
		f 4 -141 153 154 -149
		mu 0 4 14 166 167 162
		f 4 -155 155 156 -150
		mu 0 4 162 168 169 163
		f 4 -152 -157 -159 -161
		mu 0 4 165 163 170 171
		f 4 -90 157 158 159
		mu 0 4 172 92 173 174
		f 4 -17 -160 -156 -154
		mu 0 4 175 176 177 178
		f 4 -148 -153 160 -158
		mu 0 4 92 179 165 180
		f 4 161 -103 -167 -85
		mu 0 4 181 109 107 182
		f 4 -105 -162 -87 -8
		mu 0 4 7 109 183 4
		f 4 -163 -83 163 -19
		mu 0 4 21 184 185 22
		f 4 -164 -82 164 -84
		mu 0 4 22 186 187 23
		f 4 -168 -145 165 -136
		mu 0 4 58 59 41 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Shin_Geo" -p "Left_Middle_Fore_Arm_Geo";
	rename -uid "2B513BD0-42AC-D200-C253-EF997A216E2D";
createNode mesh -n "Left_Middle_Arm_Shin_GeoShape" -p "|Spider_Rig|SpiderBot_Geo|Left_Middle_Arm_Geo|Left_Middle_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo";
	rename -uid "FA0CFDE2-4910-E3EB-2D2D-E8ADCA9A7925";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:105]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 237 ".uvst[0].uvsp[0:236]" -type "float2" 0.091770999 0.369551
		 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097
		 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197
		 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999
		 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386
		 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551
		 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197
		 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801
		 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501
		 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572
		 0.65227503 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001
		 0.65341401 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499
		 0.73260999 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703
		 0.125136 0.65086901 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297
		 0.074359 0.58401501 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402
		 0.063110001 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301
		 0.10611 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899
		 0.116622 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499
		 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903
		 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099
		 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749
		 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503
		 0.21557599 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702
		 0.29026499 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401
		 0.29699001 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703
		 0.183137 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901
		 0.18320601 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699
		 0.198421 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265
		 0.64977902 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359
		 0.58401501 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001
		 0.65320301 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498
		 0.093028001 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001
		 0.130492 0.53603703 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001
		 0.29699001 0.65341401 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503
		 0.29158199 0.55224901 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002
		 0.306741 0.48896801 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999
		 0.29026499 0.91377503 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001
		 0.097764999 0.46727601 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703
		 0.061469 0.83352 0.14167701 0.83245897 0.119689 0.75301498 0.14167701 0.83245897
		 0.061469 0.83352 0.063110001 0.75552702 0.14167701 0.83245897 0.119689 0.75301498
		 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903 0.180035 0.54325098
		 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002 0.52486098 0.198421
		 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401 0.24582 0.55150002
		 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499 0.73260999
		 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099 0.74019098
		 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622 0.768843 0.21557599
		 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297
		 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918
		 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689 0.75301498 0.135295
		 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401
		 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801
		 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702
		 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999
		 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352
		 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101 0.92042899 0.091770999 0.369551
		 0.099601001 0.36329001 0.158557 0.94473398 0.138069 0.95506698 0.058373999 0.917386
		 0.062306002 0.89308703 0.138069 0.95506698 0.158557 0.94473398 0.138069 0.95506698
		 0.069045 0.97977501 0.046569001 0.95226097 0.058373999 0.917386 0.058373999 0.917386
		 0.046569001 0.95226097;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".vt[0:118]"  8.40855789 3.22082591 -0.38730478 8.4085989 3.22048998 -0.78624058
		 8.39312458 4.48307276 -0.78734732 8.17418671 9.40712929 -0.30919218 8.15572357 9.41332817 -0.79163456
		 7.6248436 9.33782673 -0.79161882 7.60346603 9.34514713 -0.35243845 8.22426701 4.47506762 -0.24621058
		 8.23955727 3.21877241 -0.38730478 8.39306259 4.48353386 -0.24619675 6.72832203 4.40235233 -0.78745151
		 6.8950448 4.43009138 -0.78745103 6.89500427 4.43042707 -0.40927958 6.72828054 4.40268755 -0.40925002
		 8.40334892 9.85107994 -0.79199266 8.16975975 9.93040848 -0.79208183 8.18820858 9.92420578 -0.30950403
		 7.23728561 10.24707317 -0.7924552 7.21590996 10.25439358 -0.35312557 8.40864372 3.2201333 -1.18517494
		 8.17429638 9.40629101 -1.2740469 7.60356617 9.34437084 -1.23082972 8.22437859 4.47412252 -1.32849813
		 8.39317226 4.48260927 -1.32848167 8.23964214 3.21807933 -1.18520689 6.72835922 4.40203714 -1.16562247
		 6.89508295 4.42977619 -1.16562223 8.18830204 9.92336464 -1.27464342 7.21601009 10.25361824 -1.23181462
		 6.85542965 5.25020075 0.046466351 7.43482971 5.39657736 0.14258194 7.052110672 6.55599022 0.14054966
		 6.50729084 6.48853302 0.047766209 6.80888748 7.60616493 0.13848972 6.38485432 7.49525261 0.044031143
		 6.15246248 6.42767382 -0.7892592 6.49993706 5.19105101 -0.40996695 6.15240669 6.42800665 -0.40945959
		 6.028371334 7.43259764 -0.79014039 6.028330803 7.43293333 -0.41316438 5.70772791 9.70691872 -0.79215717
		 5.70769405 9.7072134 -0.4494803 7.57001543 5.40670776 0.28181028 8.29773521 5.23940945 0.2265234
		 8.12460327 6.73212719 0.25708675 7.38072443 6.62030172 0.26588535 7.85530376 7.96574593 0.24135542
		 7.1789093 7.67328072 0.27465439 8.43996334 5.94979286 -0.4016161 8.4004364 5.95143509 -0.7886157
		 8.70062828 6.82729006 -0.78933334 8.69870377 6.83894205 -0.20345592 8.67863464 8.0974617 -0.056877613
		 7.9651022 7.97573996 0.073774815 8.39709663 6.78878641 -0.070456028 8.32943153 5.26015091 -0.10426426
		 8.3295002 5.25956249 -0.78800297 6.49999332 5.19071817 -0.78815365 6.33151579 7.48542976 -0.41317916
		 5.87332773 9.74085426 -0.4494946 8.16124535 5.24356174 -0.10468197 8.40386009 9.85101318 -0.067842484
		 7.017573357 10.32175159 -0.13720322 8.52549839 9.098105431 -0.044360638 7.50007534 8.90804672 0.02468729
		 7.7313652 7.92962503 0.0020551682 6.76038694 5.23945141 -0.15810299 7.6280632 5.42744541 -0.15545797
		 7.66149616 5.42202568 0.14053583 8.16134739 5.22584534 0.1276145 6.3315115 7.48564291 -0.16212106
		 7.24710369 7.68037319 -0.15744352 7.27785301 7.69125462 0.13881731 7.72887135 7.93704796 0.13293171
		 6.76040649 5.23924017 -0.40998292 8.67870903 8.096831322 -0.79042339 8.52527046 9.09783268 -0.79131985
		 5.87334728 9.74055672 -0.79215574 8.23961258 3.21843886 -0.78625488 7.017085075 10.32186317 -0.79254484
		 7.43502235 5.3949604 -1.7190516 6.85559559 5.24875021 -1.62278867 7.05231905 6.55437613 -1.71909785
		 6.50747108 6.48708534 -1.62631392 6.80907774 7.60456896 -1.71890354 6.38502026 7.49380302 -1.62435722
		 5.70776129 9.70662594 -1.13480473 6.028411865 7.43226194 -1.16711593 6.15248871 6.42733526 -1.16905856
		 6.50003099 5.19040203 -1.16632462 8.29795361 5.23764706 -1.80251384 7.57025051 5.40484047 -1.85825038
		 8.12481785 6.73029947 -1.83572364 7.38095379 6.61847734 -1.84447718 7.85554218 7.96394396 -1.82217312
		 7.17914057 7.6714344 -1.85509729 8.69882393 6.83793402 -1.37522554 8.67878819 8.096179962 -1.52399874
		 8.4400444 5.94912148 -1.17558527 8.32958126 5.25897646 -1.47175789 8.39725685 6.78754902 -1.50822306
		 7.96528912 7.97425032 -1.65459275 6.33159447 7.4847784 -1.16713095 5.8733964 9.74026585 -1.13481903
		 8.16138363 5.24236393 -1.47135472 7.017715931 10.32061863 -1.44787192 8.40400696 9.84975338 -1.51611185
		 8.52565479 9.096803665 -1.53827906 7.50025129 8.90661907 -1.60720778 7.7315321 7.92826033 -1.5828414
		 8.16153812 5.22424936 -1.7036345 7.66170168 5.42043209 -1.71699071 7.62820101 5.42635489 -1.42101216
		 6.7605238 5.2383604 -1.41821837 6.33163261 7.48454952 -1.41818929 7.24723959 7.67928219 -1.42299795
		 7.27805948 7.68964005 -1.71927619 7.72906256 7.93545198 -1.7137351 6.76048565 5.23858976 -1.1663537;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 4 0 4 5 1 5 6 0 6 3 0 7 8 0 8 0 0 0 9 0
		 9 7 1 10 11 1 11 12 0 12 13 0 13 10 0 14 15 1 15 16 0 17 18 0 18 6 0 5 17 1 1 19 0
		 20 21 0 21 5 0 4 20 0 22 23 1 23 19 0 19 24 0 24 22 0 10 25 0 25 26 0 26 11 0 27 15 0
		 21 28 0 28 17 0 29 30 0 30 31 0 31 32 1 32 29 1 31 33 0 33 34 0 34 32 1 36 37 1 37 35 1
		 38 35 1 37 39 1 39 38 1 40 38 1 39 41 0 41 40 0 42 43 0 43 44 0 44 45 1 45 42 0 44 46 0
		 46 47 0 47 45 0 30 42 0 45 31 1 47 33 0 48 49 0 49 50 1 50 51 1 51 48 0 52 51 0 53 46 0
		 44 54 1 54 53 0 44 55 0 55 48 1 48 54 0 43 55 0 55 56 1 56 49 1 55 9 0 9 2 1 2 56 1
		 34 39 0 37 32 1 36 29 0 35 57 1 57 36 1 13 36 0 57 10 1 58 59 0 59 41 0 39 58 0 60 7 0
		 55 60 0 61 62 0 63 61 0 62 64 0 64 63 1 64 53 1 64 65 0 65 53 0 36 66 1 66 29 1 66 67 0
		 67 30 1 67 68 0 68 42 1 68 69 0 69 43 0 39 70 1 70 58 0 34 70 1 71 70 0 33 71 1 72 71 0
		 47 72 1 73 72 0 46 73 1 65 73 0 69 60 0 36 74 0 74 66 0 12 74 0 52 63 0 53 52 1 54 51 1
		 50 75 1 75 52 1 75 76 1 76 63 1 76 14 1 14 61 0 59 77 0 77 40 1 8 78 0 78 1 1 17 79 1
		 79 62 0 62 18 1 16 18 0 16 61 1 16 3 0 15 4 1 80 81 0 82 80 0 81 83 1 83 82 1 84 82 0
		 83 85 1 85 84 0 40 86 0 86 87 0 87 38 1 87 88 1 88 35 1 88 89 1 90 91 0 92 90 0 91 93 0
		 93 92 1 94 92 0 93 95 0 95 94 0 91 80 0 82 93 1 84 95 0 96 97 0 50 96 1 98 96 0 49 98 0
		 99 98 1 100 98 0 99 92 0;
	setAttr ".ed[166:224]" 92 100 1 101 100 0 94 101 0 99 90 0 56 99 1 23 99 0
		 2 23 1 87 85 0 83 88 1 81 89 0 57 89 1 89 25 0 102 87 0 86 103 0 103 102 0 104 99 0
		 22 104 0 105 106 0 106 107 0 107 108 1 108 105 0 101 108 1 101 109 0 109 108 0 90 110 0
		 110 111 0 111 91 1 111 112 0 112 80 1 112 113 0 113 81 1 113 89 1 102 114 0 114 87 1
		 114 85 1 114 115 0 115 84 1 115 116 0 116 95 1 116 117 0 117 94 1 117 109 0 104 110 0
		 113 118 0 118 89 0 118 26 0 107 97 0 97 101 1 96 100 1 106 14 0 76 107 1 75 97 1
		 77 103 0 78 24 0 28 27 0 105 28 1 105 79 0 27 106 1 20 27 0;
	setAttr -s 106 -ch 410 ".fc[0:105]" -type "polyFaces" 
		f 4 0 1 -74 -9
		mu 0 4 0 1 2 3
		f 4 2 3 4 5
		mu 0 4 4 5 6 7
		f 4 6 7 8 9
		mu 0 4 8 9 0 3
		f 4 10 11 12 13
		mu 0 4 10 11 12 13
		f 4 14 15 133 -125
		mu 0 4 14 15 16 17
		f 4 16 17 -5 18
		mu 0 4 18 19 7 6
		f 4 -2 19 -25 -173
		mu 0 4 2 1 20 21
		f 4 20 21 -4 22
		mu 0 4 22 23 6 5
		f 4 23 24 25 26
		mu 0 4 24 25 26 27
		f 4 27 28 29 -11
		mu 0 4 10 28 29 11
		f 4 30 -15 -216 -224
		mu 0 4 30 15 14 31
		f 4 -19 -22 31 32
		mu 0 4 18 6 32 33
		f 4 33 34 35 36
		mu 0 4 34 35 36 37
		f 4 -36 37 38 39
		mu 0 4 37 36 38 39
		f 4 40 41 78 79
		mu 0 4 40 41 42 43
		f 4 42 -42 43 44
		mu 0 4 44 42 41 45
		f 4 45 -45 46 47
		mu 0 4 46 44 45 47
		f 4 48 49 50 51
		mu 0 4 48 49 50 51
		f 4 -51 52 53 54
		mu 0 4 51 50 52 53
		f 4 55 -52 56 -35
		mu 0 4 35 48 51 36
		f 4 -57 -55 57 -38
		mu 0 4 36 51 53 38
		f 4 58 59 60 61
		mu 0 4 54 55 56 57
		f 4 62 -61 119 120
		mu 0 4 58 57 56 59
		f 4 63 -53 64 65
		mu 0 4 60 52 50 61
		f 4 -65 66 67 68
		mu 0 4 61 50 62 54
		f 4 -59 -68 70 71
		mu 0 4 55 54 62 63
		f 3 -50 69 -67
		mu 0 3 50 49 62
		f 4 -71 72 73 74
		mu 0 4 63 62 3 2
		f 4 75 -44 76 -40
		mu 0 4 39 45 41 37
		f 4 -77 -41 77 -37
		mu 0 4 37 41 40 34
		f 4 80 -80 81 -14
		mu 0 4 13 40 43 10
		f 4 82 83 -47 84
		mu 0 4 64 65 47 45
		f 4 85 -10 -73 86
		mu 0 4 66 8 3 62
		f 4 88 87 89 90
		mu 0 4 67 17 68 69
		f 4 -91 91 117 116
		mu 0 4 67 69 60 58
		f 3 -92 92 93
		mu 0 3 60 69 70
		f 3 -78 94 95
		mu 0 3 34 40 71
		f 4 -34 -96 96 97
		mu 0 4 35 34 71 72
		f 4 -56 -98 98 99
		mu 0 4 48 35 72 73
		f 4 -49 -100 100 101
		mu 0 4 49 48 73 74
		f 3 -85 102 103
		mu 0 3 64 45 75
		f 3 -103 -76 104
		mu 0 3 75 45 39
		f 4 105 -105 -39 106
		mu 0 4 76 75 39 38
		f 4 107 -107 -58 108
		mu 0 4 77 76 38 53
		f 4 109 -109 -54 110
		mu 0 4 78 77 53 52
		f 4 111 -111 -64 -94
		mu 0 4 70 78 52 60
		f 4 112 -87 -70 -102
		mu 0 4 74 66 62 49
		f 3 113 114 -95
		mu 0 3 40 79 71
		f 4 115 -114 -81 -13
		mu 0 4 12 79 40 13
		f 4 -63 -118 -66 118
		mu 0 4 57 58 60 61
		f 3 -119 -69 -62
		mu 0 3 57 61 54
		f 4 -117 -121 121 122
		mu 0 4 67 58 59 80
		f 4 -89 -123 123 124
		mu 0 4 17 67 80 14
		f 4 -84 125 126 -48
		mu 0 4 47 65 81 46
		f 4 -8 127 128 -1
		mu 0 4 0 9 82 1
		f 4 129 130 131 -17
		mu 0 4 18 83 68 19
		f 4 132 -132 -88 -134
		mu 0 4 16 19 68 17
		f 4 -133 134 -6 -18
		mu 0 4 19 16 4 7
		f 4 -16 135 -3 -135
		mu 0 4 16 15 5 4
		f 4 137 136 138 139
		mu 0 4 84 85 86 87
		f 4 140 -140 141 142
		mu 0 4 88 89 90 91
		f 4 143 144 145 -46
		mu 0 4 46 92 93 44
		f 4 -146 146 147 -43
		mu 0 4 44 94 95 42
		f 4 -148 148 -177 -79
		mu 0 4 42 96 97 43
		f 4 150 149 151 152
		mu 0 4 98 99 100 101
		f 4 153 -153 154 155
		mu 0 4 102 103 104 105
		f 4 -152 156 -138 157
		mu 0 4 106 107 108 109
		f 4 -155 -158 -141 158
		mu 0 4 110 111 112 113
		f 4 160 159 -218 -120
		mu 0 4 56 114 115 59
		f 4 161 -161 -60 162
		mu 0 4 116 117 56 55
		f 4 163 -163 -72 170
		mu 0 4 118 119 55 63
		f 4 164 -164 165 166
		mu 0 4 120 121 122 123
		f 4 167 -167 -154 168
		mu 0 4 124 125 126 127
		f 3 169 -151 -166
		mu 0 3 128 129 130
		f 4 171 -171 -75 172
		mu 0 4 131 132 63 2
		f 4 -147 173 -142 174
		mu 0 4 133 134 135 136
		f 4 -149 -175 -139 175
		mu 0 4 137 138 139 140
		f 4 -28 -82 176 177
		mu 0 4 141 10 43 142
		f 4 178 -145 179 180
		mu 0 4 143 144 145 146
		f 4 181 -172 -24 182
		mu 0 4 147 148 149 150
		f 4 183 184 185 186
		mu 0 4 151 152 153 154
		f 4 187 -186 212 213
		mu 0 4 155 156 157 158
		f 3 -188 188 189
		mu 0 3 159 160 161
		f 4 190 191 192 -150
		mu 0 4 162 163 164 165
		f 4 -193 193 194 -157
		mu 0 4 166 167 168 169
		f 4 -195 195 196 -137
		mu 0 4 170 171 172 173
		f 3 -197 197 -176
		mu 0 3 174 175 176
		f 3 -179 198 199
		mu 0 3 177 178 179
		f 3 -200 200 -174
		mu 0 3 180 181 182
		f 4 -201 201 202 -143
		mu 0 4 183 184 185 186
		f 4 -203 203 204 -159
		mu 0 4 187 188 189 190
		f 4 -205 205 206 -156
		mu 0 4 191 192 193 194
		f 4 -207 207 -189 -169
		mu 0 4 195 196 197 198
		f 4 -191 -170 -182 208
		mu 0 4 199 200 201 202
		f 3 209 210 -198
		mu 0 3 203 204 205
		f 4 -29 -178 -211 211
		mu 0 4 206 207 208 209
		f 4 -214 -160 214 -168
		mu 0 4 210 211 212 213
		f 3 -215 -162 -165
		mu 0 3 214 215 216
		f 4 215 -124 216 -185
		mu 0 4 217 14 80 218
		f 4 -217 -122 217 -213
		mu 0 4 219 80 59 220
		f 4 -144 -127 218 -180
		mu 0 4 221 46 81 222
		f 4 -20 -129 219 -26
		mu 0 4 223 1 82 224
		f 4 221 220 223 -184
		mu 0 4 225 226 227 228
		f 4 -33 -222 222 -130
		mu 0 4 18 229 230 83
		f 4 -32 -21 224 -221
		mu 0 4 231 232 233 234
		f 4 -225 -23 -136 -31
		mu 0 4 235 236 5 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Middle_Fore_Arm_Geo_parentConstraint1" -p "Left_Middle_Fore_Arm_Geo";
	rename -uid "E69B6985-464E-28AB-6726-FA9DDB4188BF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Elbow_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 10.235074010488571 -0.683812379489662 -7.7862556651532859 ;
	setAttr ".tg[0].tor" -type "double3" 96.327014761143317 -80.236032986195184 -6.4192395285281503 ;
	setAttr ".lr" -type "double3" -8.0756271209034069e-17 7.5538173684758519e-15 8.1501713712502619e-15 ;
	setAttr ".rst" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rsrr" -type "double3" -8.0756271209034082e-17 7.5538173684758519e-15 8.1501713712502619e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Middle_Arm_Toe_1_Geo" -p "Left_Middle_Arm_Geo";
	rename -uid "A5A7614A-44B0-601D-E5AA-268B2F86243B";
createNode transform -n "Left_Middle_Arm_Heel_to_Toe_Tip1_Geo" -p "Left_Middle_Arm_Toe_1_Geo";
	rename -uid "E584B5E3-4B67-DD6E-FD82-71BD90308D5E";
createNode mesh -n "Left_Middle_Arm_Heel_to_Toe_Tip1_GeoShape" -p "Left_Middle_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "2B1A590F-4433-6205-0EA6-EBA815B77F23";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Heel_to_Toe_Tip1_GeoShapeOrig" -p "Left_Middle_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "91FC47CB-45E7-6006-4091-2588DFDB10D0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  7.26446819 1.20791996 -0.7085557 7.0031065941 0.95617199 -0.38123345
		 6.92893505 1.297212 -0.27878952 7.21160507 1.42411494 -0.63526034 7.52220631 1.20959997 -0.52755833
		 7.30527401 0.95814598 -0.16905284 7.46932793 1.42579496 -0.4542768 7.23111629 1.29918599 -0.06659317;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 8 0 3 9
		f 4 -11 -3 11 -9
		mu 0 4 9 3 2 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Toe_Tip1_Geo" -p "Left_Middle_Arm_Toe_1_Geo";
	rename -uid "C5871336-4E95-8C07-3489-94A9FE361FC8";
createNode mesh -n "Left_Middle_Arm_Toe_Tip1_GeoShape" -p "Left_Middle_Arm_Toe_Tip1_Geo";
	rename -uid "12C2C744-432F-7CB3-787C-3885C8819C7E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Toe_Tip1_GeoShapeOrig" -p "Left_Middle_Arm_Toe_Tip1_Geo";
	rename -uid "0B672543-4FC9-3591-AA3D-37B977CE9403";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  6.028284073 0.68840098 0.0092115402 5.70158768 0.125286 0.96613979
		 5.66725636 0.215334 1.0043022633 7.16125298 1.11707401 1.034701109 6.46460104 0.220542 1.56417823
		 6.4896369 0.130431 1.5194819 6.3883934 1.45063806 -0.71312976 6.49591637 1.018206 -0.84450102
		 6.011357784 -8.3999999e-05 0.70406556 5.84332371 0.158214 0.94189095 6.23791122 0.66805202 0.13639545
		 6.2512455 0.25491899 0.1212194 6.66665268 0.62567401 -0.7641964 7.78269291 0.63293999 0.019488811
		 7.71346474 0.96324903 0.11499834 7.080754757 0.673554 0.72822738 7.09410429 0.26042101 0.71306658
		 6.46420002 0.162267 1.3778646 6.63221979 0.0039479998 1.14002466 5.91828156 1.10896802 0.16192126
		 7.91246033 1.027425051 0.15020514 7.82162666 1.45996201 0.29330826 7.27119637 0.69650698 0.88196158
		 6.5974412 0.95598298 -0.66870093;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 1 11 8 0 12 11 0 13 14 0 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0
		 2 4 0 3 19 1 19 2 0 6 19 0 0 19 1 1 5 0 20 21 0 21 3 0 3 22 1 22 20 0 5 22 0 10 0 1
		 9 1 1 9 17 0 17 5 1 22 15 1 18 8 0 10 23 0 23 12 0 21 6 0 20 7 0 7 23 1 20 14 1 14 23 0
		 13 12 0 11 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -21 -23
		mu 0 4 0 1 2 3
		f 4 2 3 28 -27
		mu 0 4 4 5 6 7
		f 4 4 5 22 -22
		mu 0 4 8 9 0 3
		f 4 6 7 8 9
		mu 0 4 10 11 12 13
		f 4 10 -9 35 36
		mu 0 4 14 13 12 15
		f 4 11 12 13 14
		mu 0 4 16 17 18 19
		f 4 -14 15 16 17
		mu 0 4 19 18 20 21
		f 4 18 -3 19 20
		mu 0 4 2 5 4 3
		f 4 21 -20 -26 37
		mu 0 4 8 3 4 22
		f 4 23 -4 -19 -2
		mu 0 4 23 24 5 2
		f 4 24 25 26 27
		mu 0 4 25 26 4 7
		f 4 29 -6 39 -36
		mu 0 4 27 28 29 30
		f 4 -1 -30 -8 30
		mu 0 4 31 32 33 34
		f 4 31 32 -24 -31
		mu 0 4 35 36 37 38
		f 4 33 -13 -41 -28
		mu 0 4 39 40 41 42
		f 4 -16 -34 -29 -33
		mu 0 4 43 44 45 46
		f 4 34 -10 43 -18
		mu 0 4 21 10 13 19
		f 4 -7 -35 -17 -32
		mu 0 4 11 10 21 20
		f 4 -5 -38 -25 38
		mu 0 4 47 8 48 49
		f 4 -40 -39 40 41
		mu 0 4 50 51 52 53
		f 4 -42 -12 42 -37
		mu 0 4 15 17 16 14
		f 4 -11 -43 -15 -44
		mu 0 4 13 14 16 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Middle_Arm_Toe_1_Geo_parentConstraint1" -p "Left_Middle_Arm_Toe_1_Geo";
	rename -uid "2F23E6A7-4B70-5561-A2D1-A7864A5C502D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Thumb1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.6524980941327119 -5.7387954753921875 1.6647794565889023 ;
	setAttr ".tg[0].tor" -type "double3" 60.04409836491957 19.234726423936532 119.75188305100821 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-14 1.9083328088781101e-14 -6.3611093629270304e-15 ;
	setAttr ".rst" -type "double3" 0 6.6613381477509392e-16 -1.5543122344752192e-15 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-14 1.9083328088781101e-14 -6.3611093629270304e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Middle_Arm_Toe_2_Geo" -p "Left_Middle_Arm_Geo";
	rename -uid "3F5DBF4D-4461-168F-269F-3B91BA821326";
createNode transform -n "Left_Middle_Arm_Heel_to_Toe_Tip2_Geo" -p "Left_Middle_Arm_Toe_2_Geo";
	rename -uid "5E369AC1-4B1E-899A-92CE-D3BEEF9E5D7D";
createNode mesh -n "Left_Middle_Arm_Heel_to_Toe_Tip2_GeoShape" -p "Left_Middle_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "61AE8002-4B8F-ACEA-2BE1-B08AE7E117FC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Heel_to_Toe_Tip2_GeoShapeOrig" -p "Left_Middle_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "F9FEE584-4019-3902-F4D1-2C83CDF1A961";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  7.91638088 1.14405894 -0.66225576 8.41365051 0.95846099 -0.62958717
		 8.5230608 1.43795395 -0.62958813 8.0022821426 1.543437 -0.66227055 7.91638088 1.14405894 -1.041177988
		 8.41365242 0.95846099 -1.073847771 8.0022983551 1.543437 -1.041178465 8.52304554 1.43795395 -1.073861599;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 12 13 14 15
		f 4 -11 -3 11 -9
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Toe_Tip2_Geo" -p "Left_Middle_Arm_Toe_2_Geo";
	rename -uid "3BBC0AF4-4FBD-C296-A6FC-59A8DDD21A8F";
createNode mesh -n "Left_Middle_Arm_Toe_Tip2_GeoShape" -p "Left_Middle_Arm_Toe_Tip2_Geo";
	rename -uid "53D355EF-4017-7C44-4CD0-E1919CE474DB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Toe_Tip2_GeoShapeOrig" -p "Left_Middle_Arm_Toe_Tip2_Geo";
	rename -uid "CB388EA5-4A46-9722-CB08-13AF745DB8B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801
		 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399
		 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501
		 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372
		 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331
		 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027
		 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001
		 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027
		 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625
		 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  9.57199669 0.50238299 0.062016487 10.80207729 0.122388 -0.27235889
		 11.039028168 0.32297999 -0.26551342 9.67101097 1.31556594 -1.76533079 11.03902626 0.32297999 -1.43777227
		 10.80207729 0.122388 -1.43092632 8.44995689 1.66221297 0.20198536 8.23498535 0.83185202 0.18970394
		 8.23503113 0.83185202 -1.89288664 8.45000267 1.66221297 -1.90516615 8.34650326 0.769104 -0.031399727
		 9.55566216 0.474096 -0.2321763 8.34653282 0.769104 -1.67221284 9.57199669 0.50238299 -1.76530123
		 10.67631912 0.145992 -0.3953557 10.47230625 0.001701 -0.39537096 10.47229195 0.001701 -1.30816841
		 9.52398968 0.19378801 -0.23219156 9.52398872 0.19378801 -1.47133064 8.31861591 0.494403 -1.67221189
		 8.31858635 0.494403 -0.031400204 10.67631912 0.145992 -1.30816793 9.55566311 0.474096 -1.4713459
		 9.67102623 1.31556594 0.062060833;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 3 0 7 10 1 10 11 0 12 8 1 8 13 0 14 11 0 15 14 0 15 16 0 15 17 0 17 18 1 18 16 0
		 19 18 0 11 17 1 20 17 0 10 20 0 21 16 0 19 12 0 12 22 0 22 18 1 22 21 0 2 4 0 3 23 1
		 23 2 0 6 23 0 0 23 1 1 5 0 3 13 1 5 13 0 11 0 1 14 1 1 14 21 0 21 5 1 13 22 1 9 6 0
		 8 7 0 12 10 0 19 20 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -30 -32
		mu 0 4 0 1 2 3
		f 4 2 3 34 -34
		mu 0 4 4 5 6 7
		f 4 4 5 31 -31
		mu 0 4 8 9 10 11
		f 4 6 7 33 -12
		mu 0 4 12 13 14 15
		f 4 8 9 35 -6
		mu 0 4 16 17 18 19
		f 4 10 11 39 -25
		mu 0 4 20 21 22 23
		f 4 13 12 19 -16
		mu 0 4 24 25 26 27
		f 4 -14 14 -23 -38
		mu 0 4 28 29 30 31
		f 4 -15 15 16 17
		mu 0 4 32 33 34 35
		f 4 18 -17 -21 -44
		mu 0 4 36 37 38 39
		f 4 20 -20 -10 21
		mu 0 4 40 41 42 43
		f 4 22 -18 -26 26
		mu 0 4 44 45 46 47
		f 4 23 24 25 -19
		mu 0 4 48 49 50 51
		f 4 27 -3 28 29
		mu 0 4 52 53 54 55
		f 4 30 -29 -8 40
		mu 0 4 56 57 58 13
		f 4 32 -4 -28 -2
		mu 0 4 59 60 61 62
		f 4 -1 -36 -13 36
		mu 0 4 63 64 18 65
		f 4 37 38 -33 -37
		mu 0 4 66 67 68 69
		f 4 -27 -40 -35 -39
		mu 0 4 70 71 22 72
		f 4 -5 -41 -7 41
		mu 0 4 73 74 13 75
		f 4 -9 -42 -11 42
		mu 0 4 76 77 78 79
		f 4 -43 -24 43 -22
		mu 0 4 80 81 82 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Middle_Arm_Toe_2_Geo_parentConstraint1" -p "Left_Middle_Arm_Toe_2_Geo";
	rename -uid "34759B61-4061-EA8B-25EF-CFB1205E9429";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_MidFinger1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.4403903008102281 -0.75762412924604094 -4.8874788288403872 ;
	setAttr ".tg[0].tor" -type "double3" 90.21282274544734 -27.661983267201755 -1.2312377096028009 ;
	setAttr ".lr" -type "double3" -3.1805546814635152e-15 1.2722218725854064e-14 6.361109362927032e-15 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 -6.6613381477509392e-16 1.1102230246251565e-16 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635152e-15 1.2722218725854064e-14 6.361109362927032e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Middle_Arm_Toe_3_Geo" -p "Left_Middle_Arm_Geo";
	rename -uid "93FF1518-4659-99B0-2169-BB9B103F59DF";
createNode transform -n "Left_Middle_Arm_Heel_to_Toe_Tip3_Geo" -p "Left_Middle_Arm_Toe_3_Geo";
	rename -uid "9A06734E-4775-961E-5EFD-D992090DA9DA";
createNode mesh -n "Left_Middle_Arm_Heel_to_Toe_Tip3_GeoShape" -p "Left_Middle_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "46337146-42AB-C197-5870-82AAB680805A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Heel_to_Toe_Tip3_GeoShapeOrig" -p "Left_Middle_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "EF01373E-4E18-1079-C9E7-2BBB0BB93842";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  7.58592606 1.20556796 -0.9845736 7.39900303 0.95963699 -1.36325932
		 7.33776569 1.30235696 -1.46862912 7.54201698 1.42298102 -1.06017065 7.31317425 1.20521104 -0.82714248
		 7.079224586 0.95923799 -1.1786685 7.26925039 1.42262399 -0.90275502 7.017971039 1.30195796 -1.28402352;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 12 13 14 15
		f 4 -11 -3 11 -9
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Toe_Tip3_Geo" -p "Left_Middle_Arm_Toe_3_Geo";
	rename -uid "085D2E9C-4B56-A4C4-0A2F-C98796F49EDC";
createNode mesh -n "Left_Middle_Arm_Toe_Tip3_GeoShape" -p "Left_Middle_Arm_Toe_Tip3_Geo";
	rename -uid "28398F21-478E-165B-066B-5D9F9A550C02";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Middle_Arm_Toe_Tip3_GeoShapeOrig" -p "Left_Middle_Arm_Toe_Tip3_Geo";
	rename -uid "FA7DEF1F-4F71-10BA-A800-C4A27C3518CF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699 0.164968
		 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  7.45554972 0.70742702 -2.41568398 6.68982077 0.15760501 -3.17760849
		 6.66975927 0.248367 -3.22347808 6.048538685 1.12881303 -1.81424558 5.8259511 0.24729601 -2.73640776
		 5.85582781 0.156555 -2.69622588 7.95968056 1.45960498 -1.77339554 8.032976151 1.024863005 -1.6269505
		 6.79673529 0.026292 -2.78814292 6.65207481 0.18849599 -3.038381338 7.25183296 0.68529302 -2.279531
		 7.2594943 0.27190799 -2.26717758 7.88773537 0.63075602 -1.51182532 6.70662737 0.62924403 -0.83009744
		 6.64957619 0.961128 -0.92819142 6.35986805 0.68415898 -1.76467896 6.36752987 0.27077401 -1.75229478
		 5.99502468 0.187677 -2.65910244 6.13968611 0.025451999 -2.40886331 7.36394501 1.13049304 -2.57354641
		 6.53384161 1.022951961 -0.76167178 6.44287539 1.45767295 -0.89789915 6.14020348 0.70574701 -1.65644288
		 7.83068562 0.96261901 -1.60991931;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 1 11 8 0 12 11 0 13 14 0 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0
		 2 4 0 3 19 1 19 2 0 6 19 0 0 19 1 1 5 0 20 21 0 21 3 0 3 22 1 22 20 0 5 22 0 10 0 1
		 9 1 1 9 17 0 17 5 1 22 15 1 18 8 0 10 23 0 23 12 0 21 6 0 20 7 0 7 23 1 20 14 1 14 23 0
		 13 12 0 11 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -21 -23
		mu 0 4 0 1 2 3
		f 4 2 3 28 -27
		mu 0 4 4 5 6 7
		f 4 4 5 22 -22
		mu 0 4 8 9 10 11
		f 4 6 7 8 9
		mu 0 4 12 13 14 15
		f 4 10 -9 35 36
		mu 0 4 16 17 18 19
		f 4 11 12 13 14
		mu 0 4 20 21 22 23
		f 4 -14 15 16 17
		mu 0 4 24 25 26 27
		f 4 18 -3 19 20
		mu 0 4 28 29 30 31
		f 4 21 -20 -26 37
		mu 0 4 32 33 34 35
		f 4 23 -4 -19 -2
		mu 0 4 36 37 38 39
		f 4 24 25 26 27
		mu 0 4 40 41 42 43
		f 4 29 -6 39 -36
		mu 0 4 44 45 46 47
		f 4 -1 -30 -8 30
		mu 0 4 48 49 50 51
		f 4 31 32 -24 -31
		mu 0 4 52 53 54 55
		f 4 33 -13 -41 -28
		mu 0 4 56 57 58 59
		f 4 -16 -34 -29 -33
		mu 0 4 60 61 62 63
		f 4 34 -10 43 -18
		mu 0 4 64 65 66 67
		f 4 -7 -35 -17 -32
		mu 0 4 68 69 70 71
		f 4 -5 -38 -25 38
		mu 0 4 72 73 74 75
		f 4 -40 -39 40 41
		mu 0 4 76 77 78 79
		f 4 -42 -12 42 -37
		mu 0 4 80 81 82 83
		f 4 -11 -43 -15 -44
		mu 0 4 84 85 86 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Middle_Arm_Toe_3_Geo_parentConstraint1" -p "Left_Middle_Arm_Toe_3_Geo";
	rename -uid "C7DE23E0-41DC-FB9A-AB1A-BB83B98683BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Pinky1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.0958329246544705 6.9242623665331209 0.52587973280649014 ;
	setAttr ".tg[0].tor" -type "double3" 120.72430181282688 16.370301311710932 -115.36988421169799 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-14 -1.2722218725854067e-14 -6.3611093629270367e-15 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 0 1.1102230246251565e-16 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-14 -1.2722218725854067e-14 -6.3611093629270367e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Back_Arm_Geo" -p "SpiderBot_Geo";
	rename -uid "1AACE144-4F7A-6DD4-A18D-BC8D65348182";
createNode transform -n "Left_Back_Upper_Arm_Geo" -p "Left_Back_Arm_Geo";
	rename -uid "77D671D1-448D-8652-0735-18965FF8309B";
createNode transform -n "Left_Back_Arm_Knee_Geo" -p "Left_Back_Upper_Arm_Geo";
	rename -uid "07D978B5-48E3-9D10-F681-AA8F9917CCBC";
createNode mesh -n "Left_Back_Arm_Knee_GeoShape" -p "Left_Back_Arm_Knee_Geo";
	rename -uid "613F2415-4765-ED28-3EF3-6FB2AB2EBFCE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Knee_GeoShapeOrig" -p "Left_Back_Arm_Knee_Geo";
	rename -uid "8D67AB05-4423-DC58-457F-0382A994EA65";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.93326402 0.55445099
		 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202 0.922194 0.56268197
		 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199 0.91118097 0.58714199
		 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099 0.93326402 0.55445099
		 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802 0.91465998 0.53527802
		 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202 0.90329701 0.54415202
		 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701 0.90489799 0.55673701
		 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199 0.894777 0.57577199
		 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202 0.90329701 0.54415202
		 0.91465998 0.53527802;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  4.25446796 11.42905045 -5.61282492 4.30698204 11.61914063 -5.70772028
		 4.18110561 11.44362068 -5.45900774 4.27207279 11.77295208 -5.62338591 4.12433147 11.59234619 -5.3957715
		 4.17685127 11.78244591 -5.49064684 3.91095185 11.7767334 -5.18493319 3.99656129 11.94407463 -5.33804941
		 3.42727828 11.77369308 -5.45868349 3.49992871 11.58842278 -5.74917078 3.52636123 11.43950653 -5.82957983
		 3.62059951 11.42505836 -5.97159529 3.67310166 11.61516571 -6.066470623 3.6173203 11.76882935 -5.99397707
		 3.55244327 11.778512 -5.84406424 3.51288724 11.94103527 -5.61179876;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 0 0 1 3 0 3 2 1 4 2 0 3 5 0 5 4 1
		 6 4 0 5 7 0 7 6 0 6 8 0 8 9 0 9 4 1 9 10 0 10 2 0 10 11 0 11 0 0 12 11 0 10 13 1
		 13 12 0 9 14 1 14 13 0 8 15 0 15 14 0 15 7 0 5 14 0 3 13 0 1 12 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 11 12 -8
		mu 0 4 6 8 9 4
		f 4 -13 13 14 -5
		mu 0 4 4 10 11 0
		f 4 -15 15 16 -2
		mu 0 4 0 12 13 1
		f 4 -1 -17 -18 -28
		mu 0 4 2 1 14 15
		f 4 17 -16 18 19
		mu 0 4 16 17 18 19
		f 4 -19 -14 20 21
		mu 0 4 20 21 22 23
		f 4 -21 -12 22 23
		mu 0 4 24 25 26 27
		f 4 24 -9 25 -24
		mu 0 4 28 7 5 29
		f 4 -26 -6 26 -22
		mu 0 4 30 5 3 31
		f 4 -27 -3 27 -20
		mu 0 4 32 3 2 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Back_Arm_Thigh_Geo" -p "Left_Back_Upper_Arm_Geo";
	rename -uid "0DC26EFC-4D60-AFED-459D-2E80C85DD22D";
createNode mesh -n "Left_Back_Arm_Thigh_GeoShape" -p "Left_Back_Arm_Thigh_Geo";
	rename -uid "F68D80B2-4CD7-C999-01A2-B6B9B916AEB4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" 0.88565999 0.55092603
		 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499
		 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802
		 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802
		 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701
		 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478
		 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  4.31654358 11.96355629 -5.94604158 4.32564926 11.8895874 -5.96130991
		 3.87833428 11.88676739 -6.21449518 3.86923623 11.96074486 -6.19920969 2.38724017 12.76262474 -2.20631409
		 2.099269629 12.63384247 -2.055562973 2.32265878 11.9498682 -2.083184242 2.51743937 12.71749878 -2.43582439
		 2.45285749 11.90473938 -2.3126936 2.061627626 12.16018677 -1.98379612 1.58399963 11.9452343 -2.50123692
		 1.7141974 11.90011597 -2.73077583 1.63116312 12.15747261 -2.22744513 1.64859319 12.75797462 -2.62438822
		 1.77877355 12.71285629 -2.85389519 1.66880488 12.63112831 -2.29921198 2.53027368 11.82197762 -2.34120226
		 2.60602641 12.77523232 -2.48562908 2.568012 11.94446564 -2.84261036 2.61266875 12.50626755 -2.92774963
		 3.16601682 12.47644234 -3.90509748 1.69957185 11.8167572 -2.8113637 2.10883307 11.94157028 -3.10251093
		 3.16512561 12.063486099 -3.8989377 1.77532458 12.7700119 -2.95579052 2.15347767 12.50338936 -3.18762875
		 2.70684457 12.47355652 -4.16498041 2.70594668 12.060592651 -4.1588378 3.21165872 12.2402935 -5.054317951
		 3.22249532 11.89284706 -5.069636822 3.39132953 12.15483093 -5.37081957 3.4143002 11.70099449 -5.40639544
		 3.45696378 12.01320076 -5.81122446 4.20874786 12.13134384 -5.41762304 4.19562817 12.017843246 -5.39315367
		 3.87347913 11.70388985 -5.14649439 3.47008157 12.12670231 -5.83569384 3.8505013 12.15771675 -5.11093569
		 3.68168664 11.89572525 -4.80975771 3.67083097 12.24317837 -4.79443502;
	setAttr -s 77 ".ed[0:76]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 6 4 0 7 4 0
		 6 8 0 8 7 0 6 9 0 10 6 0 10 11 0 11 8 0 10 12 0 13 10 0 13 14 0 14 11 0 13 15 0 4 13 0
		 7 14 0 8 16 0 16 17 0 17 7 0 16 18 0 18 19 1 19 17 0 20 19 0 11 21 0 21 16 0 21 22 0
		 22 18 1 23 18 0 14 24 0 24 21 0 24 25 0 25 22 1 25 26 0 26 27 1 27 22 0 26 28 0 28 29 1
		 29 27 0 28 30 0 30 31 1 31 29 0 32 31 0 17 14 1 17 24 0 19 25 0 0 33 0 33 34 0 34 1 0
		 35 34 0 34 32 0 32 2 0 32 36 0 36 3 0 30 36 0 36 33 1 37 33 0 12 15 0 5 9 0 15 5 0
		 12 9 0 38 35 0 39 38 1 23 38 0 39 20 0 20 23 1 37 39 0 35 37 1 35 31 0 38 29 1 23 27 1
		 30 37 1 28 39 1 26 20 1;
	setAttr -s 39 -ch 154 ".fc[0:38]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 5 4 61 -10
		mu 0 4 4 5 6 7
		f 4 6 -6 7 8
		mu 0 4 8 5 4 9
		f 4 10 9 -64 -14
		mu 0 4 10 4 7 11
		f 4 -8 -11 11 12
		mu 0 4 9 4 12 13
		f 4 14 13 60 -18
		mu 0 4 14 15 16 17
		f 4 -12 -15 15 16
		mu 0 4 18 19 20 21
		f 4 18 17 62 -5
		mu 0 4 5 22 23 6
		f 4 -16 -19 -7 19
		mu 0 4 24 25 5 8
		f 4 -9 20 21 22
		mu 0 4 8 9 26 27
		f 4 -22 23 24 25
		mu 0 4 27 26 28 29
		f 4 26 -25 -32 -69
		mu 0 4 30 29 28 31
		f 4 -13 27 28 -21
		mu 0 4 32 33 34 35
		f 4 -29 29 30 -24
		mu 0 4 35 34 36 37
		f 4 31 -31 -39 -74
		mu 0 4 38 37 36 39
		f 4 -17 32 33 -28
		mu 0 4 40 41 42 43
		f 4 -34 34 35 -30
		mu 0 4 44 45 46 47
		f 4 -36 36 37 38
		mu 0 4 48 49 50 51
		f 4 -38 39 40 41
		mu 0 4 51 52 53 54
		f 4 -41 42 43 44
		mu 0 4 54 53 55 56
		f 4 45 -44 57 -56
		mu 0 4 57 56 55 58
		f 3 -20 -23 46
		mu 0 3 59 60 61
		f 3 -47 47 -33
		mu 0 3 59 61 62
		f 4 -48 -26 48 -35
		mu 0 4 62 61 63 64
		f 4 -37 -49 -27 -77
		mu 0 4 65 64 63 66
		f 4 -1 49 50 51
		mu 0 4 1 0 67 68
		f 4 52 -51 -60 -71
		mu 0 4 69 70 67 71
		f 4 -2 -52 53 54
		mu 0 4 72 73 74 75
		f 4 -46 -54 -53 71
		mu 0 4 76 75 74 77
		f 4 -3 -55 55 56
		mu 0 4 78 79 57 80
		f 4 -4 -57 58 -50
		mu 0 4 81 82 83 84
		f 4 59 -59 -58 74
		mu 0 4 85 84 83 86
		f 4 -63 -61 63 -62
		mu 0 4 6 87 88 7
		f 4 65 64 70 69
		mu 0 4 89 90 91 92
		f 4 66 -66 67 68
		mu 0 4 93 94 95 30
		f 4 -72 -65 72 -45
		mu 0 4 76 77 96 97
		f 4 -73 -67 73 -42
		mu 0 4 97 96 38 39
		f 4 -75 -43 75 -70
		mu 0 4 85 86 98 99
		f 4 -76 -40 76 -68
		mu 0 4 99 98 65 66;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Back_Upper_Arm_Geo_parentConstraint1" -p "Left_Back_Upper_Arm_Geo";
	rename -uid "B6F3A204-4955-0BF0-ADB7-54967CA65E74";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Shoulder_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3457351813446383 -1.4591286635807137 -12.222645385630475 ;
	setAttr ".tg[0].tor" -type "double3" 85.164276902744362 -2.5320763765042709 -46.35249014695772 ;
	setAttr ".lr" -type "double3" 1.0142952942221308e-12 -4.7071398022322939e-12 -1.7111384186274137e-12 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-16 3.5527136788005009e-15 -6.6613381477509392e-16 ;
	setAttr ".rsrr" -type "double3" 2.2489917831974729e-15 -6.746975349592416e-15 -1.3241718894150478e-31 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Back_Fore_Arm_Geo" -p "Left_Back_Arm_Geo";
	rename -uid "E260AEDC-44C6-29BA-F7EB-6DB3DFED0EA8";
createNode transform -n "Left_Back_Arm_Ankle_Geo" -p "Left_Back_Fore_Arm_Geo";
	rename -uid "3604D800-48D0-4642-B984-0592FC6A62AD";
createNode mesh -n "Left_Back_Arm_Ankle_GeoShape" -p "Left_Back_Arm_Ankle_Geo";
	rename -uid "57682B21-4915-072D-4175-73B6E4776C71";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.77148402 0.87109399
		 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601
		 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125
		 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699
		 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402 0.74804699
		 0.92773402 0.74609399 0.92773402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  4.65499926 2.75867558 -6.71535492 4.39671707 2.71841383 -6.27864075
		 4.1078105 2.72060013 -6.44932985 4.36609268 2.76086187 -6.88604259 4.85867739 2.88198662 -6.70534468
		 4.51681376 2.82869673 -6.12732887 4.55952978 3.22930813 -6.065140247 4.41810369 3.50751257 -6.3125391
		 4.13159513 3.50740337 -6.48202276 3.89697766 3.23082829 -6.45684052 3.9497602 2.83124542 -6.46247292
		 4.29162455 2.88453531 -7.04049015 4.23884249 3.2841177 -7.034855843 4.90139437 3.28259802 -6.64315748
		 4.59258413 3.53470993 -6.60753822 4.30605459 3.53459978 -6.77701759;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 4 5 0 5 1 0
		 6 5 0 7 8 0 8 9 0 9 6 0 6 7 0 9 10 0 10 5 0 10 2 0 10 11 0 11 3 0 12 11 0 11 4 0
		 13 4 0 12 13 0 14 13 0 12 15 0 15 14 0 8 15 0 12 9 0 14 7 0 6 13 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -1 4 5 6
		mu 0 4 1 0 4 5
		f 4 7 -6 -20 -28
		mu 0 4 6 5 4 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 6
		f 4 -11 12 13 -8
		mu 0 4 6 10 11 5
		f 4 -14 14 -2 -7
		mu 0 4 5 11 2 1
		f 4 -3 -15 15 16
		mu 0 4 12 2 11 13
		f 4 17 -16 -13 -26
		mu 0 4 14 13 11 10
		f 4 -4 -17 18 -5
		mu 0 4 0 3 13 4
		f 4 19 -19 -18 20
		mu 0 4 7 4 13 15
		f 4 21 -21 22 23
		mu 0 4 16 7 15 17
		f 4 24 -23 25 -10
		mu 0 4 9 18 14 10
		f 4 26 -12 27 -22
		mu 0 4 16 8 6 7
		f 4 -9 -27 -24 -25
		mu 0 4 9 8 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Back_Arm_Ankle_to_Heel_Geo" -p "Left_Back_Fore_Arm_Geo";
	rename -uid "C4B8E1A5-409A-177A-EC39-36894C70A864";
createNode mesh -n "Left_Back_Arm_Ankle_to_Heel_GeoShape" -p "Left_Back_Arm_Ankle_to_Heel_Geo";
	rename -uid "9D9F5D96-4BAD-4E6D-D708-5194635B940B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.33493757 1.63770366 -6.88750887 4.12057066 1.6355238 -6.52877188
		 4.11746883 2.81864572 -6.52343655 4.33183622 2.82082558 -6.88217354 4.47931767 1.63549733 -6.31438208
		 4.47622299 2.81581926 -6.30905867 4.6936841 1.63767719 -6.67311811 4.6905899 2.81799889 -6.66779518;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 4 6 0 6 7 0 7 5 0 6 0 0 3 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 4 5 6 7
		f 4 7 8 9 -6
		mu 0 4 8 9 10 11
		f 4 10 -4 11 -9
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Back_Arm_Heel_Geo" -p "Left_Back_Fore_Arm_Geo";
	rename -uid "C3D9C994-4DC2-C902-FFE5-1AB6C082CDD5";
createNode mesh -n "Left_Back_Arm_Heel_GeoShape" -p "Left_Back_Arm_Heel_Geo";
	rename -uid "F7B84BCF-4994-D613-EDDF-FB8D2A432E44";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Heel_GeoShapeOrig" -p "Left_Back_Arm_Heel_Geo";
	rename -uid "9E8CDB7E-41BF-F62E-88F0-BF8BB19A95DB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  4.35511303 1.68340564 -7.22122908 4.35511303 1.13248229 -7.22122908
		 3.82047534 1.68340564 -6.75421476 3.82047534 1.13248229 -6.75421476 4.099423885 1.68340564 -6.10140371
		 4.099423885 1.13248229 -6.10140371 4.80646992 1.68340564 -6.16500092 4.80646992 1.13248229 -6.16500092
		 4.96449471 1.68340564 -6.85707808 4.96449471 1.13246155 -6.85707808;
	setAttr -s 17 ".ed[0:16]"  0 1 0 2 0 0 1 3 0 3 2 0 4 2 0 3 5 0 5 4 0
		 6 4 0 5 7 0 7 6 0 8 6 0 7 9 0 9 8 0 0 8 0 9 1 0 5 1 1 2 6 1;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 4 1 0 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 -10 11 12
		mu 0 4 8 6 7 9
		f 4 13 -13 14 -1
		mu 0 4 10 8 9 11
		f 4 -12 -9 15 -15
		mu 0 4 12 13 14 15
		f 3 -16 -6 -3
		mu 0 3 15 14 16
		f 4 -14 -2 16 -11
		mu 0 4 8 10 0 6
		f 3 -17 -5 -8
		mu 0 3 6 0 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Back_Arm_Calf_Geo" -p "Left_Back_Fore_Arm_Geo";
	rename -uid "84041176-4722-812B-5F62-1BB6EC64ECB2";
createNode mesh -n "Left_Back_Arm_Calf_GeoShape" -p "Left_Back_Arm_Calf_Geo";
	rename -uid "A63CC2CA-441A-0A34-C0B1-A28FB86E8374";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.52856898 0.97485399
		 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137
		 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501
		 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499
		 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303
		 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899
		 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699
		 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899
		 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698
		 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699
		 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797 0.69657397
		 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999
		 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302
		 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399 0.96858698
		 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413 0.82681203
		 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099 0.57310098
		 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303
		 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898
		 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104
		 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763
		 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401
		 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098
		 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288 0.56166101 0.49178499
		 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201 0.56129599 0.49112499
		 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498
		 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949
		 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699
		 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399
		 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366
		 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502
		 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401
		 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803
		 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398
		 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401
		 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302
		 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101
		 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599
		 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801
		 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999
		 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398
		 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398
		 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801
		 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101
		 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899
		 0.996889 0.58270597 0.99704999 0.51962101 0.69467402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  3.62607312 11.4738121 -6.49707794 3.88927722 11.58312225 -6.25211668
		 3.94828963 11.59235859 -6.36326504 3.67016268 11.46087933 -6.61883783 5.18591547 4.27707148 -6.73683023
		 4.96611929 2.42815399 -6.66013718 5.095124722 2.3053813 -6.63442469 5.45054007 4.26973629 -6.62472439
		 3.89150357 4.27062559 -7.52133465 4.076928139 2.30596113 -7.21997786 4.16394615 2.42861176 -7.12147093
		 4.82696199 3.15644789 -6.15307617 4.6368556 4.11665058 -5.7596035 4.46801519 3.61737633 -6.12008476
		 4.6777854 3.16727209 -6.23232746 3.55262303 4.11726856 -6.38315201 3.79628444 3.15703583 -6.74582386
		 3.93981624 3.16769361 -6.65673685 3.94868493 3.61767244 -6.4187541 4.24199009 11.68110561 -5.87554646
		 4.18925381 11.82146358 -5.74430418 3.93583989 11.63237 -5.34325933 4.25257874 11.41055584 -5.89422655
		 3.94642854 11.36182213 -5.36193991 4.010837555 11.79306126 -5.43410015 3.53520966 11.63259888 -5.57366371
		 3.54579878 11.3620491 -5.59234428 3.25381088 11.28095818 -5.59173822 4.092680931 11.28047943 -5.10929823
		 3.2672317 10.86255074 -5.6612978 4.16224241 10.86204052 -5.14657116 3.31822968 8.86407089 -5.96680021
		 4.39893723 8.86345482 -5.34527779 3.40712166 6.63159943 -6.13315392 3.57614112 11.79330921 -5.6841135
		 3.84135938 11.68133354 -6.10595083 3.85194802 11.41078472 -6.1246314 4.5652771 11.34800053 -5.93098545
		 4.67996883 10.92561913 -6.046735287 4.99997187 9.12778759 -6.39960957 4.88374186 8.76530361 -6.17878532
		 3.95796371 4.59599066 -7.092983246 4.12128305 4.27767897 -7.34910679 3.88483119 6.68231773 -6.96374989
		 3.79475927 8.76592445 -6.80506563 3.9274838 9.1283989 -7.016403675 3.78495741 10.92612934 -6.56146097
		 3.72640562 11.34847927 -6.41342497 5.16359377 2.32104301 -6.73954535 4.13338804 2.32163095 -7.33202362
		 3.94490981 4.45266819 -7.64167881 5.5278554 4.45176506 -6.73131895 3.91267705 6.72520638 -7.61028433
		 5.518857 6.72428894 -6.68654299 3.76072788 8.97677803 -7.33254766 5.35716295 8.97586632 -6.41444635
		 3.62559652 10.96178055 -6.8331418 4.99467039 10.96390629 -6.045513153 4.7683382 11.46347809 -5.9869771
		 4.41015005 11.59209442 -6.097647667 3.75455785 11.82171154 -5.99431801 5.046946526 4.59536982 -6.46670294
		 4.97381449 6.68169641 -6.33747053 4.20321703 2.64565802 -6.92598629 5.27300978 9.13561344 -6.27962065
		 5.1584053 8.77316952 -6.057512283 4.93119001 10.95817566 -5.93661356 4.68596411 11.47484207 -5.88739681
		 5.24864721 6.68123531 -6.21677351 5.32200527 4.5866375 -6.34670496 3.71611166 4.58755493 -7.27028036
		 3.64249969 6.68215132 -7.14047861 3.55202293 8.77408695 -6.98135185 3.68661571 9.13651276 -7.19189644
		 3.56323719 10.95532513 -6.72366285 4.34373045 11.5828619 -5.99073935 4.49610472 6.63097858 -5.50687313
		 4.77759171 2.64532995 -6.59565783 4.6964736 3.63576078 -6.5172801 4.95119667 3.35961866 -6.70754433
		 4.82506514 2.72756815 -6.67815542 4.17711592 3.6360569 -6.81596613 4.21322775 3.36003971 -7.13195419
		 4.25071669 2.72789574 -7.0084676743;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 0 0 2 3 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 1 11 12 0 12 13 1 13 14 0 14 11 1 15 16 0 16 17 1 17 18 0 18 15 1 19 20 0 21 19 1
		 22 19 0 21 23 0 23 22 0 21 24 0 25 21 0 25 26 0 26 23 0 26 27 1 27 28 0 28 23 1 27 29 0
		 29 30 1 30 28 0 29 31 0 31 32 1 32 30 0 31 33 0 25 34 0 35 25 1 35 36 0 36 26 0 28 37 0
		 37 22 0 30 38 1 38 37 0 32 39 1 39 38 0 40 39 0 41 42 0 42 15 1 15 41 1 43 41 0 15 33 0
		 33 43 1 44 43 0 31 44 1 31 45 1 45 44 0 29 46 1 46 45 0 27 47 0 47 46 0 36 47 0 48 49 0
		 49 50 0 50 51 1 51 48 0 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1
		 57 55 0 56 3 0 3 58 1 58 57 0 2 59 0 59 58 0 34 60 0 60 35 0 20 24 0 61 62 0 12 61 1
		 4 61 0 11 4 1 11 5 0 63 17 0 16 10 0 10 63 1 42 10 0 64 65 0 65 55 1 55 64 1 66 64 0
		 57 66 1 67 66 0 58 67 0 65 68 0 68 53 1 68 69 0 69 51 1 69 7 0 7 51 1 6 48 0 6 9 0
		 9 49 0 8 70 0 70 50 1 50 8 1 70 71 0 71 52 1 71 72 0 72 54 1 72 73 0 73 54 1 73 74 0
		 74 56 1 74 0 0 1 75 0 75 59 1 75 67 0 5 10 1 71 43 1 70 41 0 8 42 0 44 72 0 45 73 0
		 46 74 1 47 0 1 36 1 0 36 22 0 22 75 1 40 62 0 65 40 0 64 39 0 66 38 1 67 37 1 18 13 0
		 12 15 1 12 76 0 76 33 1 76 32 0 14 77 0 77 5 1 77 63 0 13 78 0 78 79 0 79 14 1 79 80 0
		 80 77 0 18 81 0 81 78 0 81 82 0 82 79 0 63 83 0 83 82 0 82 17 1 80 83 0 61 69 0 35 19 0
		 60 20 0 34 24 0 76 62 1;
	setAttr ".ed[166:167]" 62 68 1 32 40 0;
	setAttr -s 86 -ch 336 ".fc[0:85]" -type "polyFaces" 
		f 4 0 1 3 2
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 -93 -128
		mu 0 4 8 9 10 11
		f 4 10 11 12 13
		mu 0 4 12 13 14 15
		f 4 14 15 16 17
		mu 0 4 16 17 18 19
		f 4 19 18 83 -24
		mu 0 4 20 21 22 23
		f 4 20 -20 21 22
		mu 0 4 24 21 20 25
		f 4 24 23 -165 -38
		mu 0 4 26 20 23 27
		f 4 -22 -25 25 26
		mu 0 4 25 20 28 29
		f 4 -27 27 28 29
		mu 0 4 25 30 31 32
		f 4 -29 30 31 32
		mu 0 4 33 31 34 35
		f 4 -32 33 34 35
		mu 0 4 36 34 37 38
		f 4 -35 36 -144 144
		mu 0 4 39 37 40 41
		f 4 38 37 81 82
		mu 0 4 42 43 44 45
		f 4 -26 -39 39 40
		mu 0 4 46 47 48 49
		f 4 -23 -30 41 42
		mu 0 4 24 25 50 51
		f 4 -42 -33 43 44
		mu 0 4 51 52 53 54
		f 4 -44 -36 45 46
		mu 0 4 54 55 56 57
		f 3 47 -46 167
		mu 0 3 58 57 59
		f 3 48 49 50
		mu 0 3 60 61 62
		f 4 51 -51 52 53
		mu 0 4 63 60 64 40
		f 4 54 -54 -37 55
		mu 0 4 65 63 40 37
		f 3 -56 56 57
		mu 0 3 66 37 67
		f 4 -57 -34 58 59
		mu 0 4 68 37 34 69
		f 4 -59 -31 60 61
		mu 0 4 70 34 31 71
		f 4 -61 -28 -41 62
		mu 0 4 72 31 73 74
		f 4 63 64 65 66
		mu 0 4 75 76 77 78
		f 4 -66 67 68 69
		mu 0 4 78 77 79 80
		f 4 -69 70 71 72
		mu 0 4 80 79 81 82
		f 4 -72 73 74 75
		mu 0 4 82 81 83 84
		f 4 -75 76 77 78
		mu 0 4 84 83 85 86
		f 4 -78 -4 79 80
		mu 0 4 86 85 87 88
		f 4 85 84 -166 -143
		mu 0 4 13 89 90 41
		f 4 86 -86 -11 87
		mu 0 4 4 91 13 12
		f 3 -88 88 -5
		mu 0 3 4 12 5
		f 4 89 -16 90 91
		mu 0 4 92 93 94 95
		f 4 -91 -15 -50 92
		mu 0 4 96 97 98 99
		f 3 93 94 95
		mu 0 3 100 101 102
		f 4 96 -96 -76 97
		mu 0 4 103 100 102 104
		f 4 98 -98 -79 99
		mu 0 4 105 103 104 106
		f 4 -95 100 101 -73
		mu 0 4 102 101 107 108
		f 4 -102 102 103 -70
		mu 0 4 108 107 109 110
		f 3 -104 104 105
		mu 0 3 110 109 7
		f 4 -67 -106 -7 106
		mu 0 4 111 110 7 6
		f 4 107 108 -64 -107
		mu 0 4 6 112 113 111
		f 3 109 110 111
		mu 0 3 114 115 116
		f 4 -9 -112 -65 -109
		mu 0 4 117 118 119 120
		f 4 -111 112 113 -68
		mu 0 4 121 115 122 123
		f 4 -114 114 115 -71
		mu 0 4 124 125 126 127
		f 3 -116 116 117
		mu 0 3 127 126 128
		f 4 -74 -118 118 119
		mu 0 4 129 127 128 130
		f 4 -77 -120 120 -3
		mu 0 4 3 129 130 0
		f 4 121 122 -80 -2
		mu 0 4 1 131 132 2
		f 4 123 -100 -81 -123
		mu 0 4 133 105 106 134
		f 4 124 -10 -108 -6
		mu 0 4 5 135 136 6
		f 4 125 -55 128 -115
		mu 0 4 137 63 138 126
		f 4 -52 -126 -113 126
		mu 0 4 60 63 139 115
		f 4 -49 -127 -110 127
		mu 0 4 140 60 115 141
		f 4 -117 -129 -58 129
		mu 0 4 128 126 142 143
		f 4 -119 -130 -60 130
		mu 0 4 130 128 144 145
		f 4 -121 -131 -62 131
		mu 0 4 0 130 146 147
		f 4 -1 -132 -63 132
		mu 0 4 1 0 148 149
		f 4 -122 -133 133 134
		mu 0 4 150 1 151 24
		f 4 -21 -134 -40 162
		mu 0 4 21 24 152 153
		f 4 136 135 166 -101
		mu 0 4 101 58 154 107
		f 4 -48 -137 -94 137
		mu 0 4 57 58 101 100
		f 4 -47 -138 -97 138
		mu 0 4 54 57 100 103
		f 4 -45 -139 -99 139
		mu 0 4 51 54 103 105
		f 4 -43 -140 -124 -135
		mu 0 4 24 51 105 155
		f 4 140 -12 141 -18
		mu 0 4 156 14 13 157
		f 4 -142 142 143 -53
		mu 0 4 158 13 41 40
		f 4 -89 -14 145 146
		mu 0 4 5 12 15 159
		f 4 -125 -147 147 -92
		mu 0 4 160 5 161 92
		f 4 -13 148 149 150
		mu 0 4 15 14 162 163
		f 4 -146 -151 151 152
		mu 0 4 164 15 163 165
		f 4 -141 153 154 -149
		mu 0 4 14 166 167 162
		f 4 -155 155 156 -150
		mu 0 4 162 168 169 163
		f 4 -152 -157 -159 -161
		mu 0 4 165 163 170 171
		f 4 -90 157 158 159
		mu 0 4 172 92 173 174
		f 4 -17 -160 -156 -154
		mu 0 4 175 176 177 178
		f 4 -148 -153 160 -158
		mu 0 4 92 179 165 180
		f 4 161 -103 -167 -85
		mu 0 4 181 109 107 182
		f 4 -105 -162 -87 -8
		mu 0 4 7 109 183 4
		f 4 -163 -83 163 -19
		mu 0 4 21 184 185 22
		f 4 -164 -82 164 -84
		mu 0 4 22 186 187 23
		f 4 -168 -145 165 -136
		mu 0 4 58 59 41 188;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Middle_Arm_Shin_Geo" -p "Left_Back_Fore_Arm_Geo";
	rename -uid "83291A09-4DF9-3F6E-A94B-82B06F5788E9";
createNode mesh -n "Left_Middle_Arm_Shin_GeoShape" -p "|Spider_Rig|SpiderBot_Geo|Left_Back_Arm_Geo|Left_Back_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo";
	rename -uid "E22B493A-44D5-16A3-4C7E-1F8CFAC17FEF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:105]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 237 ".uvst[0].uvsp[0:236]" -type "float2" 0.091770999 0.369551
		 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097
		 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197
		 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999
		 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386
		 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551
		 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197
		 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801
		 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501
		 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572
		 0.65227503 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001
		 0.65341401 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499
		 0.73260999 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703
		 0.125136 0.65086901 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297
		 0.074359 0.58401501 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402
		 0.063110001 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301
		 0.10611 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899
		 0.116622 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499
		 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903
		 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099
		 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749
		 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503
		 0.21557599 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702
		 0.29026499 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401
		 0.29699001 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703
		 0.183137 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901
		 0.18320601 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699
		 0.198421 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265
		 0.64977902 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359
		 0.58401501 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001
		 0.65320301 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498
		 0.093028001 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001
		 0.130492 0.53603703 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001
		 0.29699001 0.65341401 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503
		 0.29158199 0.55224901 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002
		 0.306741 0.48896801 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999
		 0.29026499 0.91377503 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001
		 0.097764999 0.46727601 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703
		 0.061469 0.83352 0.14167701 0.83245897 0.119689 0.75301498 0.14167701 0.83245897
		 0.061469 0.83352 0.063110001 0.75552702 0.14167701 0.83245897 0.119689 0.75301498
		 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903 0.180035 0.54325098
		 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002 0.52486098 0.198421
		 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401 0.24582 0.55150002
		 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499 0.73260999
		 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099 0.74019098
		 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622 0.768843 0.21557599
		 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297
		 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918
		 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689 0.75301498 0.135295
		 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401
		 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801
		 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702
		 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999
		 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352
		 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101 0.92042899 0.091770999 0.369551
		 0.099601001 0.36329001 0.158557 0.94473398 0.138069 0.95506698 0.058373999 0.917386
		 0.062306002 0.89308703 0.138069 0.95506698 0.158557 0.94473398 0.138069 0.95506698
		 0.069045 0.97977501 0.046569001 0.95226097 0.058373999 0.917386 0.058373999 0.917386
		 0.046569001 0.95226097;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".vt[0:118]"  5.11239767 3.18501043 -7.039651394 4.76390648 3.18486834 -7.24008465
		 4.81009293 4.45386314 -7.32137012 5.33230925 9.41638088 -7.25796223 4.90189266 9.42443943 -7.48472977
		 4.63291502 9.39447594 -7.017025471 5.0061860085 9.40345287 -6.7783246 5.19794798 4.46013689 -6.9019413
		 5.027722359 3.19754171 -6.89240503 5.28281164 4.45406151 -7.049480438 3.97324634 4.51657534 -5.8664012
		 4.057898998 4.53002977 -6.013581276 4.38825035 4.53018188 -5.82358122 4.3036232 4.51672745 -5.67638493
		 5.044551849 9.84256935 -7.73309565 4.93101072 9.94238663 -7.53574944 5.36153746 9.93432522 -7.30890036
		 4.4777422 10.34084511 -6.74796247 4.85114479 10.34982109 -6.50918818 4.4154191 3.18470526 -7.44051838
		 4.48946476 9.4160099 -7.74273062 4.23887062 9.40310383 -7.21965027 4.25251436 4.45971775 -7.44570017
		 4.33738041 4.45366335 -7.59323835 4.33071518 3.19723606 -7.2932868 3.64289427 4.51644421 -6.056399822
		 3.72754717 4.52989817 -6.20358133 4.51843548 9.93395233 -7.79379702 4.083570004 10.34947205 -6.95066309
		 4.80220938 5.35644102 -5.62133503 5.18253136 5.45332623 -6.088261604 5.039613247 6.65044832 -5.84267473
		 4.68294239 6.62981224 -5.41005945 4.96174049 7.72584915 -5.71036625 4.66217089 7.65115356 -5.38047934
		 3.77150607 6.59976578 -5.51720095 4.22298813 5.32797813 -5.5368185 4.10327196 6.59991503 -5.32636881
		 3.75232124 7.61944485 -5.48461294 4.081628799 7.61959743 -5.29521275 3.68896246 9.93059731 -5.37622786
		 3.98830867 9.9307251 -5.20406199 5.37225819 5.45175409 -6.13673162 5.68091631 5.22097254 -6.78541374
		 5.68586445 6.73462486 -6.73073721 5.31637192 6.68658066 -6.070521832 5.59097338 7.99646473 -6.59628677
		 5.26880598 7.76121473 -5.96902227 5.23426962 5.92224264 -7.27777719 4.87648773 5.92749739 -7.437922
		 5.064190865 6.7809515 -7.76490641 5.57553625 6.79252434 -7.46976089 5.74825764 8.0577631 -7.47254848
		 5.49997044 7.99710035 -6.77678871 5.5385828 6.76814508 -7.13669062 5.40871811 5.23922491 -6.98073387
		 4.81143713 5.23896837 -7.32425451 3.89263082 5.32782745 -5.72684097 4.23564482 7.64612484 -5.56302071
		 4.072659969 9.95019913 -5.35074186 5.32345343 5.23709202 -6.83332109 5.67739677 9.84209538 -7.36972857
		 4.94342709 10.43446827 -6.233109 5.72605467 9.0756464 -7.40762949 5.26487732 8.97333622 -6.46626043
		 5.31832695 7.97101974 -6.6059413 4.57546854 5.35395718 -5.64058352 5.020231247 5.46778107 -6.40848255
		 5.29529858 5.45930481 -6.28847265 5.52565956 5.21917963 -6.71538448 4.45496702 7.64621401 -5.43690348
		 4.92578125 7.76266241 -6.24598837 5.20044661 7.77078485 -6.12472439 5.43173027 7.97862339 -6.53857327
		 4.35543585 5.35386944 -5.76712751 5.10746813 8.057488441 -7.84109354 5.073411465 9.075763702 -7.78267717
		 3.77331996 9.95006943 -5.52288723 4.67922688 3.19740105 -7.092857838 4.37070417 10.43494892 -6.56193066
		 3.55629992 5.45261383 -7.02357769 3.34402752 5.35580206 -6.4599905 3.41512513 6.64973736 -6.77700758
		 3.22055197 6.62917805 -6.25115299 3.33921313 7.72515535 -6.64355135 3.20474577 7.6505146 -6.21869993
		 3.38964176 9.93047142 -5.54837799 3.42301488 7.61929226 -5.67401266 3.43972516 6.59961271 -5.70800638
		 3.56227875 5.32769585 -5.91684008 3.90845418 5.22019482 -7.80484343 3.50281358 5.45092583 -7.21194649
		 3.85768771 6.73381472 -7.78219843 3.4728694 6.68578005 -7.13081408 3.78838897 7.99566364 -7.6330595
		 3.40836525 7.7604022 -7.039055347 4.5519371 6.79208565 -8.058477402 4.4666543 8.057192802 -8.20965576
		 4.55816889 5.92194653 -7.66663313 4.21414757 5.23871422 -7.6677947 4.28262758 6.76760578 -7.85905981
		 3.99015832 7.99645138 -7.64515829 3.57703018 7.64583969 -5.94181967 3.47399354 9.94994354 -5.6950593
		 4.12959337 5.23655844 -7.51995754 3.79849482 10.43397236 -6.89161777 4.41225863 9.84154034 -8.097360611
		 4.42104197 9.075070381 -8.15820122 3.83933663 8.97270107 -7.28615761 3.93384099 7.97042465 -7.40222406
		 3.92597175 5.21847391 -7.63543558 3.6726625 5.45861244 -7.22173882 3.91470933 5.46730518 -7.044325352
		 3.47469711 5.35347843 -6.27369356 3.35772347 7.64573145 -6.067965508 3.8202579 7.76218605 -6.88182974
		 3.57731509 7.77007198 -7.058274746 3.81857395 7.97792435 -7.46637154 3.69470835 5.3535862 -6.14714193;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 4 0 4 5 1 5 6 0 6 3 0 7 8 0 8 0 0 0 9 0
		 9 7 1 10 11 1 11 12 0 12 13 0 13 10 0 14 15 1 15 16 0 17 18 0 18 6 0 5 17 1 1 19 0
		 20 21 0 21 5 0 4 20 0 22 23 1 23 19 0 19 24 0 24 22 0 10 25 0 25 26 0 26 11 0 27 15 0
		 21 28 0 28 17 0 29 30 0 30 31 0 31 32 1 32 29 1 31 33 0 33 34 0 34 32 1 36 37 1 37 35 1
		 38 35 1 37 39 1 39 38 1 40 38 1 39 41 0 41 40 0 42 43 0 43 44 0 44 45 1 45 42 0 44 46 0
		 46 47 0 47 45 0 30 42 0 45 31 1 47 33 0 48 49 0 49 50 1 50 51 1 51 48 0 52 51 0 53 46 0
		 44 54 1 54 53 0 44 55 0 55 48 1 48 54 0 43 55 0 55 56 1 56 49 1 55 9 0 9 2 1 2 56 1
		 34 39 0 37 32 1 36 29 0 35 57 1 57 36 1 13 36 0 57 10 1 58 59 0 59 41 0 39 58 0 60 7 0
		 55 60 0 61 62 0 63 61 0 62 64 0 64 63 1 64 53 1 64 65 0 65 53 0 36 66 1 66 29 1 66 67 0
		 67 30 1 67 68 0 68 42 1 68 69 0 69 43 0 39 70 1 70 58 0 34 70 1 71 70 0 33 71 1 72 71 0
		 47 72 1 73 72 0 46 73 1 65 73 0 69 60 0 36 74 0 74 66 0 12 74 0 52 63 0 53 52 1 54 51 1
		 50 75 1 75 52 1 75 76 1 76 63 1 76 14 1 14 61 0 59 77 0 77 40 1 8 78 0 78 1 1 17 79 1
		 79 62 0 62 18 1 16 18 0 16 61 1 16 3 0 15 4 1 80 81 0 82 80 0 81 83 1 83 82 1 84 82 0
		 83 85 1 85 84 0 40 86 0 86 87 0 87 38 1 87 88 1 88 35 1 88 89 1 90 91 0 92 90 0 91 93 0
		 93 92 1 94 92 0 93 95 0 95 94 0 91 80 0 82 93 1 84 95 0 96 97 0 50 96 1 98 96 0 49 98 0
		 99 98 1 100 98 0 99 92 0;
	setAttr ".ed[166:224]" 92 100 1 101 100 0 94 101 0 99 90 0 56 99 1 23 99 0
		 2 23 1 87 85 0 83 88 1 81 89 0 57 89 1 89 25 0 102 87 0 86 103 0 103 102 0 104 99 0
		 22 104 0 105 106 0 106 107 0 107 108 1 108 105 0 101 108 1 101 109 0 109 108 0 90 110 0
		 110 111 0 111 91 1 111 112 0 112 80 1 112 113 0 113 81 1 113 89 1 102 114 0 114 87 1
		 114 85 1 114 115 0 115 84 1 115 116 0 116 95 1 116 117 0 117 94 1 117 109 0 104 110 0
		 113 118 0 118 89 0 118 26 0 107 97 0 97 101 1 96 100 1 106 14 0 76 107 1 75 97 1
		 77 103 0 78 24 0 28 27 0 105 28 1 105 79 0 27 106 1 20 27 0;
	setAttr -s 106 -ch 410 ".fc[0:105]" -type "polyFaces" 
		f 4 0 1 -74 -9
		mu 0 4 0 1 2 3
		f 4 2 3 4 5
		mu 0 4 4 5 6 7
		f 4 6 7 8 9
		mu 0 4 8 9 0 3
		f 4 10 11 12 13
		mu 0 4 10 11 12 13
		f 4 14 15 133 -125
		mu 0 4 14 15 16 17
		f 4 16 17 -5 18
		mu 0 4 18 19 7 6
		f 4 -2 19 -25 -173
		mu 0 4 2 1 20 21
		f 4 20 21 -4 22
		mu 0 4 22 23 6 5
		f 4 23 24 25 26
		mu 0 4 24 25 26 27
		f 4 27 28 29 -11
		mu 0 4 10 28 29 11
		f 4 30 -15 -216 -224
		mu 0 4 30 15 14 31
		f 4 -19 -22 31 32
		mu 0 4 18 6 32 33
		f 4 33 34 35 36
		mu 0 4 34 35 36 37
		f 4 -36 37 38 39
		mu 0 4 37 36 38 39
		f 4 40 41 78 79
		mu 0 4 40 41 42 43
		f 4 42 -42 43 44
		mu 0 4 44 42 41 45
		f 4 45 -45 46 47
		mu 0 4 46 44 45 47
		f 4 48 49 50 51
		mu 0 4 48 49 50 51
		f 4 -51 52 53 54
		mu 0 4 51 50 52 53
		f 4 55 -52 56 -35
		mu 0 4 35 48 51 36
		f 4 -57 -55 57 -38
		mu 0 4 36 51 53 38
		f 4 58 59 60 61
		mu 0 4 54 55 56 57
		f 4 62 -61 119 120
		mu 0 4 58 57 56 59
		f 4 63 -53 64 65
		mu 0 4 60 52 50 61
		f 4 -65 66 67 68
		mu 0 4 61 50 62 54
		f 4 -59 -68 70 71
		mu 0 4 55 54 62 63
		f 3 -50 69 -67
		mu 0 3 50 49 62
		f 4 -71 72 73 74
		mu 0 4 63 62 3 2
		f 4 75 -44 76 -40
		mu 0 4 39 45 41 37
		f 4 -77 -41 77 -37
		mu 0 4 37 41 40 34
		f 4 80 -80 81 -14
		mu 0 4 13 40 43 10
		f 4 82 83 -47 84
		mu 0 4 64 65 47 45
		f 4 85 -10 -73 86
		mu 0 4 66 8 3 62
		f 4 88 87 89 90
		mu 0 4 67 17 68 69
		f 4 -91 91 117 116
		mu 0 4 67 69 60 58
		f 3 -92 92 93
		mu 0 3 60 69 70
		f 3 -78 94 95
		mu 0 3 34 40 71
		f 4 -34 -96 96 97
		mu 0 4 35 34 71 72
		f 4 -56 -98 98 99
		mu 0 4 48 35 72 73
		f 4 -49 -100 100 101
		mu 0 4 49 48 73 74
		f 3 -85 102 103
		mu 0 3 64 45 75
		f 3 -103 -76 104
		mu 0 3 75 45 39
		f 4 105 -105 -39 106
		mu 0 4 76 75 39 38
		f 4 107 -107 -58 108
		mu 0 4 77 76 38 53
		f 4 109 -109 -54 110
		mu 0 4 78 77 53 52
		f 4 111 -111 -64 -94
		mu 0 4 70 78 52 60
		f 4 112 -87 -70 -102
		mu 0 4 74 66 62 49
		f 3 113 114 -95
		mu 0 3 40 79 71
		f 4 115 -114 -81 -13
		mu 0 4 12 79 40 13
		f 4 -63 -118 -66 118
		mu 0 4 57 58 60 61
		f 3 -119 -69 -62
		mu 0 3 57 61 54
		f 4 -117 -121 121 122
		mu 0 4 67 58 59 80
		f 4 -89 -123 123 124
		mu 0 4 17 67 80 14
		f 4 -84 125 126 -48
		mu 0 4 47 65 81 46
		f 4 -8 127 128 -1
		mu 0 4 0 9 82 1
		f 4 129 130 131 -17
		mu 0 4 18 83 68 19
		f 4 132 -132 -88 -134
		mu 0 4 16 19 68 17
		f 4 -133 134 -6 -18
		mu 0 4 19 16 4 7
		f 4 -16 135 -3 -135
		mu 0 4 16 15 5 4
		f 4 137 136 138 139
		mu 0 4 84 85 86 87
		f 4 140 -140 141 142
		mu 0 4 88 89 90 91
		f 4 143 144 145 -46
		mu 0 4 46 92 93 44
		f 4 -146 146 147 -43
		mu 0 4 44 94 95 42
		f 4 -148 148 -177 -79
		mu 0 4 42 96 97 43
		f 4 150 149 151 152
		mu 0 4 98 99 100 101
		f 4 153 -153 154 155
		mu 0 4 102 103 104 105
		f 4 -152 156 -138 157
		mu 0 4 106 107 108 109
		f 4 -155 -158 -141 158
		mu 0 4 110 111 112 113
		f 4 160 159 -218 -120
		mu 0 4 56 114 115 59
		f 4 161 -161 -60 162
		mu 0 4 116 117 56 55
		f 4 163 -163 -72 170
		mu 0 4 118 119 55 63
		f 4 164 -164 165 166
		mu 0 4 120 121 122 123
		f 4 167 -167 -154 168
		mu 0 4 124 125 126 127
		f 3 169 -151 -166
		mu 0 3 128 129 130
		f 4 171 -171 -75 172
		mu 0 4 131 132 63 2
		f 4 -147 173 -142 174
		mu 0 4 133 134 135 136
		f 4 -149 -175 -139 175
		mu 0 4 137 138 139 140
		f 4 -28 -82 176 177
		mu 0 4 141 10 43 142
		f 4 178 -145 179 180
		mu 0 4 143 144 145 146
		f 4 181 -172 -24 182
		mu 0 4 147 148 149 150
		f 4 183 184 185 186
		mu 0 4 151 152 153 154
		f 4 187 -186 212 213
		mu 0 4 155 156 157 158
		f 3 -188 188 189
		mu 0 3 159 160 161
		f 4 190 191 192 -150
		mu 0 4 162 163 164 165
		f 4 -193 193 194 -157
		mu 0 4 166 167 168 169
		f 4 -195 195 196 -137
		mu 0 4 170 171 172 173
		f 3 -197 197 -176
		mu 0 3 174 175 176
		f 3 -179 198 199
		mu 0 3 177 178 179
		f 3 -200 200 -174
		mu 0 3 180 181 182
		f 4 -201 201 202 -143
		mu 0 4 183 184 185 186
		f 4 -203 203 204 -159
		mu 0 4 187 188 189 190
		f 4 -205 205 206 -156
		mu 0 4 191 192 193 194
		f 4 -207 207 -189 -169
		mu 0 4 195 196 197 198
		f 4 -191 -170 -182 208
		mu 0 4 199 200 201 202
		f 3 209 210 -198
		mu 0 3 203 204 205
		f 4 -29 -178 -211 211
		mu 0 4 206 207 208 209
		f 4 -214 -160 214 -168
		mu 0 4 210 211 212 213
		f 3 -215 -162 -165
		mu 0 3 214 215 216
		f 4 215 -124 216 -185
		mu 0 4 217 14 80 218
		f 4 -217 -122 217 -213
		mu 0 4 219 80 59 220
		f 4 -144 -127 218 -180
		mu 0 4 221 46 81 222
		f 4 -20 -129 219 -26
		mu 0 4 223 1 82 224
		f 4 221 220 223 -184
		mu 0 4 225 226 227 228
		f 4 -33 -222 222 -130
		mu 0 4 18 229 230 83
		f 4 -32 -21 224 -221
		mu 0 4 231 232 233 234
		f 4 -225 -23 -136 -31
		mu 0 4 235 236 5 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Back_Fore_Arm_Geo_parentConstraint1" -p "Left_Back_Fore_Arm_Geo";
	rename -uid "2963F12F-42DE-3EDC-EB54-C584B9A09B49";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Elbow_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 10.249846975743397 -1.4372262485098584 -8.6336249430322827 ;
	setAttr ".tg[0].tor" -type "double3" 167.43428874318079 -43.625134894924415 -86.370044365252113 ;
	setAttr ".lr" -type "double3" 1.0098261113647363e-12 -4.7167625926103776e-12 -1.7079578639459494e-12 ;
	setAttr ".rst" -type "double3" 0 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317592e-15 6.361109362927032e-15 -1.9083328088781097e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Back_Arm_Toe_1_Geo" -p "Left_Back_Arm_Geo";
	rename -uid "6E112DEF-4142-8402-3D70-DA87E1520F86";
createNode transform -n "Left_Back_Arm_Heel_to_Toe_Tip1_Geo" -p "Left_Back_Arm_Toe_1_Geo";
	rename -uid "BD12CAF6-441B-E5E1-4B27-0DA3C5F1952C";
createNode mesh -n "Left_Back_Arm_Heel_to_Toe_Tip1_GeoShape" -p "Left_Back_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "111ECEE2-4F99-D46F-D772-90B2A92CA476";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Heel_to_Toe_Tip1_GeoShapeOrig" -p "Left_Back_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "05A9B5F0-45A6-3082-FB35-EBA50A7BE1CC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.25380802 1.25818682 -6.2018466 4.40379715 1.0091872215 -5.81565619
		 4.45453119 1.34650397 -5.70131111 4.29020834 1.47202158 -6.12021112 4.53669071 1.25984859 -6.33227777
		 4.73542881 1.011139631 -5.96857977 4.57307196 1.47368336 -6.2506361 4.78618336 1.34845638 -5.85423851;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 8 0 3 9
		f 4 -11 -3 11 -9
		mu 0 4 9 3 2 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Back_Arm_Toe_Tip1_Geo" -p "Left_Back_Arm_Toe_1_Geo";
	rename -uid "39DC6BA1-4D79-9970-A43B-0981E30E27E3";
createNode mesh -n "Left_Back_Arm_Toe_Tip1_GeoShape" -p "Left_Back_Arm_Toe_Tip1_Geo";
	rename -uid "14064004-4BF4-37E1-C5AA-7FBC10B54020";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Toe_Tip1_GeoShapeOrig" -p "Left_Back_Arm_Toe_Tip1_Geo";
	rename -uid "AADF6900-4784-3A09-128E-228BEC5164C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  4.25313663 0.74433947 -4.78799725 4.96870613 0.18737198 -3.89975882
		 4.98427486 0.27643692 -3.8514328 5.69319391 1.16833258 -5.24709797 5.85935545 0.28158808 -4.25496912
		 5.83357906 0.19246082 -4.298594 3.81444263 1.49825525 -5.45497322 3.75554919 1.070544004 -5.61221647
		 4.8985734 0.063370652 -4.29491282 5.018420696 0.21994051 -4.03301239 4.46608925 0.72421265 -4.90403652
		 4.45973969 0.31558979 -4.92298222 3.90908384 0.68229723 -5.71830082 5.13395548 0.68948394 -6.28311443
		 5.18121719 1.016186953 -6.1764431 5.3911109 0.72965455 -5.33059597 5.38478231 0.32103172 -5.34954691
		 5.69983625 0.22394927 -4.3472333 5.57996988 0.067358635 -4.60912848 4.32904434 1.16031504 -4.61802816
		 5.31023455 1.079662323 -6.32910776 5.38745499 1.50747728 -6.180305 5.61723089 0.75235695 -5.41703224
		 3.95634198 1.0090003014 -5.61165047;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 1 11 8 0 12 11 0 13 14 0 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0
		 2 4 0 3 19 1 19 2 0 6 19 0 0 19 1 1 5 0 20 21 0 21 3 0 3 22 1 22 20 0 5 22 0 10 0 1
		 9 1 1 9 17 0 17 5 1 22 15 1 18 8 0 10 23 0 23 12 0 21 6 0 20 7 0 7 23 1 20 14 1 14 23 0
		 13 12 0 11 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -21 -23
		mu 0 4 0 1 2 3
		f 4 2 3 28 -27
		mu 0 4 4 5 6 7
		f 4 4 5 22 -22
		mu 0 4 8 9 0 3
		f 4 6 7 8 9
		mu 0 4 10 11 12 13
		f 4 10 -9 35 36
		mu 0 4 14 13 12 15
		f 4 11 12 13 14
		mu 0 4 16 17 18 19
		f 4 -14 15 16 17
		mu 0 4 19 18 20 21
		f 4 18 -3 19 20
		mu 0 4 2 5 4 3
		f 4 21 -20 -26 37
		mu 0 4 8 3 4 22
		f 4 23 -4 -19 -2
		mu 0 4 23 24 5 2
		f 4 24 25 26 27
		mu 0 4 25 26 4 7
		f 4 29 -6 39 -36
		mu 0 4 27 28 29 30
		f 4 -1 -30 -8 30
		mu 0 4 31 32 33 34
		f 4 31 32 -24 -31
		mu 0 4 35 36 37 38
		f 4 33 -13 -41 -28
		mu 0 4 39 40 41 42
		f 4 -16 -34 -29 -33
		mu 0 4 43 44 45 46
		f 4 34 -10 43 -18
		mu 0 4 21 10 13 19
		f 4 -7 -35 -17 -32
		mu 0 4 11 10 21 20
		f 4 -5 -38 -25 38
		mu 0 4 47 8 48 49
		f 4 -40 -39 40 41
		mu 0 4 50 51 52 53
		f 4 -42 -12 42 -37
		mu 0 4 15 17 16 14
		f 4 -11 -43 -15 -44
		mu 0 4 13 14 16 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Back_Arm_Toe_1_Geo_parentConstraint1" -p "Left_Back_Arm_Toe_1_Geo";
	rename -uid "E361D1E8-4A67-538C-E1F3-BBA917766FA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Thumb1_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.7541995687468175 -5.8130888458665266 1.7313381242345185 ;
	setAttr ".tg[0].tor" -type "double3" 52.481069688084823 -12.555400926983014 79.041253805292584 ;
	setAttr ".lr" -type "double3" 1.0177774980683954e-12 -4.7199431472918434e-12 -1.7047773092644869e-12 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-15 3.180554681463516e-15 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Back_Arm_Toe_2_Geo" -p "Left_Back_Arm_Geo";
	rename -uid "2956FCD5-4453-163D-F004-7FB302E95349";
createNode transform -n "Left_Back_Arm_Heel_to_Toe_Tip2_Geo" -p "Left_Back_Arm_Toe_2_Geo";
	rename -uid "A7AB6A2E-4804-2738-123B-F59A0390E338";
createNode mesh -n "Left_Back_Arm_Heel_to_Toe_Tip2_GeoShape" -p "Left_Back_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "907DF5F3-4497-9DEF-4464-A68F5B1C3DC4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Heel_to_Toe_Tip2_GeoShapeOrig" -p "Left_Back_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "3064976B-432E-DEE7-CB44-E89A2012A590";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.61743355 1.19502306 -6.73629522 4.89253712 1.011451244 -7.14528084
		 4.94691944 1.48570943 -7.2388401 4.6601181 1.59004092 -6.80975819 4.29341078 1.19502306 -6.92463875
		 4.51264334 1.011451244 -7.3661027 4.33611584 1.59004092 -6.99810839 4.56700611 1.48570943 -7.45965338;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 12 13 14 15
		f 4 -11 -3 11 -9
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Back_Arm_Toe_Tip2_Geo" -p "Left_Back_Arm_Toe_2_Geo";
	rename -uid "09C2FE99-45E0-0C11-3296-87ADF0E93294";
createNode mesh -n "Left_Back_Arm_Toe_Tip2_GeoShape" -p "Left_Back_Arm_Toe_Tip2_Geo";
	rename -uid "0A5F57AA-41D0-CC9B-7FE3-33914E841EA6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Toe_Tip2_GeoShapeOrig" -p "Left_Back_Arm_Toe_Tip2_Geo";
	rename -uid "02745C54-4370-0315-8DC0-BA8F8CDEB963";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801
		 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399
		 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501
		 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372
		 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331
		 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027
		 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001
		 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027
		 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625
		 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  6.059696674 0.56035221 -7.79204035 6.38517952 0.18450561 -9.010104179
		 6.50880957 0.38290775 -9.20932293 4.54631567 1.36465764 -8.78499413 5.50638962 0.38290775 -9.79199409
		 5.39446831 0.18450561 -9.58597183 5.62167597 1.70752025 -6.76299334 5.50432158 0.88622439 -6.58527184
		 3.72348547 0.88622439 -7.6204648 3.81983662 1.70752025 -7.81039381 5.37068272 0.82416141 -6.79053259
		 5.8000083 0.53237402 -7.92430067 3.96760917 0.82416141 -7.60612535 4.49712563 0.56035221 -8.70030975
		 6.21749449 0.20785193 -8.96370316 6.11607647 0.065136164 -8.78925514 5.33552027 0.065136164 -9.24295044
		 5.78425217 0.25512615 -7.8972249 4.72464275 0.25512615 -8.51313877 3.95373392 0.55245936 -7.5822525
		 5.3568058 0.55245936 -6.76666021 5.43693304 0.20785193 -9.41741753 4.74037361 0.53237402 -8.5402317
		 6.10895729 1.36465764 -7.87669992;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 3 0 7 10 1 10 11 0 12 8 1 8 13 0 14 11 0 15 14 0 15 16 0 15 17 0 17 18 1 18 16 0
		 19 18 0 11 17 1 20 17 0 10 20 0 21 16 0 19 12 0 12 22 0 22 18 1 22 21 0 2 4 0 3 23 1
		 23 2 0 6 23 0 0 23 1 1 5 0 3 13 1 5 13 0 11 0 1 14 1 1 14 21 0 21 5 1 13 22 1 9 6 0
		 8 7 0 12 10 0 19 20 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -30 -32
		mu 0 4 0 1 2 3
		f 4 2 3 34 -34
		mu 0 4 4 5 6 7
		f 4 4 5 31 -31
		mu 0 4 8 9 10 11
		f 4 6 7 33 -12
		mu 0 4 12 13 14 15
		f 4 8 9 35 -6
		mu 0 4 16 17 18 19
		f 4 10 11 39 -25
		mu 0 4 20 21 22 23
		f 4 13 12 19 -16
		mu 0 4 24 25 26 27
		f 4 -14 14 -23 -38
		mu 0 4 28 29 30 31
		f 4 -15 15 16 17
		mu 0 4 32 33 34 35
		f 4 18 -17 -21 -44
		mu 0 4 36 37 38 39
		f 4 20 -20 -10 21
		mu 0 4 40 41 42 43
		f 4 22 -18 -26 26
		mu 0 4 44 45 46 47
		f 4 23 24 25 -19
		mu 0 4 48 49 50 51
		f 4 27 -3 28 29
		mu 0 4 52 53 54 55
		f 4 30 -29 -8 40
		mu 0 4 56 57 58 13
		f 4 32 -4 -28 -2
		mu 0 4 59 60 61 62
		f 4 -1 -36 -13 36
		mu 0 4 63 64 18 65
		f 4 37 38 -33 -37
		mu 0 4 66 67 68 69
		f 4 -27 -40 -35 -39
		mu 0 4 70 71 22 72
		f 4 -5 -41 -7 41
		mu 0 4 73 74 13 75
		f 4 -9 -42 -11 42
		mu 0 4 76 77 78 79
		f 4 -43 -24 43 -22
		mu 0 4 80 81 82 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Back_Arm_Toe_2_Geo_parentConstraint1" -p "Left_Back_Arm_Toe_2_Geo";
	rename -uid "52326BFC-4B49-C0EF-1E41-B995F7B35749";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_MidFinger1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.614879787217391 -0.78268695696836044 -4.9798798232445067 ;
	setAttr ".tg[0].tor" -type "double3" 109.78393212090691 -20.579700456114033 -57.222287871638756 ;
	setAttr ".lr" -type "double3" 2.5444437451708128e-14 -1.5902773407317538e-15 -1.9083328088781097e-14 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587888e-15 6.3611093629270335e-15 -1.2722218725854064e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Back_Arm_Toe_3_Geo" -p "Left_Back_Arm_Geo";
	rename -uid "FE481E6D-465C-1BB9-4522-098D13DA619A";
createNode transform -n "Left_Back_Arm_Heel_to_Toe_Tip3_Geo" -p "Left_Back_Arm_Toe_3_Geo";
	rename -uid "EA41C530-45DB-ABE7-49D3-CBA5E3E4055F";
createNode mesh -n "Left_Back_Arm_Heel_to_Toe_Tip3_GeoShape" -p "Left_Back_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "4BFB6F13-44B4-DAD7-B31A-998163D0E7AB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Heel_to_Toe_Tip3_GeoShapeOrig" -p "Left_Back_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "1A4CABBA-4D5C-05F1-7E84-86A67146DF10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.17756128 1.25586057 -6.61392593 3.7608304 1.012614369 -6.6423111
		 3.64028859 1.35159278 -6.64231968 4.09109211 1.47090006 -6.61395407 4.1766119 1.25550747 -6.30243969
		 3.75973082 1.012219667 -6.27711153 4.090121746 1.47054696 -6.30246305 3.63919401 1.3511982 -6.27709961;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -5
		mu 0 4 8 9 10 11
		f 4 -7 -4 10 -8
		mu 0 4 12 13 14 15
		f 4 -11 -3 11 -9
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Left_Back_Arm_Toe_Tip3_Geo" -p "Left_Back_Arm_Toe_3_Geo";
	rename -uid "CE0FD268-4102-8797-84F8-12B83E1F6429";
createNode mesh -n "Left_Back_Arm_Toe_Tip3_GeoShape" -p "Left_Back_Arm_Toe_Tip3_Geo";
	rename -uid "517BC190-481C-047A-B3E9-7FA3853DBDF8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Left_Back_Arm_Toe_Tip3_GeoShapeOrig" -p "Left_Back_Arm_Toe_Tip3_Geo";
	rename -uid "2400ECEF-4051-B4C8-3458-C798F5545726";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699 0.164968
		 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  2.88899016 0.76315778 -7.21377325 1.77450848 0.21933816 -6.94288588
		 1.72531295 0.3091093 -6.9485302 2.70393467 1.17994356 -5.71166849 1.72239947 0.30805001 -5.98487663
		 1.77161026 0.21829961 -5.99045229 3.68880105 1.50712419 -7.32561445 3.85046029 1.07712841 -7.31549978
		 2.16068935 0.089458704 -6.8407259 1.87480235 0.24989192 -6.84140539 2.90415955 0.74126542 -6.97189665
		 2.91853094 0.33239329 -6.97230768 3.87671375 0.68732381 -7.13407946 3.87260008 0.68582833 -5.7852397
		 3.76036119 1.014089108 -5.78521204 2.9010663 0.74014372 -5.9532547 2.9154644 0.33127171 -5.95365095
		 1.87254286 0.24908186 -6.091029644 2.15843081 0.088627875 -6.090350151 2.70846701 1.1816051 -7.21390676
		 3.84522867 1.075238228 -5.60347652 3.68352365 1.50521326 -5.59340143 2.88443637 0.76149607 -5.71161699
		 3.76447535 1.015563846 -7.13405275;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 1 11 8 0 12 11 0 13 14 0 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0
		 2 4 0 3 19 1 19 2 0 6 19 0 0 19 1 1 5 0 20 21 0 21 3 0 3 22 1 22 20 0 5 22 0 10 0 1
		 9 1 1 9 17 0 17 5 1 22 15 1 18 8 0 10 23 0 23 12 0 21 6 0 20 7 0 7 23 1 20 14 1 14 23 0
		 13 12 0 11 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 1 -21 -23
		mu 0 4 0 1 2 3
		f 4 2 3 28 -27
		mu 0 4 4 5 6 7
		f 4 4 5 22 -22
		mu 0 4 8 9 10 11
		f 4 6 7 8 9
		mu 0 4 12 13 14 15
		f 4 10 -9 35 36
		mu 0 4 16 17 18 19
		f 4 11 12 13 14
		mu 0 4 20 21 22 23
		f 4 -14 15 16 17
		mu 0 4 24 25 26 27
		f 4 18 -3 19 20
		mu 0 4 28 29 30 31
		f 4 21 -20 -26 37
		mu 0 4 32 33 34 35
		f 4 23 -4 -19 -2
		mu 0 4 36 37 38 39
		f 4 24 25 26 27
		mu 0 4 40 41 42 43
		f 4 29 -6 39 -36
		mu 0 4 44 45 46 47
		f 4 -1 -30 -8 30
		mu 0 4 48 49 50 51
		f 4 31 32 -24 -31
		mu 0 4 52 53 54 55
		f 4 33 -13 -41 -28
		mu 0 4 56 57 58 59
		f 4 -16 -34 -29 -33
		mu 0 4 60 61 62 63
		f 4 34 -10 43 -18
		mu 0 4 64 65 66 67
		f 4 -7 -35 -17 -32
		mu 0 4 68 69 70 71
		f 4 -5 -38 -25 38
		mu 0 4 72 73 74 75
		f 4 -40 -39 40 41
		mu 0 4 76 77 78 79
		f 4 -42 -12 42 -37
		mu 0 4 80 81 82 83
		f 4 -11 -43 -15 -44
		mu 0 4 84 85 86 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Left_Back_Arm_Toe_3_Geo_parentConstraint1" -p "Left_Back_Arm_Toe_3_Geo";
	rename -uid "0E1FF918-48E0-4104-4720-898617820207";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Pinky1_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.1429885547522081 7.129429077010653 0.55996272754025811 ;
	setAttr ".tg[0].tor" -type "double3" 92.846093489621779 29.890210386580964 -169.57609349820282 ;
	setAttr ".lr" -type "double3" 1.0257288847720547e-12 -4.7167625926103801e-12 -1.7111384186274143e-12 ;
	setAttr ".rst" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr ".rsrr" -type "double3" 1.1131941385122309e-14 6.3611093629270335e-15 -6.3611093629270327e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Back_Arm_Geo" -p "SpiderBot_Geo";
	rename -uid "C2784845-445B-960B-D577-C68F7873DE96";
createNode transform -n "Right_Back_Upper_Arm_Geo" -p "Right_Back_Arm_Geo";
	rename -uid "A613DA58-44B2-5831-83CF-74B19A56F486";
createNode transform -n "Right_Back_Arm_Knee_Geo" -p "Right_Back_Upper_Arm_Geo";
	rename -uid "61024331-4906-6111-66A2-40A1A54F6E87";
createNode mesh -n "Right_Back_Arm_Knee_GeoShape" -p "Right_Back_Arm_Knee_Geo";
	rename -uid "5D7E5890-4CB9-047C-5E77-00878BC5C6CC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Knee_GeoShapeOrig" -p "Right_Back_Arm_Knee_Geo";
	rename -uid "7799355D-4DB1-6D4D-0BDA-159075246312";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.93326402 0.55445099
		 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202 0.922194 0.56268197
		 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199 0.91118097 0.58714199
		 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099 0.93326402 0.55445099
		 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802 0.91465998 0.53527802
		 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202 0.90329701 0.54415202
		 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701 0.90489799 0.55673701
		 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199 0.894777 0.57577199
		 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202 0.90329701 0.54415202
		 0.91465998 0.53527802;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -4.25446796 11.42905045 -5.61282492 -4.30698204 11.61914063 -5.70772028
		 -4.18110561 11.44362068 -5.45900774 -4.27207279 11.77295208 -5.62338591 -4.12433147 11.59234619 -5.3957715
		 -4.17685127 11.78244591 -5.49064684 -3.91095185 11.7767334 -5.18493319 -3.99656129 11.94407463 -5.33804941
		 -3.42727828 11.77369308 -5.45868349 -3.49992871 11.58842278 -5.74917078 -3.52636123 11.43950653 -5.82957983
		 -3.62059951 11.42505836 -5.97159529 -3.67310166 11.61516571 -6.066470623 -3.6173203 11.76882935 -5.99397707
		 -3.55244327 11.778512 -5.84406424 -3.51288724 11.94103527 -5.61179876;
	setAttr -s 28 ".ed[0:27]"  2 0 0 0 1 0 1 3 0 3 2 1 4 2 0 3 5 0 5 4 1
		 6 4 0 5 7 0 7 6 0 6 8 0 8 9 0 9 4 1 9 10 0 10 2 0 10 11 0 11 0 0 12 11 0 1 12 0 10 13 1
		 13 12 0 9 14 1 14 13 0 8 15 0 15 14 0 15 7 0 5 14 0 3 13 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 3 -5
		mu 0 4 4 5 3 0
		f 4 -10 -9 6 -8
		mu 0 4 6 7 5 4
		f 4 7 -13 -12 -11
		mu 0 4 6 4 9 8
		f 4 4 -15 -14 12
		mu 0 4 4 0 11 10
		f 4 0 -17 -16 14
		mu 0 4 0 1 13 12
		f 4 18 17 16 1
		mu 0 4 2 15 14 1
		f 4 -21 -20 15 -18
		mu 0 4 16 19 18 17
		f 4 -23 -22 13 19
		mu 0 4 20 23 22 21
		f 4 -25 -24 11 21
		mu 0 4 24 27 26 25
		f 4 24 -27 8 -26
		mu 0 4 28 29 5 7
		f 4 22 -28 5 26
		mu 0 4 30 31 3 5
		f 4 20 -19 2 27
		mu 0 4 32 33 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Back_Arm_Thigh_Geo" -p "Right_Back_Upper_Arm_Geo";
	rename -uid "95CD9AE3-491D-A839-F3B6-15B03DA84D81";
createNode mesh -n "Right_Back_Arm_Thigh_GeoShape" -p "Right_Back_Arm_Thigh_Geo";
	rename -uid "D7465EE8-410F-C50F-2350-81B1460CB70D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" 0.88565999 0.55092603
		 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499
		 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802
		 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802
		 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701
		 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478
		 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -4.31654358 11.96355629 -5.94604158 -4.32564926 11.8895874 -5.96130991
		 -3.87833428 11.88676739 -6.21449518 -3.86923623 11.96074486 -6.19920969 -2.38724017 12.76262474 -2.20631409
		 -2.099269629 12.63384247 -2.055562973 -2.32265878 11.9498682 -2.083184242 -2.51743937 12.71749878 -2.43582439
		 -2.45285749 11.90473938 -2.3126936 -2.061627626 12.16018677 -1.98379612 -1.58399963 11.9452343 -2.50123692
		 -1.7141974 11.90011597 -2.73077583 -1.63116312 12.15747261 -2.22744513 -1.64859319 12.75797462 -2.62438822
		 -1.77877355 12.71285629 -2.85389519 -1.66880488 12.63112831 -2.29921198 -2.53027368 11.82197762 -2.34120226
		 -2.60602641 12.77523232 -2.48562908 -2.568012 11.94446564 -2.84261036 -2.61266875 12.50626755 -2.92774963
		 -3.16601682 12.47644234 -3.90509748 -1.69957185 11.8167572 -2.8113637 -2.10883307 11.94157028 -3.10251093
		 -3.16512561 12.063486099 -3.8989377 -1.77532458 12.7700119 -2.95579052 -2.15347767 12.50338936 -3.18762875
		 -2.70684457 12.47355652 -4.16498041 -2.70594668 12.060592651 -4.1588378 -3.21165872 12.2402935 -5.054317951
		 -3.22249532 11.89284706 -5.069636822 -3.39132953 12.15483093 -5.37081957 -3.4143002 11.70099449 -5.40639544
		 -3.45696378 12.01320076 -5.81122446 -4.20874786 12.13134384 -5.41762304 -4.19562817 12.017843246 -5.39315367
		 -3.87347913 11.70388985 -5.14649439 -3.47008157 12.12670231 -5.83569384 -3.8505013 12.15771675 -5.11093569
		 -3.68168664 11.89572525 -4.80975771 -3.67083097 12.24317837 -4.79443502;
	setAttr -s 77 ".ed[0:76]"  0 1 0 1 2 0 2 3 0 3 0 0 6 4 0 4 5 0 5 9 0
		 6 9 0 7 4 0 6 8 0 8 7 0 10 6 0 12 9 0 10 12 0 10 11 0 11 8 0 13 10 0 12 15 0 13 15 0
		 13 14 0 14 11 0 4 13 0 15 5 0 7 14 0 8 16 0 16 17 0 17 7 0 16 18 0 18 19 1 19 17 0
		 20 19 0 23 18 0 20 23 1 11 21 0 21 16 0 21 22 0 22 18 1 27 22 0 23 27 1 14 24 0 24 21 0
		 24 25 0 25 22 1 25 26 0 26 27 1 26 28 0 28 29 1 29 27 0 28 30 0 30 31 1 31 29 0 32 31 0
		 30 36 0 32 36 0 17 14 1 17 24 0 19 25 0 26 20 1 0 33 0 33 34 0 34 1 0 35 34 0 37 33 0
		 35 37 1 34 32 0 32 2 0 35 31 0 36 3 0 36 33 1 30 37 1 39 38 1 38 35 0 37 39 0 23 38 0
		 39 20 0 38 29 1 28 39 1;
	setAttr -s 39 -ch 154 ".fc[0:38]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 -11 -10 4 -9
		mu 0 4 8 9 4 5
		f 4 13 12 -8 -12
		mu 0 4 10 11 7 4
		f 4 -16 -15 11 9
		mu 0 4 9 13 12 4
		f 4 18 -18 -14 -17
		mu 0 4 14 17 16 15
		f 4 -21 -20 16 14
		mu 0 4 18 21 20 19
		f 4 5 -23 -19 -22
		mu 0 4 5 6 23 22
		f 4 -24 8 21 19
		mu 0 4 24 8 5 25
		f 4 -27 -26 -25 10
		mu 0 4 8 27 26 9
		f 4 -30 -29 -28 25
		mu 0 4 27 29 28 26
		f 4 32 31 28 -31
		mu 0 4 30 31 28 29
		f 4 24 -35 -34 15
		mu 0 4 32 35 34 33
		f 4 27 -37 -36 34
		mu 0 4 35 37 36 34
		f 4 38 37 36 -32
		mu 0 4 38 39 36 37
		f 4 33 -41 -40 20
		mu 0 4 40 43 42 41
		f 4 35 -43 -42 40
		mu 0 4 44 47 46 45
		f 4 -38 -45 -44 42
		mu 0 4 48 51 50 49
		f 4 -48 -47 -46 44
		mu 0 4 51 54 53 52
		f 4 -51 -50 -49 46
		mu 0 4 54 56 55 53
		f 4 53 -53 49 -52
		mu 0 4 57 58 55 56
		f 3 -55 26 23
		mu 0 3 59 61 60
		f 3 39 -56 54
		mu 0 3 59 62 61
		f 4 41 -57 29 55
		mu 0 4 62 64 63 61
		f 4 57 30 56 43
		mu 0 4 65 66 63 64
		f 4 -61 -60 -59 0
		mu 0 4 1 68 67 0
		f 4 63 62 59 -62
		mu 0 4 69 71 67 70
		f 4 -66 -65 60 1
		mu 0 4 72 75 74 73
		f 4 -67 61 64 51
		mu 0 4 76 77 74 75
		f 4 -68 -54 65 2
		mu 0 4 78 80 57 79
		f 4 58 -69 67 3
		mu 0 4 81 84 83 82
		f 4 -70 52 68 -63
		mu 0 4 85 86 83 84
		f 4 6 -13 17 22
		mu 0 4 6 7 88 87
		f 4 -73 -64 -72 -71
		mu 0 4 89 92 91 90
		f 4 -33 -75 70 -74
		mu 0 4 93 30 95 94
		f 4 50 -76 71 66
		mu 0 4 76 97 96 77
		f 4 47 -39 73 75
		mu 0 4 97 39 38 96
		f 4 72 -77 48 69
		mu 0 4 85 99 98 86
		f 4 74 -58 45 76
		mu 0 4 99 66 65 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Back_Upper_Arm_Geo_parentConstraint1" -p "Right_Back_Upper_Arm_Geo";
	rename -uid "CE9D62E3-491A-F1F9-D7E0-499535CF564A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Shoulder_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3347065255940622 1.5237458495885998 12.217820999528586 ;
	setAttr ".tg[0].tor" -type "double3" -94.947563586709109 -2.6166776185919924 -45.745773543784701 ;
	setAttr ".lr" -type "double3" -3.1485884964764615e-14 -8.9959671327898948e-15 -1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" -4.4408920985006262e-16 3.5527136788005009e-15 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 6.4062149351732953e-30 -2.2489917831974728e-14 -2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Back_Fore_Arm_Geo" -p "Right_Back_Arm_Geo";
	rename -uid "24E272DB-4F04-0F93-542C-2F9E7E2EE363";
createNode transform -n "Right_Back_Arm_Ankle_Geo" -p "Right_Back_Fore_Arm_Geo";
	rename -uid "0FA3D367-470A-B1F4-A1A7-E290A0B6B574";
createNode mesh -n "Right_Back_Arm_Ankle_GeoShape" -p "Right_Back_Arm_Ankle_Geo";
	rename -uid "D540CB6E-495E-4532-33A3-6FB17D6198A6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.77148402 0.87109399
		 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601
		 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125
		 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699
		 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402 0.74804699
		 0.92773402 0.74609399 0.92773402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -4.65499926 2.75867558 -6.71535492 -4.39671707 2.71841383 -6.27864075
		 -4.1078105 2.72060013 -6.44932985 -4.36609268 2.76086187 -6.88604259 -4.85867739 2.88198662 -6.70534468
		 -4.51681376 2.82869673 -6.12732887 -4.55952978 3.22930813 -6.065140247 -4.41810369 3.50751257 -6.3125391
		 -4.13159513 3.50740337 -6.48202276 -3.89697766 3.23082829 -6.45684052 -3.9497602 2.83124542 -6.46247292
		 -4.29162455 2.88453531 -7.04049015 -4.23884249 3.2841177 -7.034855843 -4.90139437 3.28259802 -6.64315748
		 -4.59258413 3.53470993 -6.60753822 -4.30605459 3.53459978 -6.77701759;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 4 5 0 5 1 0
		 6 5 0 13 4 0 6 13 0 7 8 0 8 9 0 9 6 0 6 7 0 9 10 0 10 5 0 10 2 0 10 11 0 11 3 0 12 11 0
		 12 9 0 11 4 0 12 13 0 14 13 0 12 15 0 15 14 0 8 15 0 14 7 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 -5 0
		mu 0 4 1 5 4 0
		f 4 9 8 5 -8
		mu 0 4 6 7 4 5
		f 4 -14 -13 -12 -11
		mu 0 4 8 6 10 9
		f 4 7 -16 -15 12
		mu 0 4 6 5 11 10
		f 4 6 1 -17 15
		mu 0 4 5 1 2 11
		f 4 -19 -18 16 2
		mu 0 4 12 13 11 2
		f 4 20 14 17 -20
		mu 0 4 14 10 11 13
		f 4 4 -22 18 3
		mu 0 4 0 4 13 3
		f 4 -23 19 21 -9
		mu 0 4 7 15 13 4
		f 4 -26 -25 22 -24
		mu 0 4 16 17 15 7
		f 4 11 -21 24 -27
		mu 0 4 9 10 14 18
		f 4 23 -10 13 -28
		mu 0 4 16 7 6 8
		f 4 26 25 27 10
		mu 0 4 9 17 16 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Back_Arm_Ankle_to_Heel_Geo" -p "Right_Back_Fore_Arm_Geo";
	rename -uid "BF510F18-4D29-7B3E-E842-2882EEDB4D68";
createNode mesh -n "Right_Back_Arm_Ankle_to_Heel_GeoShape" -p "Right_Back_Arm_Ankle_to_Heel_Geo";
	rename -uid "4562FE3A-4427-5538-6618-F18A256B5E5E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4.33493757 1.63770366 -6.88750887 -4.12057066 1.6355238 -6.52877188
		 -4.11746883 2.81864572 -6.52343655 -4.33183622 2.82082558 -6.88217354 -4.47931767 1.63549733 -6.31438208
		 -4.47622299 2.81581926 -6.30905867 -4.6936841 1.63767719 -6.67311811 -4.6905899 2.81799889 -6.66779518;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 4 6 0 6 7 0 7 5 0 6 0 0 3 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 1 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 5 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 8 -12 3 -11
		mu 0 4 12 15 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Back_Arm_Heel_Geo" -p "Right_Back_Fore_Arm_Geo";
	rename -uid "445EDA71-45DF-16F7-E907-60957D1B0C93";
createNode mesh -n "Right_Back_Arm_Heel_GeoShape" -p "Right_Back_Arm_Heel_Geo";
	rename -uid "9C4350CE-46EA-0F4C-51B0-A4A6867E22D2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Heel_GeoShapeOrig" -p "Right_Back_Arm_Heel_Geo";
	rename -uid "E225C717-4E64-072B-BEB1-6DAD36BFD1FA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -4.35511303 1.68340564 -7.22122908 -4.35511303 1.13248229 -7.22122908
		 -3.82047534 1.68340564 -6.75421476 -3.82047534 1.13248229 -6.75421476 -4.099423885 1.68340564 -6.10140371
		 -4.099423885 1.13248229 -6.10140371 -4.80646992 1.68340564 -6.16500092 -4.80646992 1.13248229 -6.16500092
		 -4.96449471 1.68340564 -6.85707808 -4.96449471 1.13246155 -6.85707808;
	setAttr -s 17 ".ed[0:16]"  2 0 0 0 1 0 1 3 0 3 2 0 4 2 0 3 5 0 5 4 0
		 6 4 0 5 7 0 7 6 0 8 6 0 7 9 0 9 8 0 0 8 0 9 1 0 5 1 1 2 6 1;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 3 -5
		mu 0 4 4 5 3 0
		f 4 -10 -9 6 -8
		mu 0 4 6 7 5 4
		f 4 -13 -12 9 -11
		mu 0 4 8 9 7 6
		f 4 1 -15 12 -14
		mu 0 4 10 11 9 8
		f 4 14 -16 8 11
		mu 0 4 12 15 14 13
		f 3 2 5 15
		mu 0 3 15 16 14
		f 4 10 -17 0 13
		mu 0 4 8 6 0 10
		f 3 7 4 16
		mu 0 3 6 4 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Back_Arm_Calf_Geo" -p "Right_Back_Fore_Arm_Geo";
	rename -uid "768D37B3-4237-201A-1660-919B0C216702";
createNode mesh -n "Right_Back_Arm_Calf_GeoShape" -p "Right_Back_Arm_Calf_Geo";
	rename -uid "A5D4212A-41C9-8BED-43EC-02BE32B642FE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.52856898 0.97485399
		 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137
		 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501
		 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499
		 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303
		 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899
		 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699
		 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899
		 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698
		 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699
		 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797 0.69657397
		 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999
		 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302
		 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399 0.96858698
		 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413 0.82681203
		 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099 0.57310098
		 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303
		 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898
		 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104
		 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763
		 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401
		 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098
		 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288 0.56166101 0.49178499
		 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201 0.56129599 0.49112499
		 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498
		 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949
		 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699
		 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399
		 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366
		 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502
		 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401
		 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803
		 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398
		 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401
		 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302
		 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101
		 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599
		 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801
		 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999
		 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398
		 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398
		 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801
		 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101
		 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899
		 0.996889 0.58270597 0.99704999 0.51962101 0.69467402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  -3.62607312 11.4738121 -6.49707794 -3.88927722 11.58312225 -6.25211668
		 -3.94828963 11.59235859 -6.36326504 -3.67016268 11.46087933 -6.61883783 -5.18591547 4.27707148 -6.73683023
		 -4.96611929 2.42815399 -6.66013718 -5.095124722 2.3053813 -6.63442469 -5.45054007 4.26973629 -6.62472439
		 -3.89150357 4.27062559 -7.52133465 -4.076928139 2.30596113 -7.21997786 -4.16394615 2.42861176 -7.12147093
		 -4.82696199 3.15644789 -6.15307617 -4.6368556 4.11665058 -5.7596035 -4.46801519 3.61737633 -6.12008476
		 -4.6777854 3.16727209 -6.23232746 -3.55262303 4.11726856 -6.38315201 -3.79628444 3.15703583 -6.74582386
		 -3.93981624 3.16769361 -6.65673685 -3.94868493 3.61767244 -6.4187541 -4.24199009 11.68110561 -5.87554646
		 -4.18925381 11.82146358 -5.74430418 -3.93583989 11.63237 -5.34325933 -4.25257874 11.41055584 -5.89422655
		 -3.94642854 11.36182213 -5.36193991 -4.010837555 11.79306126 -5.43410015 -3.53520966 11.63259888 -5.57366371
		 -3.54579878 11.3620491 -5.59234428 -3.25381088 11.28095818 -5.59173822 -4.092680931 11.28047943 -5.10929823
		 -3.2672317 10.86255074 -5.6612978 -4.16224241 10.86204052 -5.14657116 -3.31822968 8.86407089 -5.96680021
		 -4.39893723 8.86345482 -5.34527779 -3.40712166 6.63159943 -6.13315392 -3.57614112 11.79330921 -5.6841135
		 -3.84135938 11.68133354 -6.10595083 -3.85194802 11.41078472 -6.1246314 -4.5652771 11.34800053 -5.93098545
		 -4.67996883 10.92561913 -6.046735287 -4.99997187 9.12778759 -6.39960957 -4.88374186 8.76530361 -6.17878532
		 -3.95796371 4.59599066 -7.092983246 -4.12128305 4.27767897 -7.34910679 -3.88483119 6.68231773 -6.96374989
		 -3.79475927 8.76592445 -6.80506563 -3.9274838 9.1283989 -7.016403675 -3.78495741 10.92612934 -6.56146097
		 -3.72640562 11.34847927 -6.41342497 -5.16359377 2.32104301 -6.73954535 -4.13338804 2.32163095 -7.33202362
		 -3.94490981 4.45266819 -7.64167881 -5.5278554 4.45176506 -6.73131895 -3.91267705 6.72520638 -7.61028433
		 -5.518857 6.72428894 -6.68654299 -3.76072788 8.97677803 -7.33254766 -5.35716295 8.97586632 -6.41444635
		 -3.62559652 10.96178055 -6.8331418 -4.99467039 10.96390629 -6.045513153 -4.7683382 11.46347809 -5.9869771
		 -4.41015005 11.59209442 -6.097647667 -3.75455785 11.82171154 -5.99431801 -5.046946526 4.59536982 -6.46670294
		 -4.97381449 6.68169641 -6.33747053 -4.20321703 2.64565802 -6.92598629 -5.27300978 9.13561344 -6.27962065
		 -5.1584053 8.77316952 -6.057512283 -4.93119001 10.95817566 -5.93661356 -4.68596411 11.47484207 -5.88739681
		 -5.24864721 6.68123531 -6.21677351 -5.32200527 4.5866375 -6.34670496 -3.71611166 4.58755493 -7.27028036
		 -3.64249969 6.68215132 -7.14047861 -3.55202293 8.77408695 -6.98135185 -3.68661571 9.13651276 -7.19189644
		 -3.56323719 10.95532513 -6.72366285 -4.34373045 11.5828619 -5.99073935 -4.49610472 6.63097858 -5.50687313
		 -4.77759171 2.64532995 -6.59565783 -4.6964736 3.63576078 -6.5172801 -4.95119667 3.35961866 -6.70754433
		 -4.82506514 2.72756815 -6.67815542 -4.17711592 3.6360569 -6.81596613 -4.21322775 3.36003971 -7.13195419
		 -4.25071669 2.72789574 -7.0084676743;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 1 42 10 0 8 42 0 11 12 0 12 13 1 13 14 0 14 11 1 15 16 0 16 17 1 17 18 0 18 15 1
		 21 19 1 19 20 0 20 24 0 21 24 0 22 19 0 21 23 0 23 22 0 25 21 0 34 24 0 25 34 0 25 26 0
		 26 23 0 26 27 1 27 28 0 28 23 1 27 29 0 29 30 1 30 28 0 29 31 0 31 32 1 32 30 0 31 33 0
		 76 33 1 76 32 0 35 25 1 34 60 0 60 35 0 35 36 0 36 26 0 28 37 0 37 22 0 30 38 1 38 37 0
		 32 39 1 39 38 0 40 39 0 32 40 0 41 42 0 42 15 1 15 41 1 43 41 0 15 33 0 33 43 1 44 43 0
		 31 44 1 31 45 1 45 44 0 29 46 1 46 45 0 27 47 0 47 46 0 36 47 0 48 49 0 49 50 0 50 51 1
		 51 48 0 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1 57 55 0 56 3 0
		 3 58 1 58 57 0 2 59 0 59 58 0 12 61 1 61 62 0 76 62 1 12 76 0 4 61 0 11 4 1 11 5 0
		 63 17 0 16 10 0 10 63 1 64 65 0 65 55 1 55 64 1 66 64 0 57 66 1 67 66 0 58 67 0 65 68 0
		 68 53 1 68 69 0 69 51 1 69 7 0 7 51 1 6 48 0 6 9 0 9 49 0 8 70 0 70 50 1 50 8 1 70 71 0
		 71 52 1 71 72 0 72 54 1 72 73 0 73 54 1 73 74 0 74 56 1 74 0 0 1 75 0 75 59 1 75 67 0
		 5 10 1 71 43 1 44 72 0 70 41 0 45 73 0 46 74 1 47 0 1 36 1 0 36 22 0 22 75 1 35 19 0
		 65 40 0 40 62 0 62 68 1 64 39 0 66 38 1 67 37 1 18 13 0 12 15 1 14 77 0 77 5 1 77 63 0
		 13 78 0 78 79 0 79 14 1 79 80 0 80 77 0 18 81 0 81 78 0 81 82 0 82 79 0 83 82 0 80 83 0
		 63 83 0 82 17 1;
	setAttr ".ed[166:167]" 61 69 0 60 20 0;
	setAttr -s 86 -ch 336 ".fc[0:85]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 11 10 -10 -9
		mu 0 4 8 11 10 9
		f 4 -16 -15 -14 -13
		mu 0 4 12 15 14 13
		f 4 -20 -19 -18 -17
		mu 0 4 16 19 18 17
		f 4 23 -23 -22 -21
		mu 0 4 20 23 22 21
		f 4 -27 -26 20 -25
		mu 0 4 24 25 20 21
		f 4 29 28 -24 -28
		mu 0 4 26 27 23 20
		f 4 -32 -31 27 25
		mu 0 4 25 29 28 20
		f 4 -35 -34 -33 31
		mu 0 4 25 32 31 30
		f 4 -38 -37 -36 33
		mu 0 4 33 35 34 31
		f 4 -41 -40 -39 36
		mu 0 4 36 38 37 34
		f 4 -44 42 -42 39
		mu 0 4 39 41 40 37
		f 4 -47 -46 -30 -45
		mu 0 4 42 45 44 43
		f 4 -49 -48 44 30
		mu 0 4 46 49 48 47
		f 4 -51 -50 34 26
		mu 0 4 24 51 50 25
		f 4 -53 -52 37 49
		mu 0 4 51 54 53 52
		f 4 -55 -54 40 51
		mu 0 4 54 57 56 55
		f 3 -57 53 -56
		mu 0 3 58 59 57
		f 3 -60 -59 -58
		mu 0 3 60 62 61
		f 4 -63 -62 59 -61
		mu 0 4 63 40 64 60
		f 4 -65 41 62 -64
		mu 0 4 65 37 40 63
		f 3 -67 -66 64
		mu 0 3 66 67 37
		f 4 -69 -68 38 65
		mu 0 4 68 69 34 37
		f 4 -71 -70 35 67
		mu 0 4 70 71 31 34
		f 4 -72 48 32 69
		mu 0 4 72 74 73 31
		f 4 -76 -75 -74 -73
		mu 0 4 75 78 77 76
		f 4 -79 -78 -77 74
		mu 0 4 78 80 79 77
		f 4 -82 -81 -80 77
		mu 0 4 80 82 81 79
		f 4 -85 -84 -83 80
		mu 0 4 82 84 83 81
		f 4 -88 -87 -86 83
		mu 0 4 84 86 85 83
		f 4 -90 -89 2 86
		mu 0 4 86 88 87 85
		f 4 93 92 -92 -91
		mu 0 4 13 41 90 89
		f 4 -96 12 90 -95
		mu 0 4 4 12 13 91
		f 3 4 -97 95
		mu 0 3 4 5 12
		f 4 -100 -99 17 -98
		mu 0 4 92 95 94 93
		f 4 -11 58 16 98
		mu 0 4 96 99 98 97
		f 3 -103 -102 -101
		mu 0 3 100 102 101
		f 4 -105 84 102 -104
		mu 0 4 103 104 102 100
		f 4 -107 87 104 -106
		mu 0 4 105 106 104 103
		f 4 81 -109 -108 101
		mu 0 4 102 108 107 101
		f 4 78 -111 -110 108
		mu 0 4 108 110 109 107
		f 3 -113 -112 110
		mu 0 3 110 7 109
		f 4 -114 6 112 75
		mu 0 4 111 6 7 110
		f 4 113 72 -116 -115
		mu 0 4 6 111 113 112
		f 3 -119 -118 -117
		mu 0 3 114 116 115
		f 4 115 73 118 8
		mu 0 4 117 120 119 118
		f 4 76 -121 -120 117
		mu 0 4 121 123 122 115
		f 4 79 -123 -122 120
		mu 0 4 124 127 126 125
		f 3 -125 -124 122
		mu 0 3 127 128 126
		f 4 -127 -126 124 82
		mu 0 4 129 130 128 127
		f 4 3 -128 126 85
		mu 0 4 3 0 130 129
		f 4 1 88 -130 -129
		mu 0 4 1 2 132 131
		f 4 129 89 106 -131
		mu 0 4 133 134 106 105
		f 4 5 114 9 -132
		mu 0 4 5 6 136 135
		f 4 121 -134 63 -133
		mu 0 4 137 126 138 63
		f 4 -135 119 132 60
		mu 0 4 60 115 139 63
		f 4 -12 116 134 57
		mu 0 4 140 141 115 60
		f 4 -136 66 133 123
		mu 0 4 128 143 142 126
		f 4 -137 68 135 125
		mu 0 4 130 145 144 128
		f 4 -138 70 136 127
		mu 0 4 0 147 146 130
		f 4 -139 71 137 0
		mu 0 4 1 149 148 0
		f 4 -141 -140 138 128
		mu 0 4 150 24 151 1
		f 4 -142 47 139 24
		mu 0 4 21 153 152 24
		f 4 107 -145 -144 -143
		mu 0 4 101 107 154 58
		f 4 -146 100 142 55
		mu 0 4 57 100 101 58
		f 4 -147 103 145 54
		mu 0 4 54 103 100 57
		f 4 -148 105 146 52
		mu 0 4 51 105 103 54
		f 4 140 130 147 50
		mu 0 4 24 155 105 51
		f 4 19 -150 13 -149
		mu 0 4 156 157 13 14
		f 4 61 -43 -94 149
		mu 0 4 158 40 41 13
		f 4 -152 -151 15 96
		mu 0 4 5 159 15 12
		f 4 99 -153 151 131
		mu 0 4 160 92 161 5
		f 4 -156 -155 -154 14
		mu 0 4 15 163 162 14
		f 4 -158 -157 155 150
		mu 0 4 164 165 163 15
		f 4 153 -160 -159 148
		mu 0 4 14 162 167 166
		f 4 154 -162 -161 159
		mu 0 4 162 163 169 168
		f 4 163 162 161 156
		mu 0 4 165 171 170 163
		f 4 -166 -163 -165 97
		mu 0 4 172 174 173 92
		f 4 158 160 165 18
		mu 0 4 175 178 177 176
		f 4 164 -164 157 152
		mu 0 4 92 180 165 179
		f 4 91 144 109 -167
		mu 0 4 181 182 107 109
		f 4 7 94 166 111
		mu 0 4 7 4 183 109
		f 4 21 -168 46 141
		mu 0 4 21 22 185 184
		f 4 22 -29 45 167
		mu 0 4 22 23 187 186
		f 4 143 -93 43 56
		mu 0 4 58 188 41 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Shin_Geo" -p "Right_Back_Fore_Arm_Geo";
	rename -uid "6012EA76-4E15-50C3-C53A-408948C1DB17";
createNode mesh -n "Right_Middle_Arm_Shin_GeoShape" -p "|Spider_Rig|SpiderBot_Geo|Right_Back_Arm_Geo|Right_Back_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo";
	rename -uid "AFB091AC-4694-52F5-26AC-9BA7E8978910";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:105]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 237 ".uvst[0].uvsp[0:236]" -type "float2" 0.091770999 0.369551
		 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097
		 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197
		 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999
		 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386
		 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551
		 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197
		 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801
		 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501
		 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572
		 0.65227503 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001
		 0.65341401 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499
		 0.73260999 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703
		 0.125136 0.65086901 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297
		 0.074359 0.58401501 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402
		 0.063110001 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301
		 0.10611 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899
		 0.116622 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499
		 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903
		 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099
		 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749
		 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503
		 0.21557599 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702
		 0.29026499 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401
		 0.29699001 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703
		 0.183137 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901
		 0.18320601 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699
		 0.198421 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265
		 0.64977902 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359
		 0.58401501 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001
		 0.65320301 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498
		 0.093028001 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001
		 0.130492 0.53603703 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001
		 0.29699001 0.65341401 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503
		 0.29158199 0.55224901 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002
		 0.306741 0.48896801 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999
		 0.29026499 0.91377503 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001
		 0.097764999 0.46727601 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703
		 0.061469 0.83352 0.14167701 0.83245897 0.119689 0.75301498 0.14167701 0.83245897
		 0.061469 0.83352 0.063110001 0.75552702 0.14167701 0.83245897 0.119689 0.75301498
		 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903 0.180035 0.54325098
		 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002 0.52486098 0.198421
		 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401 0.24582 0.55150002
		 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499 0.73260999
		 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099 0.74019098
		 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622 0.768843 0.21557599
		 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297
		 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918
		 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689 0.75301498 0.135295
		 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401
		 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801
		 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702
		 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999
		 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352
		 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101 0.92042899 0.091770999 0.369551
		 0.099601001 0.36329001 0.158557 0.94473398 0.138069 0.95506698 0.058373999 0.917386
		 0.062306002 0.89308703 0.138069 0.95506698 0.158557 0.94473398 0.138069 0.95506698
		 0.069045 0.97977501 0.046569001 0.95226097 0.058373999 0.917386 0.058373999 0.917386
		 0.046569001 0.95226097;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".vt[0:118]"  -5.11239767 3.18501043 -7.039651394 -4.76390648 3.18486834 -7.24008465
		 -4.81009293 4.45386314 -7.32137012 -5.33230925 9.41638088 -7.25796223 -4.90189266 9.42443943 -7.48472977
		 -4.63291502 9.39447594 -7.017025471 -5.0061860085 9.40345287 -6.7783246 -5.19794798 4.46013689 -6.9019413
		 -5.027722359 3.19754171 -6.89240503 -5.28281164 4.45406151 -7.049480438 -3.97324634 4.51657534 -5.8664012
		 -4.057898998 4.53002977 -6.013581276 -4.38825035 4.53018188 -5.82358122 -4.3036232 4.51672745 -5.67638493
		 -5.044551849 9.84256935 -7.73309565 -4.93101072 9.94238663 -7.53574944 -5.36153746 9.93432522 -7.30890036
		 -4.4777422 10.34084511 -6.74796247 -4.85114479 10.34982109 -6.50918818 -4.4154191 3.18470526 -7.44051838
		 -4.48946476 9.4160099 -7.74273062 -4.23887062 9.40310383 -7.21965027 -4.25251436 4.45971775 -7.44570017
		 -4.33738041 4.45366335 -7.59323835 -4.33071518 3.19723606 -7.2932868 -3.64289427 4.51644421 -6.056399822
		 -3.72754717 4.52989817 -6.20358133 -4.51843548 9.93395233 -7.79379702 -4.083570004 10.34947205 -6.95066309
		 -4.80220938 5.35644102 -5.62133503 -5.18253136 5.45332623 -6.088261604 -5.039613247 6.65044832 -5.84267473
		 -4.68294239 6.62981224 -5.41005945 -4.96174049 7.72584915 -5.71036625 -4.66217089 7.65115356 -5.38047934
		 -3.77150607 6.59976578 -5.51720095 -4.22298813 5.32797813 -5.5368185 -4.10327196 6.59991503 -5.32636881
		 -3.75232124 7.61944485 -5.48461294 -4.081628799 7.61959743 -5.29521275 -3.68896246 9.93059731 -5.37622786
		 -3.98830867 9.9307251 -5.20406199 -5.37225819 5.45175409 -6.13673162 -5.68091631 5.22097254 -6.78541374
		 -5.68586445 6.73462486 -6.73073721 -5.31637192 6.68658066 -6.070521832 -5.59097338 7.99646473 -6.59628677
		 -5.26880598 7.76121473 -5.96902227 -5.23426962 5.92224264 -7.27777719 -4.87648773 5.92749739 -7.437922
		 -5.064190865 6.7809515 -7.76490641 -5.57553625 6.79252434 -7.46976089 -5.74825764 8.0577631 -7.47254848
		 -5.49997044 7.99710035 -6.77678871 -5.5385828 6.76814508 -7.13669062 -5.40871811 5.23922491 -6.98073387
		 -4.81143713 5.23896837 -7.32425451 -3.89263082 5.32782745 -5.72684097 -4.23564482 7.64612484 -5.56302071
		 -4.072659969 9.95019913 -5.35074186 -5.32345343 5.23709202 -6.83332109 -5.67739677 9.84209538 -7.36972857
		 -4.94342709 10.43446827 -6.233109 -5.72605467 9.0756464 -7.40762949 -5.26487732 8.97333622 -6.46626043
		 -5.31832695 7.97101974 -6.6059413 -4.57546854 5.35395718 -5.64058352 -5.020231247 5.46778107 -6.40848255
		 -5.29529858 5.45930481 -6.28847265 -5.52565956 5.21917963 -6.71538448 -4.45496702 7.64621401 -5.43690348
		 -4.92578125 7.76266241 -6.24598837 -5.20044661 7.77078485 -6.12472439 -5.43173027 7.97862339 -6.53857327
		 -4.35543585 5.35386944 -5.76712751 -5.10746813 8.057488441 -7.84109354 -5.073411465 9.075763702 -7.78267717
		 -3.77331996 9.95006943 -5.52288723 -4.67922688 3.19740105 -7.092857838 -4.37070417 10.43494892 -6.56193066
		 -3.55629992 5.45261383 -7.02357769 -3.34402752 5.35580206 -6.4599905 -3.41512513 6.64973736 -6.77700758
		 -3.22055197 6.62917805 -6.25115299 -3.33921313 7.72515535 -6.64355135 -3.20474577 7.6505146 -6.21869993
		 -3.38964176 9.93047142 -5.54837799 -3.42301488 7.61929226 -5.67401266 -3.43972516 6.59961271 -5.70800638
		 -3.56227875 5.32769585 -5.91684008 -3.90845418 5.22019482 -7.80484343 -3.50281358 5.45092583 -7.21194649
		 -3.85768771 6.73381472 -7.78219843 -3.4728694 6.68578005 -7.13081408 -3.78838897 7.99566364 -7.6330595
		 -3.40836525 7.7604022 -7.039055347 -4.5519371 6.79208565 -8.058477402 -4.4666543 8.057192802 -8.20965576
		 -4.55816889 5.92194653 -7.66663313 -4.21414757 5.23871422 -7.6677947 -4.28262758 6.76760578 -7.85905981
		 -3.99015832 7.99645138 -7.64515829 -3.57703018 7.64583969 -5.94181967 -3.47399354 9.94994354 -5.6950593
		 -4.12959337 5.23655844 -7.51995754 -3.79849482 10.43397236 -6.89161777 -4.41225863 9.84154034 -8.097360611
		 -4.42104197 9.075070381 -8.15820122 -3.83933663 8.97270107 -7.28615761 -3.93384099 7.97042465 -7.40222406
		 -3.92597175 5.21847391 -7.63543558 -3.6726625 5.45861244 -7.22173882 -3.91470933 5.46730518 -7.044325352
		 -3.47469711 5.35347843 -6.27369356 -3.35772347 7.64573145 -6.067965508 -3.8202579 7.76218605 -6.88182974
		 -3.57731509 7.77007198 -7.058274746 -3.81857395 7.97792435 -7.46637154 -3.69470835 5.3535862 -6.14714193;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 9 2 1 0 9 0 3 4 0 4 5 1 5 6 0 6 3 0 7 8 0
		 8 0 0 9 7 1 10 11 1 11 12 0 12 13 0 13 10 0 14 15 1 15 16 0 16 61 1 14 61 0 17 18 0
		 18 6 0 5 17 1 1 19 0 23 19 0 2 23 1 20 21 0 21 5 0 4 20 0 22 23 1 19 24 0 24 22 0
		 10 25 0 25 26 0 26 11 0 27 15 0 106 14 0 27 106 1 21 28 0 28 17 0 29 30 0 30 31 0
		 31 32 1 32 29 1 31 33 0 33 34 0 34 32 1 36 37 1 37 35 1 35 57 1 57 36 1 38 35 1 37 39 1
		 39 38 1 40 38 1 39 41 0 41 40 0 42 43 0 43 44 0 44 45 1 45 42 0 44 46 0 46 47 0 47 45 0
		 30 42 0 45 31 1 47 33 0 48 49 0 49 50 1 50 51 1 51 48 0 52 51 0 50 75 1 75 52 1 53 46 0
		 44 54 1 54 53 0 44 55 0 55 48 1 48 54 0 55 56 1 56 49 1 43 55 0 55 9 0 2 56 1 34 39 0
		 37 32 1 36 29 0 13 36 0 57 10 1 58 59 0 59 41 0 39 58 0 60 7 0 55 60 0 63 61 0 61 62 0
		 62 64 0 64 63 1 64 53 1 53 52 1 52 63 0 64 65 0 65 53 0 36 66 1 66 29 1 66 67 0 67 30 1
		 67 68 0 68 42 1 68 69 0 69 43 0 39 70 1 70 58 0 34 70 1 71 70 0 33 71 1 72 71 0 47 72 1
		 73 72 0 46 73 1 65 73 0 69 60 0 36 74 0 74 66 0 12 74 0 54 51 1 75 76 1 76 63 1 76 14 1
		 59 77 0 77 40 1 8 78 0 78 1 1 17 79 1 79 62 0 62 18 1 16 18 0 16 3 0 15 4 1 82 80 0
		 80 81 0 81 83 1 83 82 1 84 82 0 83 85 1 85 84 0 40 86 0 86 87 0 87 38 1 87 88 1 88 35 1
		 88 89 1 57 89 1 92 90 0 90 91 0 91 93 0 93 92 1 94 92 0 93 95 0 95 94 0 91 80 0 82 93 1
		 84 95 0 50 96 1 96 97 0 75 97 1;
	setAttr ".ed[166:224]" 98 96 0 49 98 0 99 98 1 56 99 1 100 98 0 99 92 0 92 100 1
		 101 100 0 94 101 0 99 90 0 23 99 0 87 85 0 83 88 1 81 89 0 89 25 0 102 87 0 86 103 0
		 103 102 0 104 99 0 22 104 0 105 106 0 106 107 0 107 108 1 108 105 0 101 108 1 107 97 0
		 97 101 1 101 109 0 109 108 0 90 110 0 110 111 0 111 91 1 111 112 0 112 80 1 112 113 0
		 113 81 1 113 89 1 102 114 0 114 87 1 114 85 1 114 115 0 115 84 1 115 116 0 116 95 1
		 116 117 0 117 94 1 117 109 0 104 110 0 113 118 0 118 89 0 118 26 0 96 100 1 76 107 1
		 77 103 0 78 24 0 105 28 1 28 27 0 105 79 0 20 27 0;
	setAttr -s 106 -ch 410 ".fc[0:105]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 -11 -4 -10 -9
		mu 0 4 8 3 0 9
		f 4 -15 -14 -13 -12
		mu 0 4 10 13 12 11
		f 4 18 -18 -17 -16
		mu 0 4 14 17 16 15
		f 4 -22 6 -21 -20
		mu 0 4 18 6 7 19
		f 4 24 23 -23 1
		mu 0 4 2 21 20 1
		f 4 -28 5 -27 -26
		mu 0 4 22 5 6 23
		f 4 -31 -30 -24 -29
		mu 0 4 24 27 26 25
		f 4 11 -34 -33 -32
		mu 0 4 10 11 29 28
		f 4 36 35 15 -35
		mu 0 4 30 31 14 15
		f 4 -39 -38 26 21
		mu 0 4 18 33 32 6
		f 4 -43 -42 -41 -40
		mu 0 4 34 37 36 35
		f 4 -46 -45 -44 41
		mu 0 4 37 39 38 36
		f 4 -50 -49 -48 -47
		mu 0 4 40 43 42 41
		f 4 -53 -52 47 -51
		mu 0 4 44 45 41 42
		f 4 -56 -55 52 -54
		mu 0 4 46 47 45 44
		f 4 -60 -59 -58 -57
		mu 0 4 48 51 50 49
		f 4 -63 -62 -61 58
		mu 0 4 51 53 52 50
		f 4 40 -65 59 -64
		mu 0 4 35 36 51 48
		f 4 43 -66 62 64
		mu 0 4 36 38 53 51
		f 4 -70 -69 -68 -67
		mu 0 4 54 57 56 55
		f 4 -73 -72 68 -71
		mu 0 4 58 59 56 57
		f 4 -76 -75 60 -74
		mu 0 4 60 61 50 52
		f 4 -79 -78 -77 74
		mu 0 4 61 54 62 50
		f 4 -81 -80 77 66
		mu 0 4 55 63 62 54
		f 3 76 -82 57
		mu 0 3 50 62 49
		f 4 -84 -3 -83 79
		mu 0 4 63 2 3 62
		f 4 45 -86 51 -85
		mu 0 4 39 37 41 45
		f 4 42 -87 46 85
		mu 0 4 37 34 40 41
		f 4 14 -89 49 -88
		mu 0 4 13 10 43 40
		f 4 -92 54 -91 -90
		mu 0 4 64 45 47 65
		f 4 -94 82 10 -93
		mu 0 4 66 62 3 8
		f 4 -98 -97 -96 -95
		mu 0 4 67 69 68 17
		f 4 -101 -100 -99 97
		mu 0 4 67 58 60 69
		f 3 -103 -102 98
		mu 0 3 60 70 69
		f 3 -105 -104 86
		mu 0 3 34 71 40
		f 4 -107 -106 104 39
		mu 0 4 35 72 71 34
		f 4 -109 -108 106 63
		mu 0 4 48 73 72 35
		f 4 -111 -110 108 56
		mu 0 4 49 74 73 48
		f 3 -113 -112 91
		mu 0 3 64 75 45
		f 3 -114 84 111
		mu 0 3 75 39 45
		f 4 -116 44 113 -115
		mu 0 4 76 38 39 75
		f 4 -118 65 115 -117
		mu 0 4 77 53 38 76
		f 4 -120 61 117 -119
		mu 0 4 78 52 53 77
		f 4 102 73 119 -121
		mu 0 4 70 60 52 78
		f 4 110 81 93 -122
		mu 0 4 74 49 62 66
		f 3 103 -124 -123
		mu 0 3 40 71 79
		f 4 13 87 122 -125
		mu 0 4 12 13 40 79
		f 4 -126 75 99 70
		mu 0 4 57 61 60 58
		f 3 69 78 125
		mu 0 3 57 54 61
		f 4 -128 -127 72 100
		mu 0 4 67 80 59 58
		f 4 -19 -129 127 94
		mu 0 4 17 14 80 67
		f 4 55 -131 -130 90
		mu 0 4 47 46 81 65
		f 4 0 -133 -132 9
		mu 0 4 0 1 82 9
		f 4 19 -136 -135 -134
		mu 0 4 18 19 68 83
		f 4 17 95 135 -137
		mu 0 4 16 17 68 19
		f 4 20 7 -138 136
		mu 0 4 19 7 4 16
		f 4 137 4 -139 16
		mu 0 4 16 4 5 15
		f 4 -143 -142 -141 -140
		mu 0 4 84 87 86 85
		f 4 -146 -145 142 -144
		mu 0 4 88 91 90 89
		f 4 53 -149 -148 -147
		mu 0 4 46 44 93 92
		f 4 50 -151 -150 148
		mu 0 4 44 42 95 94
		f 4 48 152 -152 150
		mu 0 4 42 43 97 96
		f 4 -157 -156 -155 -154
		mu 0 4 98 101 100 99
		f 4 -160 -159 156 -158
		mu 0 4 102 105 104 103
		f 4 -162 139 -161 155
		mu 0 4 106 109 108 107
		f 4 -163 143 161 158
		mu 0 4 110 113 112 111
		f 4 71 165 -165 -164
		mu 0 4 56 59 115 114
		f 4 -168 67 163 -167
		mu 0 4 116 55 56 117
		f 4 -170 80 167 -169
		mu 0 4 118 63 55 119
		f 4 -173 -172 168 -171
		mu 0 4 120 123 122 121
		f 4 -175 157 172 -174
		mu 0 4 124 127 126 125
		f 3 171 153 -176
		mu 0 3 128 130 129
		f 4 -25 83 169 -177
		mu 0 4 131 2 63 132
		f 4 -179 144 -178 149
		mu 0 4 133 136 135 134
		f 4 -180 141 178 151
		mu 0 4 137 140 139 138
		f 4 -181 -153 88 31
		mu 0 4 141 142 43 10
		f 4 -184 -183 147 -182
		mu 0 4 143 146 145 144
		f 4 -186 28 176 -185
		mu 0 4 147 150 149 148
		f 4 -190 -189 -188 -187
		mu 0 4 151 154 153 152
		f 4 -193 -192 188 -191
		mu 0 4 155 158 157 156
		f 3 -195 -194 190
		mu 0 3 159 161 160
		f 4 154 -198 -197 -196
		mu 0 4 162 165 164 163
		f 4 160 -200 -199 197
		mu 0 4 166 169 168 167
		f 4 140 -202 -201 199
		mu 0 4 170 173 172 171
		f 3 179 -203 201
		mu 0 3 174 176 175
		f 3 -205 -204 181
		mu 0 3 177 179 178
		f 3 177 -206 204
		mu 0 3 180 182 181
		f 4 145 -208 -207 205
		mu 0 4 183 186 185 184
		f 4 162 -210 -209 207
		mu 0 4 187 190 189 188
		f 4 159 -212 -211 209
		mu 0 4 191 194 193 192
		f 4 174 193 -213 211
		mu 0 4 195 198 197 196
		f 4 -214 184 175 195
		mu 0 4 199 202 201 200
		f 3 202 -216 -215
		mu 0 3 203 205 204
		f 4 -217 215 180 32
		mu 0 4 206 209 208 207
		f 4 173 -218 164 192
		mu 0 4 210 213 212 211
		f 3 170 166 217
		mu 0 3 214 216 215
		f 4 187 -219 128 -36
		mu 0 4 217 218 80 14
		f 4 191 -166 126 218
		mu 0 4 219 220 59 80
		f 4 182 -220 130 146
		mu 0 4 221 222 81 46
		f 4 29 -221 132 22
		mu 0 4 223 224 82 1
		f 4 186 -37 -223 -222
		mu 0 4 225 228 227 226
		f 4 133 -224 221 38
		mu 0 4 18 83 230 229
		f 4 222 -225 25 37
		mu 0 4 231 234 233 232
		f 4 34 138 27 224
		mu 0 4 235 15 5 236;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Back_Fore_Arm_Geo_parentConstraint1" -p "Right_Back_Fore_Arm_Geo";
	rename -uid "B426EFF4-4F75-ECD5-C84F-9DAAF6F59124";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Elbow_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -10.249838558637949 1.6831666940306427 8.5845204229638536 ;
	setAttr ".tg[0].tor" -type "double3" -12.7687437901947 -45.574112802171733 -86.177212801256317 ;
	setAttr ".lr" -type "double3" 7.9513867036587919e-15 9.5416640443905503e-15 6.6208594470752375e-31 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 3.5527136788005009e-15 0 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-15 9.5416640443905503e-15 6.6208594470752375e-31 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Back_Arm_Toe_1_Geo" -p "Right_Back_Arm_Geo";
	rename -uid "3AB1103C-42C8-1486-4874-1386E4400DA0";
createNode transform -n "Right_Back_Arm_Heel_to_Toe_Tip1_Geo" -p "Right_Back_Arm_Toe_1_Geo";
	rename -uid "44663D60-4C02-DF5C-6C2E-F48DB5B27B6B";
createNode mesh -n "Right_Back_Arm_Heel_to_Toe_Tip1_GeoShape" -p "Right_Back_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "C4DE8B24-4CA3-8421-3C37-F7A059CE2D0F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Heel_to_Toe_Tip1_GeoShapeOrig" -p "Right_Back_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "0B5CDCCE-4CE2-0BB6-F8D2-33846F08C8FC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4.25380802 1.25818682 -6.2018466 -4.40379715 1.0091872215 -5.81565619
		 -4.45453119 1.34650397 -5.70131111 -4.29020834 1.47202158 -6.12021112 -4.53669071 1.25984859 -6.33227777
		 -4.73542881 1.011139631 -5.96857977 -4.57307196 1.47368336 -6.2506361 -4.78618336 1.34845638 -5.85423851;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 8 9 3 0
		f 4 8 -12 2 10
		mu 0 4 9 10 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Back_Arm_Toe_Tip1_Geo" -p "Right_Back_Arm_Toe_1_Geo";
	rename -uid "C3F16F2C-454E-F898-DC63-D0B4C12078EF";
createNode mesh -n "Right_Back_Arm_Toe_Tip1_GeoShape" -p "Right_Back_Arm_Toe_Tip1_Geo";
	rename -uid "A6C7CF17-4F85-52F1-3F9E-B592C1C337E7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Toe_Tip1_GeoShapeOrig" -p "Right_Back_Arm_Toe_Tip1_Geo";
	rename -uid "F8523177-4078-D5A3-B2DF-D386C24EE3C1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -4.25313663 0.74433947 -4.78799725 -4.96870613 0.18737198 -3.89975882
		 -4.98427486 0.27643692 -3.8514328 -5.69319391 1.16833258 -5.24709797 -5.85935545 0.28158808 -4.25496912
		 -5.83357906 0.19246082 -4.298594 -3.81444263 1.49825525 -5.45497322 -3.75554919 1.070544004 -5.61221647
		 -4.8985734 0.063370652 -4.29491282 -5.018420696 0.21994051 -4.03301239 -4.46608925 0.72421265 -4.90403652
		 -4.45973969 0.31558979 -4.92298222 -3.90908384 0.68229723 -5.71830082 -5.13395548 0.68948394 -6.28311443
		 -5.18121719 1.016186953 -6.1764431 -5.3911109 0.72965455 -5.33059597 -5.38478231 0.32103172 -5.34954691
		 -5.69983625 0.22394927 -4.3472333 -5.57996988 0.067358635 -4.60912848 -4.32904434 1.16031504 -4.61802816
		 -5.31023455 1.079662323 -6.32910776 -5.38745499 1.50747728 -6.180305 -5.61723089 0.75235695 -5.41703224
		 -3.95634198 1.0090003014 -5.61165047;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 19 2 0 0 19 1 3 4 0 4 5 0 5 22 0
		 3 22 1 6 7 0 7 0 0 6 19 0 8 9 0 9 10 0 10 11 1 11 8 0 12 11 0 10 23 0 23 12 0 13 14 0
		 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0 2 4 0 3 19 1 21 3 0 21 6 0 1 5 0
		 20 21 0 22 20 0 10 0 1 7 23 1 9 1 1 9 17 0 17 5 1 22 15 1 20 14 1 18 8 0 11 16 1
		 20 7 0 14 23 0 13 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 3 0 9
		f 4 -15 -14 -13 -12
		mu 0 4 10 13 12 11
		f 4 -18 -17 13 -16
		mu 0 4 14 15 12 13
		f 4 -22 -21 -20 -19
		mu 0 4 16 19 18 17
		f 4 -25 -24 -23 20
		mu 0 4 19 21 20 18
		f 4 -3 -27 4 -26
		mu 0 4 2 3 4 5
		f 4 -29 27 26 -11
		mu 0 4 8 22 4 3
		f 4 1 25 5 -30
		mu 0 4 23 2 5 24
		f 4 -32 -8 -28 -31
		mu 0 4 25 7 4 26
		f 4 16 -34 9 -33
		mu 0 4 27 30 29 28
		f 4 -35 12 32 0
		mu 0 4 31 34 33 32
		f 4 34 29 -37 -36
		mu 0 4 35 38 37 36
		f 4 31 38 19 -38
		mu 0 4 39 42 41 40
		f 4 36 6 37 22
		mu 0 4 43 46 45 44
		f 4 24 -41 14 -40
		mu 0 4 21 19 13 10
		f 4 35 23 39 11
		mu 0 4 11 20 21 10
		f 4 -42 30 28 8
		mu 0 4 47 49 48 8
		f 4 -43 -39 41 33
		mu 0 4 50 53 52 51
		f 4 17 -44 18 42
		mu 0 4 15 14 16 17
		f 4 40 21 43 15
		mu 0 4 13 19 16 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Back_Arm_Toe_1_Geo_parentConstraint1" -p "Right_Back_Arm_Toe_1_Geo";
	rename -uid "C431516F-4308-EE36-B4A7-E49FE690F274";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Thumb1_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.9031998858164236 5.6472325375540988 -1.8461806091859003 ;
	setAttr ".tg[0].tor" -type "double3" -127.95196323488791 -11.60517591145245 80.787111212046881 ;
	setAttr ".lr" -type "double3" 3.1805546814635152e-15 1.5902773407317584e-14 -1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -4.4408920985006262e-16 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635152e-15 1.5902773407317584e-14 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Back_Arm_Toe_2_Geo" -p "Right_Back_Arm_Geo";
	rename -uid "36EE4236-40F7-BC0A-78C6-3A88F34F3AA1";
createNode transform -n "Right_Back_Arm_Heel_to_Toe_Tip2_Geo" -p "Right_Back_Arm_Toe_2_Geo";
	rename -uid "86F7D4DA-4CD4-3066-9560-079A9541746C";
createNode mesh -n "Right_Back_Arm_Heel_to_Toe_Tip2_GeoShape" -p "Right_Back_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "D2308C93-4246-11D7-CF09-22A58C19AFFC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Heel_to_Toe_Tip2_GeoShapeOrig" -p "Right_Back_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "36B4220F-4D62-B20E-AC57-5E8566F1D2C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4.61743355 1.19502306 -6.73629522 -4.89253712 1.011451244 -7.14528084
		 -4.94691944 1.48570943 -7.2388401 -4.6601181 1.59004092 -6.80975819 -4.29341078 1.19502306 -6.92463875
		 -4.51264334 1.011451244 -7.3661027 -4.33611584 1.59004092 -6.99810839 -4.56700611 1.48570943 -7.45965338;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 12 15 14 13
		f 4 8 -12 2 10
		mu 0 4 16 19 18 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Back_Arm_Toe_Tip2_Geo" -p "Right_Back_Arm_Toe_2_Geo";
	rename -uid "B34063E7-4365-A51C-185C-75BEE44C1CA4";
createNode mesh -n "Right_Back_Arm_Toe_Tip2_GeoShape" -p "Right_Back_Arm_Toe_Tip2_Geo";
	rename -uid "EC17DA9A-4AB9-3C42-6EFA-66B6F9695AFD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Toe_Tip2_GeoShapeOrig" -p "Right_Back_Arm_Toe_Tip2_Geo";
	rename -uid "A2AE4BC6-4AAB-CE25-6D55-6CA55884D7D5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801
		 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399
		 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501
		 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372
		 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331
		 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027
		 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001
		 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027
		 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625
		 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -6.059696674 0.56035221 -7.79204035 -6.38517952 0.18450561 -9.010104179
		 -6.50880957 0.38290775 -9.20932293 -4.54631567 1.36465764 -8.78499413 -5.50638962 0.38290775 -9.79199409
		 -5.39446831 0.18450561 -9.58597183 -5.62167597 1.70752025 -6.76299334 -5.50432158 0.88622439 -6.58527184
		 -3.72348547 0.88622439 -7.6204648 -3.81983662 1.70752025 -7.81039381 -5.37068272 0.82416141 -6.79053259
		 -5.8000083 0.53237402 -7.92430067 -3.96760917 0.82416141 -7.60612535 -4.49712563 0.56035221 -8.70030975
		 -6.21749449 0.20785193 -8.96370316 -6.11607647 0.065136164 -8.78925514 -5.33552027 0.065136164 -9.24295044
		 -5.78425217 0.25512615 -7.8972249 -4.72464275 0.25512615 -8.51313877 -3.95373392 0.55245936 -7.5822525
		 -5.3568058 0.55245936 -6.76666021 -5.43693304 0.20785193 -9.41741753 -4.74037361 0.53237402 -8.5402317
		 -6.10895729 1.36465764 -7.87669992;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 23 2 0 0 23 1 3 4 0 4 5 0 5 13 0
		 3 13 1 6 7 0 7 0 0 6 23 0 8 9 0 9 3 0 8 13 0 7 10 1 10 11 0 11 0 1 12 8 1 13 22 1
		 12 22 0 15 14 0 14 11 0 11 17 1 15 17 0 15 16 0 21 16 0 14 21 0 17 18 1 18 16 0 19 18 0
		 20 17 0 19 20 0 10 20 0 22 18 1 22 21 0 19 12 0 2 4 0 3 23 1 9 6 0 1 5 0 14 1 1 21 5 1
		 8 7 0 12 10 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 11 10 9
		f 4 13 -8 -13 -12
		mu 0 4 12 15 14 13
		f 4 9 -17 -16 -15
		mu 0 4 16 19 18 17
		f 4 19 -19 -14 -18
		mu 0 4 20 23 22 21
		f 4 23 -23 -22 -21
		mu 0 4 24 27 26 25
		f 4 26 25 -25 20
		mu 0 4 28 31 30 29
		f 4 -29 -28 -24 24
		mu 0 4 32 35 34 33
		f 4 31 30 27 -30
		mu 0 4 36 39 38 37
		f 4 -33 15 22 -31
		mu 0 4 40 43 42 41
		f 4 -35 33 28 -26
		mu 0 4 44 47 46 45
		f 4 29 -34 -20 -36
		mu 0 4 48 51 50 49
		f 4 -3 -38 4 -37
		mu 0 4 52 55 54 53
		f 4 -39 12 37 -11
		mu 0 4 56 13 58 57
		f 4 1 36 5 -40
		mu 0 4 59 62 61 60
		f 4 -41 21 16 0
		mu 0 4 63 65 18 64
		f 4 40 39 -42 -27
		mu 0 4 66 69 68 67
		f 4 41 6 18 34
		mu 0 4 70 72 22 71
		f 4 -43 11 38 8
		mu 0 4 73 75 13 74
		f 4 -44 17 42 14
		mu 0 4 76 79 78 77
		f 4 32 -32 35 43
		mu 0 4 80 83 82 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Back_Arm_Toe_2_Geo_parentConstraint1" -p "Right_Back_Arm_Toe_2_Geo";
	rename -uid "EF38A3B4-4FE8-E063-30C8-E4969DB12DFD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_MidFinger1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.5985677851130502 1.0321854048371559 4.960243552161927 ;
	setAttr ".tg[0].tor" -type "double3" -70.946971043906814 -21.498721498662981 -55.374927401853832 ;
	setAttr ".lr" -type "double3" 4.4139062980501569e-31 -6.361109362927032e-15 -7.9513867036587888e-15 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -2.2204460492503131e-16 0 ;
	setAttr ".rsrr" -type "double3" 4.4139062980501569e-31 -6.361109362927032e-15 -7.9513867036587888e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Back_Arm_Toe_3_Geo" -p "Right_Back_Arm_Geo";
	rename -uid "0C48FC5C-4BCD-8BFC-80C1-22A02FF69591";
createNode transform -n "Right_Back_Arm_Heel_to_Toe_Tip3_Geo" -p "Right_Back_Arm_Toe_3_Geo";
	rename -uid "E1CF5022-40F7-2785-521A-5C99DCD21E4B";
createNode mesh -n "Right_Back_Arm_Heel_to_Toe_Tip3_GeoShape" -p "Right_Back_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "B2BE1A54-4A44-585F-97D6-10B56ADEC1A0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Heel_to_Toe_Tip3_GeoShapeOrig" -p "Right_Back_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "7EA09558-478C-9CE9-6380-CB93D60E8A54";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4.17756128 1.25586057 -6.61392593 -3.7608304 1.012614369 -6.6423111
		 -3.64028859 1.35159278 -6.64231968 -4.09109211 1.47090006 -6.61395407 -4.1766119 1.25550747 -6.30243969
		 -3.75973082 1.012219667 -6.27711153 -4.090121746 1.47054696 -6.30246305 -3.63919401 1.3511982 -6.27709961;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 12 15 14 13
		f 4 8 -12 2 10
		mu 0 4 16 19 18 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Back_Arm_Toe_Tip3_Geo" -p "Right_Back_Arm_Toe_3_Geo";
	rename -uid "26B17977-4C5A-CA02-F94F-3297F8DFA455";
createNode mesh -n "Right_Back_Arm_Toe_Tip3_GeoShape" -p "Right_Back_Arm_Toe_Tip3_Geo";
	rename -uid "24420826-429D-B901-9940-7189979D1B70";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Back_Arm_Toe_Tip3_GeoShapeOrig" -p "Right_Back_Arm_Toe_Tip3_Geo";
	rename -uid "DB8A7080-409A-AC5C-4176-5596B1EC99A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699 0.164968
		 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -2.88899016 0.76315778 -7.21377325 -1.77450848 0.21933816 -6.94288588
		 -1.72531295 0.3091093 -6.9485302 -2.70393467 1.17994356 -5.71166849 -1.72239947 0.30805001 -5.98487663
		 -1.77161026 0.21829961 -5.99045229 -3.68880105 1.50712419 -7.32561445 -3.85046029 1.07712841 -7.31549978
		 -2.16068935 0.089458704 -6.8407259 -1.87480235 0.24989192 -6.84140539 -2.90415955 0.74126542 -6.97189665
		 -2.91853094 0.33239329 -6.97230768 -3.87671375 0.68732381 -7.13407946 -3.87260008 0.68582833 -5.7852397
		 -3.76036119 1.014089108 -5.78521204 -2.9010663 0.74014372 -5.9532547 -2.9154644 0.33127171 -5.95365095
		 -1.87254286 0.24908186 -6.091029644 -2.15843081 0.088627875 -6.090350151 -2.70846701 1.1816051 -7.21390676
		 -3.84522867 1.075238228 -5.60347652 -3.68352365 1.50521326 -5.59340143 -2.88443637 0.76149607 -5.71161699
		 -3.76447535 1.015563846 -7.13405275;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 19 2 0 0 19 1 3 4 0 4 5 0 5 22 0
		 3 22 1 6 7 0 7 0 0 6 19 0 8 9 0 9 10 0 10 11 1 11 8 0 12 11 0 10 23 0 23 12 0 13 14 0
		 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0 2 4 0 3 19 1 21 3 0 21 6 0 1 5 0
		 20 21 0 22 20 0 10 0 1 7 23 1 9 1 1 9 17 0 17 5 1 22 15 1 20 14 1 18 8 0 11 16 1
		 20 7 0 14 23 0 13 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 11 10 9
		f 4 -15 -14 -13 -12
		mu 0 4 12 15 14 13
		f 4 -18 -17 13 -16
		mu 0 4 16 19 18 17
		f 4 -22 -21 -20 -19
		mu 0 4 20 23 22 21
		f 4 -25 -24 -23 20
		mu 0 4 24 27 26 25
		f 4 -3 -27 4 -26
		mu 0 4 28 31 30 29
		f 4 -29 27 26 -11
		mu 0 4 32 35 34 33
		f 4 1 25 5 -30
		mu 0 4 36 39 38 37
		f 4 -32 -8 -28 -31
		mu 0 4 40 43 42 41
		f 4 16 -34 9 -33
		mu 0 4 44 47 46 45
		f 4 -35 12 32 0
		mu 0 4 48 51 50 49
		f 4 34 29 -37 -36
		mu 0 4 52 55 54 53
		f 4 31 38 19 -38
		mu 0 4 56 59 58 57
		f 4 36 6 37 22
		mu 0 4 60 63 62 61
		f 4 24 -41 14 -40
		mu 0 4 64 67 66 65
		f 4 35 23 39 11
		mu 0 4 68 71 70 69
		f 4 -42 30 28 8
		mu 0 4 72 75 74 73
		f 4 -43 -39 41 33
		mu 0 4 76 79 78 77
		f 4 17 -44 18 42
		mu 0 4 80 83 82 81
		f 4 40 21 43 15
		mu 0 4 84 87 86 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Back_Arm_Toe_3_Geo_parentConstraint1" -p "Right_Back_Arm_Toe_3_Geo";
	rename -uid "A52884DC-4180-1B71-C8DB-F382BA18CEBB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Pinky1_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.9485960227460759 -7.2290317401088018 -0.4367088602751375 ;
	setAttr ".tg[0].tor" -type "double3" 93.868132779742169 150.51587857704001 12.623839753175163 ;
	setAttr ".lr" -type "double3" -1.7493050748049341e-14 1.2722218725854065e-14 -5.5659706925611567e-15 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 2.2204460492503131e-16 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -1.7493050748049341e-14 1.2722218725854065e-14 -5.5659706925611567e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Middle_Arm_Geo" -p "SpiderBot_Geo";
	rename -uid "3994873F-4A8B-CBFD-C7E4-D29F8E8F009F";
createNode transform -n "Right_Middle_Upper_Arm_Geo" -p "Right_Middle_Arm_Geo";
	rename -uid "F25D7F26-4C49-38C3-361A-5D95E4BAC40E";
createNode transform -n "Right_Middle_Arm_Knee_Geo" -p "Right_Middle_Upper_Arm_Geo";
	rename -uid "EDE827AB-4719-EC86-DA4E-B9B81B1F9633";
createNode mesh -n "Right_Middle_Arm_Knee_GeoShape" -p "Right_Middle_Arm_Knee_Geo";
	rename -uid "610EAC4C-4C82-4ED4-7FFA-9CB72EC028F1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Knee_GeoShapeOrig" -p "Right_Middle_Arm_Knee_Geo";
	rename -uid "8F69753F-4D9A-51CB-6FD3-D1A93E8599B8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.93326402 0.55445099
		 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202 0.922194 0.56268197
		 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199 0.91118097 0.58714199
		 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099 0.93326402 0.55445099
		 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802 0.91465998 0.53527802
		 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202 0.90329701 0.54415202
		 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701 0.90489799 0.55673701
		 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199 0.894777 0.57577199
		 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202 0.90329701 0.54415202
		 0.91465998 0.53527802;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -6.056529045 11.247715 -0.43265581 -6.11158466 11.45953178 -0.43261719
		 -5.88866234 11.21732235 -0.42035794 -5.98401833 11.58428669 -0.42029023 -5.76965237 11.33932304 -0.43749642
		 -5.82469368 11.55114365 -0.43744302 -5.44266033 11.44244766 -0.5176425 -5.56830311 11.64978886 -0.51774144
		 -5.4416008 11.44282436 -1.073418856 -5.7682848 11.33981037 -1.15498066 -5.88722801 11.21783257 -1.1727066
		 -6.055153847 11.24820423 -1.16102362 -6.11018276 11.46003056 -1.16098475 -5.9825983 11.58479118 -1.17265534
		 -5.82334042 11.5516243 -1.15494108 -5.56724262 11.65016556 -1.073517799;
	setAttr -s 28 ".ed[0:27]"  2 0 0 0 1 0 1 3 0 3 2 1 4 2 0 3 5 0 5 4 1
		 6 4 0 5 7 0 7 6 0 6 8 0 8 9 0 9 4 1 9 10 0 10 2 0 10 11 0 11 0 0 12 11 0 1 12 0 10 13 1
		 13 12 0 9 14 1 14 13 0 8 15 0 15 14 0 15 7 0 5 14 0 3 13 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 3 -5
		mu 0 4 4 5 3 0
		f 4 -10 -9 6 -8
		mu 0 4 6 7 5 4
		f 4 7 -13 -12 -11
		mu 0 4 6 4 9 8
		f 4 4 -15 -14 12
		mu 0 4 4 0 11 10
		f 4 0 -17 -16 14
		mu 0 4 0 1 13 12
		f 4 18 17 16 1
		mu 0 4 2 15 14 1
		f 4 -21 -20 15 -18
		mu 0 4 16 19 18 17
		f 4 -23 -22 13 19
		mu 0 4 20 23 22 21
		f 4 -25 -24 11 21
		mu 0 4 24 27 26 25
		f 4 24 -27 8 -26
		mu 0 4 28 29 5 7
		f 4 22 -28 5 26
		mu 0 4 30 31 3 5
		f 4 20 -19 2 27
		mu 0 4 32 33 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Thigh_Geo" -p "Right_Middle_Upper_Arm_Geo";
	rename -uid "69D28CE1-4119-AEBA-53C7-B9BF13DAA765";
createNode mesh -n "Right_Middle_Arm_Thigh_GeoShape" -p "Right_Middle_Arm_Thigh_Geo";
	rename -uid "004FAC54-45F1-9E3B-7322-238E6C28A985";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" 0.88565999 0.55092603
		 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499
		 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802
		 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802
		 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701
		 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478
		 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -6.22605705 11.84802628 -0.53975391 -6.26252651 11.7812624 -0.53986883
		 -6.26156044 11.78160667 -1.053873301 -6.22507668 11.84837437 -1.053742886 -1.95894122 11.52048397 -0.36445946
		 -1.72841001 11.32593155 -0.54121447 -2.037008524 10.69962502 -0.36516464 -2.22543931 11.54581833 -0.36493552
		 -2.30350566 10.72495842 -0.36564064 -1.77389503 10.84755135 -0.54162538 -2.03537631 10.70020485 -1.21393061
		 -2.3018949 10.72555447 -1.21442163 -1.77296615 10.84788132 -1.036267519 -1.95733762 11.52105427 -1.2132256
		 -2.22382092 11.54639339 -1.21371639 -1.72748065 11.32626057 -1.035856605 -2.38605046 10.66118526 -0.31296289
		 -2.2945025 11.62394619 -0.31213593 -2.79252744 10.89948463 -0.52703488 -2.73859668 11.46689606 -0.52654743
		 -3.83054471 11.73135662 -0.52845013 -2.38423085 10.66183186 -1.26749992 -2.79153609 10.89983845 -1.054672003
		 -3.93277049 11.33120346 -0.52891624 -2.29268241 11.62459278 -1.26667285 -2.73757672 11.46725845 -1.054184437
		 -3.82953811 11.73171329 -1.056072235 -3.93177867 11.33155632 -1.056553125 -4.87759304 11.77354527 -1.058041811
		 -4.9863348 11.44302273 -1.058488131 -5.25122452 11.78607273 -1.058745861 -5.41053295 11.3590126 -1.059353828
		 -5.68885517 11.7588253 -1.22017789 -5.68763161 11.87506485 -0.3713274 -5.69047356 11.75825024 -0.37139797
		 -5.41152477 11.35865974 -0.53171682 -5.68601418 11.87563896 -1.22010922 -5.25223064 11.7857151 -0.53112364
		 -4.98735523 11.44266033 -0.53085136 -4.87859917 11.77318859 -0.53041983;
	setAttr -s 77 ".ed[0:76]"  0 1 0 1 2 0 2 3 0 3 0 0 6 4 0 4 5 0 5 9 0
		 6 9 0 7 4 0 6 8 0 8 7 0 10 6 0 12 9 0 10 12 0 10 11 0 11 8 0 13 10 0 12 15 0 13 15 0
		 13 14 0 14 11 0 4 13 0 15 5 0 7 14 0 8 16 0 16 17 0 17 7 0 16 18 0 18 19 1 19 17 0
		 20 19 0 23 18 0 20 23 1 11 21 0 21 16 0 21 22 0 22 18 1 27 22 0 23 27 1 14 24 0 24 21 0
		 24 25 0 25 22 1 25 26 0 26 27 1 26 28 0 28 29 1 29 27 0 28 30 0 30 31 1 31 29 0 32 31 0
		 30 36 0 32 36 0 17 14 1 17 24 0 19 25 0 26 20 1 0 33 0 33 34 0 34 1 0 35 34 0 37 33 0
		 35 37 1 34 32 0 32 2 0 35 31 0 36 3 0 36 33 1 30 37 1 39 38 1 38 35 0 37 39 0 23 38 0
		 39 20 0 38 29 1 28 39 1;
	setAttr -s 39 -ch 154 ".fc[0:38]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 -11 -10 4 -9
		mu 0 4 8 9 4 5
		f 4 13 12 -8 -12
		mu 0 4 10 11 7 4
		f 4 -16 -15 11 9
		mu 0 4 9 13 12 4
		f 4 18 -18 -14 -17
		mu 0 4 14 17 16 15
		f 4 -21 -20 16 14
		mu 0 4 18 21 20 19
		f 4 5 -23 -19 -22
		mu 0 4 5 6 23 22
		f 4 -24 8 21 19
		mu 0 4 24 8 5 25
		f 4 -27 -26 -25 10
		mu 0 4 8 27 26 9
		f 4 -30 -29 -28 25
		mu 0 4 27 29 28 26
		f 4 32 31 28 -31
		mu 0 4 30 31 28 29
		f 4 24 -35 -34 15
		mu 0 4 32 35 34 33
		f 4 27 -37 -36 34
		mu 0 4 35 37 36 34
		f 4 38 37 36 -32
		mu 0 4 38 39 36 37
		f 4 33 -41 -40 20
		mu 0 4 40 43 42 41
		f 4 35 -43 -42 40
		mu 0 4 44 47 46 45
		f 4 -38 -45 -44 42
		mu 0 4 48 51 50 49
		f 4 -48 -47 -46 44
		mu 0 4 51 54 53 52
		f 4 -51 -50 -49 46
		mu 0 4 54 56 55 53
		f 4 53 -53 49 -52
		mu 0 4 57 58 55 56
		f 3 -55 26 23
		mu 0 3 59 61 60
		f 3 39 -56 54
		mu 0 3 59 62 61
		f 4 41 -57 29 55
		mu 0 4 62 64 63 61
		f 4 57 30 56 43
		mu 0 4 65 66 63 64
		f 4 -61 -60 -59 0
		mu 0 4 1 68 67 0
		f 4 63 62 59 -62
		mu 0 4 69 71 67 70
		f 4 -66 -65 60 1
		mu 0 4 72 75 74 73
		f 4 -67 61 64 51
		mu 0 4 76 77 74 75
		f 4 -68 -54 65 2
		mu 0 4 78 80 57 79
		f 4 58 -69 67 3
		mu 0 4 81 84 83 82
		f 4 -70 52 68 -63
		mu 0 4 85 86 83 84
		f 4 6 -13 17 22
		mu 0 4 6 7 88 87
		f 4 -73 -64 -72 -71
		mu 0 4 89 92 91 90
		f 4 -33 -75 70 -74
		mu 0 4 93 30 95 94
		f 4 50 -76 71 66
		mu 0 4 76 97 96 77
		f 4 47 -39 73 75
		mu 0 4 97 39 38 96
		f 4 72 -77 48 69
		mu 0 4 85 99 98 86
		f 4 74 -58 45 76
		mu 0 4 99 66 65 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Middle_Upper_Arm_Geo_parentConstraint1" -p "Right_Middle_Upper_Arm_Geo";
	rename -uid "8FC916F1-4A8E-A8EF-50BB-7285AF295E0E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Shoulder_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.2566231760199225 0.80758013128464357 11.139830884503271 ;
	setAttr ".tg[0].tor" -type "double3" -90.507586656771053 2.3612426249083196 -0.24903274160348171 ;
	setAttr ".lr" -type "double3" -8.4337191869905219e-16 -1.6867438373981048e-15 1.2414111463266075e-32 ;
	setAttr ".rst" -type "double3" 2.2204460492503131e-16 1.7763568394002505e-15 2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" -8.4337191869905219e-16 -1.6867438373981048e-15 
		1.2414111463266075e-32 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Middle_Fore_Arm_Geo" -p "Right_Middle_Arm_Geo";
	rename -uid "FCC6C3ED-42E0-0A2D-6D8E-F8967ABE40CB";
createNode transform -n "Right_Middle_Arm_Ankle_Geo" -p "Right_Middle_Fore_Arm_Geo";
	rename -uid "239F6387-4CDB-985B-1E50-608250903072";
createNode mesh -n "Right_Middle_Arm_Ankle_GeoShape" -p "Right_Middle_Arm_Ankle_Geo";
	rename -uid "CB5C081F-418C-3271-219B-AE8A08D0AFE7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.77148402 0.87109399
		 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601
		 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125
		 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699
		 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402 0.74804699
		 0.92773402 0.74609399 0.92773402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -7.94142818 2.7559073 -0.62012291 -7.44325638 2.6729579 -0.6262331
		 -7.4469738 2.67529011 -0.95920014 -7.9451437 2.75823903 -0.95309019 -8.022748947 2.88580751 -0.4400239
		 -7.36338425 2.77601838 -0.44812107 -7.29707193 3.16935587 -0.38080716 -7.41575193 3.45653248 -0.6249938
		 -7.41981268 3.45660901 -0.95530009 -7.3061142 3.17126846 -1.14452887 -7.37093353 2.77888179 -1.10171437
		 -8.030299187 2.88867116 -1.093617678 -7.9654789 3.2810576 -1.13643026 -7.95643806 3.27914548 -0.37270927
		 -7.75227165 3.51256561 -0.62085605 -7.75631809 3.51263976 -0.95117879;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 4 5 0 5 1 0
		 6 5 0 13 4 0 6 13 0 7 8 0 8 9 0 9 6 0 6 7 0 9 10 0 10 5 0 10 2 0 10 11 0 11 3 0 12 11 0
		 12 9 0 11 4 0 12 13 0 14 13 0 12 15 0 15 14 0 8 15 0 14 7 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 -5 0
		mu 0 4 1 5 4 0
		f 4 9 8 5 -8
		mu 0 4 6 7 4 5
		f 4 -14 -13 -12 -11
		mu 0 4 8 6 10 9
		f 4 7 -16 -15 12
		mu 0 4 6 5 11 10
		f 4 6 1 -17 15
		mu 0 4 5 1 2 11
		f 4 -19 -18 16 2
		mu 0 4 12 13 11 2
		f 4 20 14 17 -20
		mu 0 4 14 10 11 13
		f 4 4 -22 18 3
		mu 0 4 0 4 13 3
		f 4 -23 19 21 -9
		mu 0 4 7 15 13 4
		f 4 -26 -25 22 -24
		mu 0 4 16 17 15 7
		f 4 11 -21 24 -27
		mu 0 4 9 10 14 18
		f 4 23 -10 13 -28
		mu 0 4 16 7 6 8
		f 4 26 25 27 10
		mu 0 4 9 17 16 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Ankle_to_Heel_Geo" -p "Right_Middle_Fore_Arm_Geo";
	rename -uid "EADCBBD7-4722-BA98-BCCC-D0BA3586CF26";
createNode mesh -n "Right_Middle_Arm_Ankle_to_Heel_GeoShape" -p "Right_Middle_Arm_Ankle_to_Heel_Geo";
	rename -uid "83B30FA9-4B4B-4EF0-1445-A693A2809E78";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -7.90502501 1.59162581 -0.98601437 -7.48253727 1.58942187 -0.99112391
		 -7.47629738 2.78560257 -0.99112439 -7.89878559 2.78780651 -0.98601437 -7.47741318 1.58939505 -0.56861544
		 -7.47118759 2.78274488 -0.56861591 -7.89989948 1.59159899 -0.56350613 -7.89367485 2.78494859 -0.56350613;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 4 6 0 6 7 0 7 5 0 6 0 0 3 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 1 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 5 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 8 -12 3 -11
		mu 0 4 12 15 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Heel_Geo" -p "Right_Middle_Fore_Arm_Geo";
	rename -uid "DFDB426A-49D9-B49C-A269-57814473016A";
createNode mesh -n "Right_Middle_Arm_Heel_GeoShape" -p "Right_Middle_Arm_Heel_Geo";
	rename -uid "2971DE6C-4778-0EBD-E350-31885997788F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Heel_GeoShapeOrig" -p "Right_Middle_Arm_Heel_Geo";
	rename -uid "ADB84B0B-4AC3-E13D-EB66-CCADDB00E89D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -8.20697975 1.63783205 -1.13793683 -8.20697975 1.080827951 -1.13793683
		 -7.5271225 1.63783205 -1.36798 -7.5271225 1.080827951 -1.36798 -7.098231316 1.63783205 -0.79246926
		 -7.098231316 1.080827951 -0.79246926 -7.51306009 1.63783205 -0.20675421 -7.51306009 1.080827951 -0.20675421
		 -8.19829369 1.63783205 -0.42025805 -8.19829369 1.080806971 -0.42025805;
	setAttr -s 17 ".ed[0:16]"  2 0 0 0 1 0 1 3 0 3 2 0 4 2 0 3 5 0 5 4 0
		 6 4 0 5 7 0 7 6 0 8 6 0 7 9 0 9 8 0 0 8 0 9 1 0 5 1 1 2 6 1;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 3 -5
		mu 0 4 4 5 3 0
		f 4 -10 -9 6 -8
		mu 0 4 6 7 5 4
		f 4 -13 -12 9 -11
		mu 0 4 8 9 7 6
		f 4 1 -15 12 -14
		mu 0 4 10 11 9 8
		f 4 14 -16 8 11
		mu 0 4 12 15 14 13
		f 3 2 5 15
		mu 0 3 15 16 14
		f 4 10 -17 0 13
		mu 0 4 8 6 0 10
		f 3 7 4 16
		mu 0 3 6 4 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Calf_Geo" -p "Right_Middle_Fore_Arm_Geo";
	rename -uid "1BDF22B8-40FB-EAE6-DAC1-B3B9B39A190F";
createNode mesh -n "Right_Middle_Arm_Calf_GeoShape" -p "Right_Middle_Arm_Calf_Geo";
	rename -uid "9C4440D5-4387-961E-E11C-239F73D9DB76";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.52856898 0.97485399
		 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137
		 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501
		 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499
		 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303
		 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899
		 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699
		 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899
		 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698
		 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699
		 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797 0.69657397
		 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999
		 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302
		 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399 0.96858698
		 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413 0.82681203
		 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099 0.57310098
		 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303
		 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898
		 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104
		 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763
		 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401
		 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098
		 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288 0.56166101 0.49178499
		 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201 0.56129599 0.49112499
		 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498
		 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949
		 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699
		 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399
		 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366
		 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502
		 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401
		 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803
		 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398
		 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401
		 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302
		 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101
		 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599
		 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801
		 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999
		 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398
		 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398
		 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801
		 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101
		 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899
		 0.996889 0.58270597 0.99704999 0.51962101 0.69467402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  -6.50616455 11.31232262 -1.40151715 -6.41664267 11.41366863 -1.053970575
		 -6.540205 11.43349266 -1.058198929 -6.63335228 11.31036854 -1.42382073 -8.09239006 4.28142881 -0.174788
		 -8.075546265 2.43839025 -0.32501221 -8.1275301 2.32064128 -0.20125914 -8.12735367 4.27726984 0.10831165
		 -8.12735367 4.27726984 -1.67637181 -8.12751579 2.3206389 -1.36681581 -8.075546265 2.43839025 -1.24328804
		 -7.51044273 3.11523104 -0.19422388 -6.99786186 4.027519226 -0.16357017 -7.26606178 3.55315065 -0.486902
		 -7.50392342 3.12536812 -0.36176109 -6.99786282 4.027519226 -1.40472984 -7.51044178 3.1152308 -1.37407565
		 -7.50392342 3.12536836 -1.20653939 -7.26606131 3.55315065 -1.081397057 -6.25939894 11.49797821 -0.56431293
		 -6.10898829 11.62484646 -0.5448184 -5.65644264 11.3975811 -0.56431341 -6.30363369 11.23231602 -0.56431293
		 -5.70067739 11.13191986 -0.56431341 -5.75759983 11.56633759 -0.54481864 -5.65644264 11.3975811 -1.022928715
		 -5.70067739 11.13191986 -1.022928715 -5.56314373 11.039198875 -1.27376294 -5.56314278 11.039198875 -0.31347871
		 -5.66495466 10.63121223 -1.29642487 -5.66495371 10.63121223 -0.27187467 -6.12186337 8.67997742 -1.40271235
		 -6.12186241 8.67997742 -0.16558743 -6.49808407 6.48879862 -1.40744829 -5.75761461 11.56633949 -1.042438984
		 -6.25939894 11.49797821 -1.022928238 -6.30363369 11.23231602 -1.022928238 -6.49457502 11.18655777 -0.31347799
		 -6.68622494 10.78237152 -0.27187395 -7.29925537 9.044511795 -0.1702919 -7.083529949 8.66493034 -0.160851
		 -7.76531267 4.57032871 -1.40744805 -8.092391014 4.28142881 -1.3935101 -7.44110155 6.62041807 -1.40744853
		 -7.083529949 8.66493034 -1.40744805 -7.29925585 9.044511795 -1.39800668 -6.68622446 10.78237152 -1.29642463
		 -6.49457502 11.18655777 -1.27376318 -8.25004101 2.3467803 -0.19437313 -8.25004196 2.3467803 -1.37368631
		 -8.24134064 4.46837997 -1.69005609 -8.24134159 4.46837997 0.12199593 -8.0053081512 6.71151352 -1.70336771
		 -8.0052919388 6.71151114 0.13529205 -7.50092077 8.91069317 -1.69778061 -7.50093555 8.91069508 0.12970591
		 -6.83750153 10.83075523 -1.56793261 -6.83702612 10.83360958 -0.00057554245 -6.63282585 11.31353664 -0.16655731
		 -6.540205 11.43349266 -0.5294919 -6.10900307 11.62484837 -1.042438745 -7.76531219 4.57032871 -0.160851
		 -7.44110203 6.62041807 -0.160851 -7.90890026 2.64029932 -1.11290264 -7.33032084 9.055123329 0.12393761
		 -7.11429119 8.67555714 0.13541126 -6.71289063 10.81722546 -0.0013051033 -6.50591278 11.3139286 -0.18815851
		 -7.47314882 6.62286234 0.13527632 -7.79877281 4.56465578 0.13512897 -7.79878759 4.56465864 -1.70320177
		 -7.4731493 6.62286234 -1.70333695 -7.11429167 8.67555809 -1.70347095 -7.33026218 9.055113792 -1.69202924
		 -6.71348381 10.81365967 -1.56741095 -6.41662645 11.41366577 -0.53373337 -6.49808359 6.48879862 -0.16085076
		 -7.90889835 2.64029908 -0.45539522 -7.71752357 3.61028957 -0.48688602 -8.029619217 3.36215711 -0.36175966
		 -7.9960103 2.72970009 -0.45541096 -7.71752405 3.61028957 -1.081413507 -8.029619217 3.36215734 -1.20653844
		 -7.99601078 2.72970009 -1.1128881;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 1 42 10 0 8 42 0 11 12 0 12 13 1 13 14 0 14 11 1 15 16 0 16 17 1 17 18 0 18 15 1
		 21 19 1 19 20 0 20 24 0 21 24 0 22 19 0 21 23 0 23 22 0 25 21 0 34 24 0 25 34 0 25 26 0
		 26 23 0 26 27 1 27 28 0 28 23 1 27 29 0 29 30 1 30 28 0 29 31 0 31 32 1 32 30 0 31 33 0
		 76 33 1 76 32 0 35 25 1 34 60 0 60 35 0 35 36 0 36 26 0 28 37 0 37 22 0 30 38 1 38 37 0
		 32 39 1 39 38 0 40 39 0 32 40 0 41 42 0 42 15 1 15 41 1 43 41 0 15 33 0 33 43 1 44 43 0
		 31 44 1 31 45 1 45 44 0 29 46 1 46 45 0 27 47 0 47 46 0 36 47 0 48 49 0 49 50 0 50 51 1
		 51 48 0 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1 57 55 0 56 3 0
		 3 58 1 58 57 0 2 59 0 59 58 0 12 61 1 61 62 0 76 62 1 12 76 0 4 61 0 11 4 1 11 5 0
		 63 17 0 16 10 0 10 63 1 64 65 0 65 55 1 55 64 1 66 64 0 57 66 1 67 66 0 58 67 0 65 68 0
		 68 53 1 68 69 0 69 51 1 69 7 0 7 51 1 6 48 0 6 9 0 9 49 0 8 70 0 70 50 1 50 8 1 70 71 0
		 71 52 1 71 72 0 72 54 1 72 73 0 73 54 1 73 74 0 74 56 1 74 0 0 1 75 0 75 59 1 75 67 0
		 5 10 1 71 43 1 44 72 0 70 41 0 45 73 0 46 74 1 47 0 1 36 1 0 36 22 0 22 75 1 35 19 0
		 65 40 0 40 62 0 62 68 1 64 39 0 66 38 1 67 37 1 18 13 0 12 15 1 14 77 0 77 5 1 77 63 0
		 13 78 0 78 79 0 79 14 1 79 80 0 80 77 0 18 81 0 81 78 0 81 82 0 82 79 0 83 82 0 80 83 0
		 63 83 0 82 17 1;
	setAttr ".ed[166:167]" 61 69 0 60 20 0;
	setAttr -s 86 -ch 336 ".fc[0:85]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 11 10 -10 -9
		mu 0 4 8 11 10 9
		f 4 -16 -15 -14 -13
		mu 0 4 12 15 14 13
		f 4 -20 -19 -18 -17
		mu 0 4 16 19 18 17
		f 4 23 -23 -22 -21
		mu 0 4 20 23 22 21
		f 4 -27 -26 20 -25
		mu 0 4 24 25 20 21
		f 4 29 28 -24 -28
		mu 0 4 26 27 23 20
		f 4 -32 -31 27 25
		mu 0 4 25 29 28 20
		f 4 -35 -34 -33 31
		mu 0 4 25 32 31 30
		f 4 -38 -37 -36 33
		mu 0 4 33 35 34 31
		f 4 -41 -40 -39 36
		mu 0 4 36 38 37 34
		f 4 -44 42 -42 39
		mu 0 4 39 41 40 37
		f 4 -47 -46 -30 -45
		mu 0 4 42 45 44 43
		f 4 -49 -48 44 30
		mu 0 4 46 49 48 47
		f 4 -51 -50 34 26
		mu 0 4 24 51 50 25
		f 4 -53 -52 37 49
		mu 0 4 51 54 53 52
		f 4 -55 -54 40 51
		mu 0 4 54 57 56 55
		f 3 -57 53 -56
		mu 0 3 58 59 57
		f 3 -60 -59 -58
		mu 0 3 60 62 61
		f 4 -63 -62 59 -61
		mu 0 4 63 40 64 60
		f 4 -65 41 62 -64
		mu 0 4 65 37 40 63
		f 3 -67 -66 64
		mu 0 3 66 67 37
		f 4 -69 -68 38 65
		mu 0 4 68 69 34 37
		f 4 -71 -70 35 67
		mu 0 4 70 71 31 34
		f 4 -72 48 32 69
		mu 0 4 72 74 73 31
		f 4 -76 -75 -74 -73
		mu 0 4 75 78 77 76
		f 4 -79 -78 -77 74
		mu 0 4 78 80 79 77
		f 4 -82 -81 -80 77
		mu 0 4 80 82 81 79
		f 4 -85 -84 -83 80
		mu 0 4 82 84 83 81
		f 4 -88 -87 -86 83
		mu 0 4 84 86 85 83
		f 4 -90 -89 2 86
		mu 0 4 86 88 87 85
		f 4 93 92 -92 -91
		mu 0 4 13 41 90 89
		f 4 -96 12 90 -95
		mu 0 4 4 12 13 91
		f 3 4 -97 95
		mu 0 3 4 5 12
		f 4 -100 -99 17 -98
		mu 0 4 92 95 94 93
		f 4 -11 58 16 98
		mu 0 4 96 99 98 97
		f 3 -103 -102 -101
		mu 0 3 100 102 101
		f 4 -105 84 102 -104
		mu 0 4 103 104 102 100
		f 4 -107 87 104 -106
		mu 0 4 105 106 104 103
		f 4 81 -109 -108 101
		mu 0 4 102 108 107 101
		f 4 78 -111 -110 108
		mu 0 4 108 110 109 107
		f 3 -113 -112 110
		mu 0 3 110 7 109
		f 4 -114 6 112 75
		mu 0 4 111 6 7 110
		f 4 113 72 -116 -115
		mu 0 4 6 111 113 112
		f 3 -119 -118 -117
		mu 0 3 114 116 115
		f 4 115 73 118 8
		mu 0 4 117 120 119 118
		f 4 76 -121 -120 117
		mu 0 4 121 123 122 115
		f 4 79 -123 -122 120
		mu 0 4 124 127 126 125
		f 3 -125 -124 122
		mu 0 3 127 128 126
		f 4 -127 -126 124 82
		mu 0 4 129 130 128 127
		f 4 3 -128 126 85
		mu 0 4 3 0 130 129
		f 4 1 88 -130 -129
		mu 0 4 1 2 132 131
		f 4 129 89 106 -131
		mu 0 4 133 134 106 105
		f 4 5 114 9 -132
		mu 0 4 5 6 136 135
		f 4 121 -134 63 -133
		mu 0 4 137 126 138 63
		f 4 -135 119 132 60
		mu 0 4 60 115 139 63
		f 4 -12 116 134 57
		mu 0 4 140 141 115 60
		f 4 -136 66 133 123
		mu 0 4 128 143 142 126
		f 4 -137 68 135 125
		mu 0 4 130 145 144 128
		f 4 -138 70 136 127
		mu 0 4 0 147 146 130
		f 4 -139 71 137 0
		mu 0 4 1 149 148 0
		f 4 -141 -140 138 128
		mu 0 4 150 24 151 1
		f 4 -142 47 139 24
		mu 0 4 21 153 152 24
		f 4 107 -145 -144 -143
		mu 0 4 101 107 154 58
		f 4 -146 100 142 55
		mu 0 4 57 100 101 58
		f 4 -147 103 145 54
		mu 0 4 54 103 100 57
		f 4 -148 105 146 52
		mu 0 4 51 105 103 54
		f 4 140 130 147 50
		mu 0 4 24 155 105 51
		f 4 19 -150 13 -149
		mu 0 4 156 157 13 14
		f 4 61 -43 -94 149
		mu 0 4 158 40 41 13
		f 4 -152 -151 15 96
		mu 0 4 5 159 15 12
		f 4 99 -153 151 131
		mu 0 4 160 92 161 5
		f 4 -156 -155 -154 14
		mu 0 4 15 163 162 14
		f 4 -158 -157 155 150
		mu 0 4 164 165 163 15
		f 4 153 -160 -159 148
		mu 0 4 14 162 167 166
		f 4 154 -162 -161 159
		mu 0 4 162 163 169 168
		f 4 163 162 161 156
		mu 0 4 165 171 170 163
		f 4 -166 -163 -165 97
		mu 0 4 172 174 173 92
		f 4 158 160 165 18
		mu 0 4 175 178 177 176
		f 4 164 -164 157 152
		mu 0 4 92 180 165 179
		f 4 91 144 109 -167
		mu 0 4 181 182 107 109
		f 4 7 94 166 111
		mu 0 4 7 4 183 109
		f 4 21 -168 46 141
		mu 0 4 21 22 185 184
		f 4 22 -29 45 167
		mu 0 4 22 23 187 186
		f 4 143 -93 43 56
		mu 0 4 58 188 41 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Shin_Geo" -p "Right_Middle_Fore_Arm_Geo";
	rename -uid "3AC2CEBB-4DC3-B6DB-675B-AF8967FD0217";
createNode mesh -n "Right_Middle_Arm_Shin_GeoShape" -p "|Spider_Rig|SpiderBot_Geo|Right_Middle_Arm_Geo|Right_Middle_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo";
	rename -uid "57A1C145-45D8-6013-2B2A-ABB920BCF141";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:105]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 237 ".uvst[0].uvsp[0:236]" -type "float2" 0.091770999 0.369551
		 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097
		 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197
		 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999
		 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386
		 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551
		 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197
		 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801
		 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501
		 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572
		 0.65227503 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001
		 0.65341401 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499
		 0.73260999 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703
		 0.125136 0.65086901 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297
		 0.074359 0.58401501 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402
		 0.063110001 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301
		 0.10611 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899
		 0.116622 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499
		 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903
		 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099
		 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749
		 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503
		 0.21557599 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702
		 0.29026499 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401
		 0.29699001 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703
		 0.183137 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901
		 0.18320601 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699
		 0.198421 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265
		 0.64977902 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359
		 0.58401501 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001
		 0.65320301 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498
		 0.093028001 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001
		 0.130492 0.53603703 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001
		 0.29699001 0.65341401 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503
		 0.29158199 0.55224901 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002
		 0.306741 0.48896801 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999
		 0.29026499 0.91377503 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001
		 0.097764999 0.46727601 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703
		 0.061469 0.83352 0.14167701 0.83245897 0.119689 0.75301498 0.14167701 0.83245897
		 0.061469 0.83352 0.063110001 0.75552702 0.14167701 0.83245897 0.119689 0.75301498
		 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903 0.180035 0.54325098
		 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002 0.52486098 0.198421
		 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401 0.24582 0.55150002
		 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499 0.73260999
		 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099 0.74019098
		 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622 0.768843 0.21557599
		 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297
		 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918
		 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689 0.75301498 0.135295
		 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401
		 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801
		 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702
		 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999
		 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352
		 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101 0.92042899 0.091770999 0.369551
		 0.099601001 0.36329001 0.158557 0.94473398 0.138069 0.95506698 0.058373999 0.917386
		 0.062306002 0.89308703 0.138069 0.95506698 0.158557 0.94473398 0.138069 0.95506698
		 0.069045 0.97977501 0.046569001 0.95226097 0.058373999 0.917386 0.058373999 0.917386
		 0.046569001 0.95226097;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".vt[0:118]"  -8.40855789 3.22082591 -0.38730478 -8.4085989 3.22048998 -0.78624058
		 -8.39312458 4.48307276 -0.78734732 -8.17418671 9.40712929 -0.30919218 -8.15572357 9.41332817 -0.79163456
		 -7.6248436 9.33782673 -0.79161882 -7.60346603 9.34514713 -0.35243845 -8.22426701 4.47506762 -0.24621058
		 -8.23955727 3.21877241 -0.38730478 -8.39306259 4.48353386 -0.24619675 -6.72832203 4.40235233 -0.78745151
		 -6.8950448 4.43009138 -0.78745103 -6.89500427 4.43042707 -0.40927958 -6.72828054 4.40268755 -0.40925002
		 -8.40334892 9.85107994 -0.79199266 -8.16975975 9.93040848 -0.79208183 -8.18820858 9.92420578 -0.30950403
		 -7.23728561 10.24707317 -0.7924552 -7.21590996 10.25439358 -0.35312557 -8.40864372 3.2201333 -1.18517494
		 -8.17429638 9.40629101 -1.2740469 -7.60356617 9.34437084 -1.23082972 -8.22437859 4.47412252 -1.32849813
		 -8.39317226 4.48260927 -1.32848167 -8.23964214 3.21807933 -1.18520689 -6.72835922 4.40203714 -1.16562247
		 -6.89508295 4.42977619 -1.16562223 -8.18830204 9.92336464 -1.27464342 -7.21601009 10.25361824 -1.23181462
		 -6.85542965 5.25020075 0.046466351 -7.43482971 5.39657736 0.14258194 -7.052110672 6.55599022 0.14054966
		 -6.50729084 6.48853302 0.047766209 -6.80888748 7.60616493 0.13848972 -6.38485432 7.49525261 0.044031143
		 -6.15246248 6.42767382 -0.7892592 -6.49993706 5.19105101 -0.40996695 -6.15240669 6.42800665 -0.40945959
		 -6.028371334 7.43259764 -0.79014039 -6.028330803 7.43293333 -0.41316438 -5.70772791 9.70691872 -0.79215717
		 -5.70769405 9.7072134 -0.4494803 -7.57001543 5.40670776 0.28181028 -8.29773521 5.23940945 0.2265234
		 -8.12460327 6.73212719 0.25708675 -7.38072443 6.62030172 0.26588535 -7.85530376 7.96574593 0.24135542
		 -7.1789093 7.67328072 0.27465439 -8.43996334 5.94979286 -0.4016161 -8.4004364 5.95143509 -0.7886157
		 -8.70062828 6.82729006 -0.78933334 -8.69870377 6.83894205 -0.20345592 -8.67863464 8.0974617 -0.056877613
		 -7.9651022 7.97573996 0.073774815 -8.39709663 6.78878641 -0.070456028 -8.32943153 5.26015091 -0.10426426
		 -8.3295002 5.25956249 -0.78800297 -6.49999332 5.19071817 -0.78815365 -6.33151579 7.48542976 -0.41317916
		 -5.87332773 9.74085426 -0.4494946 -8.16124535 5.24356174 -0.10468197 -8.40386009 9.85101318 -0.067842484
		 -7.017573357 10.32175159 -0.13720322 -8.52549839 9.098105431 -0.044360638 -7.50007534 8.90804672 0.02468729
		 -7.7313652 7.92962503 0.0020551682 -6.76038694 5.23945141 -0.15810299 -7.6280632 5.42744541 -0.15545797
		 -7.66149616 5.42202568 0.14053583 -8.16134739 5.22584534 0.1276145 -6.3315115 7.48564291 -0.16212106
		 -7.24710369 7.68037319 -0.15744352 -7.27785301 7.69125462 0.13881731 -7.72887135 7.93704796 0.13293171
		 -6.76040649 5.23924017 -0.40998292 -8.67870903 8.096831322 -0.79042339 -8.52527046 9.09783268 -0.79131985
		 -5.87334728 9.74055672 -0.79215574 -8.23961258 3.21843886 -0.78625488 -7.017085075 10.32186317 -0.79254484
		 -7.43502235 5.3949604 -1.7190516 -6.85559559 5.24875021 -1.62278867 -7.05231905 6.55437613 -1.71909785
		 -6.50747108 6.48708534 -1.62631392 -6.80907774 7.60456896 -1.71890354 -6.38502026 7.49380302 -1.62435722
		 -5.70776129 9.70662594 -1.13480473 -6.028411865 7.43226194 -1.16711593 -6.15248871 6.42733526 -1.16905856
		 -6.50003099 5.19040203 -1.16632462 -8.29795361 5.23764706 -1.80251384 -7.57025051 5.40484047 -1.85825038
		 -8.12481785 6.73029947 -1.83572364 -7.38095379 6.61847734 -1.84447718 -7.85554218 7.96394396 -1.82217312
		 -7.17914057 7.6714344 -1.85509729 -8.69882393 6.83793402 -1.37522554 -8.67878819 8.096179962 -1.52399874
		 -8.4400444 5.94912148 -1.17558527 -8.32958126 5.25897646 -1.47175789 -8.39725685 6.78754902 -1.50822306
		 -7.96528912 7.97425032 -1.65459275 -6.33159447 7.4847784 -1.16713095 -5.8733964 9.74026585 -1.13481903
		 -8.16138363 5.24236393 -1.47135472 -7.017715931 10.32061863 -1.44787192 -8.40400696 9.84975338 -1.51611185
		 -8.52565479 9.096803665 -1.53827906 -7.50025129 8.90661907 -1.60720778 -7.7315321 7.92826033 -1.5828414
		 -8.16153812 5.22424936 -1.7036345 -7.66170168 5.42043209 -1.71699071 -7.62820101 5.42635489 -1.42101216
		 -6.7605238 5.2383604 -1.41821837 -6.33163261 7.48454952 -1.41818929 -7.24723959 7.67928219 -1.42299795
		 -7.27805948 7.68964005 -1.71927619 -7.72906256 7.93545198 -1.7137351 -6.76048565 5.23858976 -1.1663537;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 9 2 1 0 9 0 3 4 0 4 5 1 5 6 0 6 3 0 7 8 0
		 8 0 0 9 7 1 10 11 1 11 12 0 12 13 0 13 10 0 14 15 1 15 16 0 16 61 1 14 61 0 17 18 0
		 18 6 0 5 17 1 1 19 0 23 19 0 2 23 1 20 21 0 21 5 0 4 20 0 22 23 1 19 24 0 24 22 0
		 10 25 0 25 26 0 26 11 0 27 15 0 106 14 0 27 106 1 21 28 0 28 17 0 29 30 0 30 31 0
		 31 32 1 32 29 1 31 33 0 33 34 0 34 32 1 36 37 1 37 35 1 35 57 1 57 36 1 38 35 1 37 39 1
		 39 38 1 40 38 1 39 41 0 41 40 0 42 43 0 43 44 0 44 45 1 45 42 0 44 46 0 46 47 0 47 45 0
		 30 42 0 45 31 1 47 33 0 48 49 0 49 50 1 50 51 1 51 48 0 52 51 0 50 75 1 75 52 1 53 46 0
		 44 54 1 54 53 0 44 55 0 55 48 1 48 54 0 55 56 1 56 49 1 43 55 0 55 9 0 2 56 1 34 39 0
		 37 32 1 36 29 0 13 36 0 57 10 1 58 59 0 59 41 0 39 58 0 60 7 0 55 60 0 63 61 0 61 62 0
		 62 64 0 64 63 1 64 53 1 53 52 1 52 63 0 64 65 0 65 53 0 36 66 1 66 29 1 66 67 0 67 30 1
		 67 68 0 68 42 1 68 69 0 69 43 0 39 70 1 70 58 0 34 70 1 71 70 0 33 71 1 72 71 0 47 72 1
		 73 72 0 46 73 1 65 73 0 69 60 0 36 74 0 74 66 0 12 74 0 54 51 1 75 76 1 76 63 1 76 14 1
		 59 77 0 77 40 1 8 78 0 78 1 1 17 79 1 79 62 0 62 18 1 16 18 0 16 3 0 15 4 1 82 80 0
		 80 81 0 81 83 1 83 82 1 84 82 0 83 85 1 85 84 0 40 86 0 86 87 0 87 38 1 87 88 1 88 35 1
		 88 89 1 57 89 1 92 90 0 90 91 0 91 93 0 93 92 1 94 92 0 93 95 0 95 94 0 91 80 0 82 93 1
		 84 95 0 50 96 1 96 97 0 75 97 1;
	setAttr ".ed[166:224]" 98 96 0 49 98 0 99 98 1 56 99 1 100 98 0 99 92 0 92 100 1
		 101 100 0 94 101 0 99 90 0 23 99 0 87 85 0 83 88 1 81 89 0 89 25 0 102 87 0 86 103 0
		 103 102 0 104 99 0 22 104 0 105 106 0 106 107 0 107 108 1 108 105 0 101 108 1 107 97 0
		 97 101 1 101 109 0 109 108 0 90 110 0 110 111 0 111 91 1 111 112 0 112 80 1 112 113 0
		 113 81 1 113 89 1 102 114 0 114 87 1 114 85 1 114 115 0 115 84 1 115 116 0 116 95 1
		 116 117 0 117 94 1 117 109 0 104 110 0 113 118 0 118 89 0 118 26 0 96 100 1 76 107 1
		 77 103 0 78 24 0 105 28 1 28 27 0 105 79 0 20 27 0;
	setAttr -s 106 -ch 410 ".fc[0:105]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 -11 -4 -10 -9
		mu 0 4 8 3 0 9
		f 4 -15 -14 -13 -12
		mu 0 4 10 13 12 11
		f 4 18 -18 -17 -16
		mu 0 4 14 17 16 15
		f 4 -22 6 -21 -20
		mu 0 4 18 6 7 19
		f 4 24 23 -23 1
		mu 0 4 2 21 20 1
		f 4 -28 5 -27 -26
		mu 0 4 22 5 6 23
		f 4 -31 -30 -24 -29
		mu 0 4 24 27 26 25
		f 4 11 -34 -33 -32
		mu 0 4 10 11 29 28
		f 4 36 35 15 -35
		mu 0 4 30 31 14 15
		f 4 -39 -38 26 21
		mu 0 4 18 33 32 6
		f 4 -43 -42 -41 -40
		mu 0 4 34 37 36 35
		f 4 -46 -45 -44 41
		mu 0 4 37 39 38 36
		f 4 -50 -49 -48 -47
		mu 0 4 40 43 42 41
		f 4 -53 -52 47 -51
		mu 0 4 44 45 41 42
		f 4 -56 -55 52 -54
		mu 0 4 46 47 45 44
		f 4 -60 -59 -58 -57
		mu 0 4 48 51 50 49
		f 4 -63 -62 -61 58
		mu 0 4 51 53 52 50
		f 4 40 -65 59 -64
		mu 0 4 35 36 51 48
		f 4 43 -66 62 64
		mu 0 4 36 38 53 51
		f 4 -70 -69 -68 -67
		mu 0 4 54 57 56 55
		f 4 -73 -72 68 -71
		mu 0 4 58 59 56 57
		f 4 -76 -75 60 -74
		mu 0 4 60 61 50 52
		f 4 -79 -78 -77 74
		mu 0 4 61 54 62 50
		f 4 -81 -80 77 66
		mu 0 4 55 63 62 54
		f 3 76 -82 57
		mu 0 3 50 62 49
		f 4 -84 -3 -83 79
		mu 0 4 63 2 3 62
		f 4 45 -86 51 -85
		mu 0 4 39 37 41 45
		f 4 42 -87 46 85
		mu 0 4 37 34 40 41
		f 4 14 -89 49 -88
		mu 0 4 13 10 43 40
		f 4 -92 54 -91 -90
		mu 0 4 64 45 47 65
		f 4 -94 82 10 -93
		mu 0 4 66 62 3 8
		f 4 -98 -97 -96 -95
		mu 0 4 67 69 68 17
		f 4 -101 -100 -99 97
		mu 0 4 67 58 60 69
		f 3 -103 -102 98
		mu 0 3 60 70 69
		f 3 -105 -104 86
		mu 0 3 34 71 40
		f 4 -107 -106 104 39
		mu 0 4 35 72 71 34
		f 4 -109 -108 106 63
		mu 0 4 48 73 72 35
		f 4 -111 -110 108 56
		mu 0 4 49 74 73 48
		f 3 -113 -112 91
		mu 0 3 64 75 45
		f 3 -114 84 111
		mu 0 3 75 39 45
		f 4 -116 44 113 -115
		mu 0 4 76 38 39 75
		f 4 -118 65 115 -117
		mu 0 4 77 53 38 76
		f 4 -120 61 117 -119
		mu 0 4 78 52 53 77
		f 4 102 73 119 -121
		mu 0 4 70 60 52 78
		f 4 110 81 93 -122
		mu 0 4 74 49 62 66
		f 3 103 -124 -123
		mu 0 3 40 71 79
		f 4 13 87 122 -125
		mu 0 4 12 13 40 79
		f 4 -126 75 99 70
		mu 0 4 57 61 60 58
		f 3 69 78 125
		mu 0 3 57 54 61
		f 4 -128 -127 72 100
		mu 0 4 67 80 59 58
		f 4 -19 -129 127 94
		mu 0 4 17 14 80 67
		f 4 55 -131 -130 90
		mu 0 4 47 46 81 65
		f 4 0 -133 -132 9
		mu 0 4 0 1 82 9
		f 4 19 -136 -135 -134
		mu 0 4 18 19 68 83
		f 4 17 95 135 -137
		mu 0 4 16 17 68 19
		f 4 20 7 -138 136
		mu 0 4 19 7 4 16
		f 4 137 4 -139 16
		mu 0 4 16 4 5 15
		f 4 -143 -142 -141 -140
		mu 0 4 84 87 86 85
		f 4 -146 -145 142 -144
		mu 0 4 88 91 90 89
		f 4 53 -149 -148 -147
		mu 0 4 46 44 93 92
		f 4 50 -151 -150 148
		mu 0 4 44 42 95 94
		f 4 48 152 -152 150
		mu 0 4 42 43 97 96
		f 4 -157 -156 -155 -154
		mu 0 4 98 101 100 99
		f 4 -160 -159 156 -158
		mu 0 4 102 105 104 103
		f 4 -162 139 -161 155
		mu 0 4 106 109 108 107
		f 4 -163 143 161 158
		mu 0 4 110 113 112 111
		f 4 71 165 -165 -164
		mu 0 4 56 59 115 114
		f 4 -168 67 163 -167
		mu 0 4 116 55 56 117
		f 4 -170 80 167 -169
		mu 0 4 118 63 55 119
		f 4 -173 -172 168 -171
		mu 0 4 120 123 122 121
		f 4 -175 157 172 -174
		mu 0 4 124 127 126 125
		f 3 171 153 -176
		mu 0 3 128 130 129
		f 4 -25 83 169 -177
		mu 0 4 131 2 63 132
		f 4 -179 144 -178 149
		mu 0 4 133 136 135 134
		f 4 -180 141 178 151
		mu 0 4 137 140 139 138
		f 4 -181 -153 88 31
		mu 0 4 141 142 43 10
		f 4 -184 -183 147 -182
		mu 0 4 143 146 145 144
		f 4 -186 28 176 -185
		mu 0 4 147 150 149 148
		f 4 -190 -189 -188 -187
		mu 0 4 151 154 153 152
		f 4 -193 -192 188 -191
		mu 0 4 155 158 157 156
		f 3 -195 -194 190
		mu 0 3 159 161 160
		f 4 154 -198 -197 -196
		mu 0 4 162 165 164 163
		f 4 160 -200 -199 197
		mu 0 4 166 169 168 167
		f 4 140 -202 -201 199
		mu 0 4 170 173 172 171
		f 3 179 -203 201
		mu 0 3 174 176 175
		f 3 -205 -204 181
		mu 0 3 177 179 178
		f 3 177 -206 204
		mu 0 3 180 182 181
		f 4 145 -208 -207 205
		mu 0 4 183 186 185 184
		f 4 162 -210 -209 207
		mu 0 4 187 190 189 188
		f 4 159 -212 -211 209
		mu 0 4 191 194 193 192
		f 4 174 193 -213 211
		mu 0 4 195 198 197 196
		f 4 -214 184 175 195
		mu 0 4 199 202 201 200
		f 3 202 -216 -215
		mu 0 3 203 205 204
		f 4 -217 215 180 32
		mu 0 4 206 209 208 207
		f 4 173 -218 164 192
		mu 0 4 210 213 212 211
		f 3 170 166 217
		mu 0 3 214 216 215
		f 4 187 -219 128 -36
		mu 0 4 217 218 80 14
		f 4 191 -166 126 218
		mu 0 4 219 220 59 80
		f 4 182 -220 130 146
		mu 0 4 221 222 81 46
		f 4 29 -221 132 22
		mu 0 4 223 224 82 1
		f 4 186 -37 -223 -222
		mu 0 4 225 228 227 226
		f 4 133 -224 221 38
		mu 0 4 18 83 230 229
		f 4 222 -225 25 37
		mu 0 4 231 234 233 232
		f 4 34 138 27 224
		mu 0 4 235 15 5 236;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Middle_Fore_Arm_Geo_parentConstraint1" -p "Right_Middle_Fore_Arm_Geo";
	rename -uid "C39283CB-4837-2E3B-2955-33B847C32F86";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Elbow_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -10.234072873379791 0.95153670975974691 7.7538727915040635 ;
	setAttr ".tg[0].tor" -type "double3" -97.149075749269315 -80.232872471120643 6.7487414941269162 ;
	setAttr ".lr" -type "double3" 1.9002571817572065e-14 -2.5842006786891099e-15 1.5306419404543174e-14 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -1.7763568394002505e-15 1.1102230246251565e-16 ;
	setAttr ".rsrr" -type "double3" 1.9002571817572065e-14 -2.5842006786891099e-15 1.5306419404543174e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Middle_Arm_Toe_1_Geo" -p "Right_Middle_Arm_Geo";
	rename -uid "328A22EC-4DB4-6A3E-3345-FBB018F64302";
createNode transform -n "Right_Middle_Arm_Heel_to_Toe_Tip1_Geo" -p "Right_Middle_Arm_Toe_1_Geo";
	rename -uid "14E83F69-44BD-463A-110C-0D9AFAB47376";
createNode mesh -n "Right_Middle_Arm_Heel_to_Toe_Tip1_GeoShape" -p "Right_Middle_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "30402537-428C-075E-D42B-18B4EE62F245";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Heel_to_Toe_Tip1_GeoShapeOrig" -p "Right_Middle_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "9039D748-4709-5122-9B38-E2B44BEE9EE4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -7.26446819 1.20791996 -0.7085557 -7.0031065941 0.95617199 -0.38123345
		 -6.92893505 1.297212 -0.27878952 -7.21160507 1.42411494 -0.63526034 -7.52220631 1.20959997 -0.52755833
		 -7.30527401 0.95814598 -0.16905284 -7.46932793 1.42579496 -0.4542768 -7.23111629 1.29918599 -0.06659317;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 8 9 3 0
		f 4 8 -12 2 10
		mu 0 4 9 10 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Toe_Tip1_Geo" -p "Right_Middle_Arm_Toe_1_Geo";
	rename -uid "0253D2CB-4069-8FFF-F859-1B93048F402F";
createNode mesh -n "Right_Middle_Arm_Toe_Tip1_GeoShape" -p "Right_Middle_Arm_Toe_Tip1_Geo";
	rename -uid "2DB28045-4409-78B7-7688-1689DDAC8166";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Toe_Tip1_GeoShapeOrig" -p "Right_Middle_Arm_Toe_Tip1_Geo";
	rename -uid "B614AB01-4E35-C39E-A1E1-5CBCDC40CC11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -6.028284073 0.68840098 0.0092115402 -5.70158768 0.125286 0.96613979
		 -5.66725636 0.215334 1.0043022633 -7.16125298 1.11707401 1.034701109 -6.46460104 0.220542 1.56417823
		 -6.4896369 0.130431 1.5194819 -6.3883934 1.45063806 -0.71312976 -6.49591637 1.018206 -0.84450102
		 -6.011357784 -8.3999999e-05 0.70406556 -5.84332371 0.158214 0.94189095 -6.23791122 0.66805202 0.13639545
		 -6.2512455 0.25491899 0.1212194 -6.66665268 0.62567401 -0.7641964 -7.78269291 0.63293999 0.019488811
		 -7.71346474 0.96324903 0.11499834 -7.080754757 0.673554 0.72822738 -7.09410429 0.26042101 0.71306658
		 -6.46420002 0.162267 1.3778646 -6.63221979 0.0039479998 1.14002466 -5.91828156 1.10896802 0.16192126
		 -7.91246033 1.027425051 0.15020514 -7.82162666 1.45996201 0.29330826 -7.27119637 0.69650698 0.88196158
		 -6.5974412 0.95598298 -0.66870093;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 19 2 0 0 19 1 3 4 0 4 5 0 5 22 0
		 3 22 1 6 7 0 7 0 0 6 19 0 8 9 0 9 10 0 10 11 1 11 8 0 12 11 0 10 23 0 23 12 0 13 14 0
		 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0 2 4 0 3 19 1 21 3 0 21 6 0 1 5 0
		 20 21 0 22 20 0 10 0 1 7 23 1 9 1 1 9 17 0 17 5 1 22 15 1 20 14 1 18 8 0 11 16 1
		 20 7 0 14 23 0 13 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 3 0 9
		f 4 -15 -14 -13 -12
		mu 0 4 10 13 12 11
		f 4 -18 -17 13 -16
		mu 0 4 14 15 12 13
		f 4 -22 -21 -20 -19
		mu 0 4 16 19 18 17
		f 4 -25 -24 -23 20
		mu 0 4 19 21 20 18
		f 4 -3 -27 4 -26
		mu 0 4 2 3 4 5
		f 4 -29 27 26 -11
		mu 0 4 8 22 4 3
		f 4 1 25 5 -30
		mu 0 4 23 2 5 24
		f 4 -32 -8 -28 -31
		mu 0 4 25 7 4 26
		f 4 16 -34 9 -33
		mu 0 4 27 30 29 28
		f 4 -35 12 32 0
		mu 0 4 31 34 33 32
		f 4 34 29 -37 -36
		mu 0 4 35 38 37 36
		f 4 31 38 19 -38
		mu 0 4 39 42 41 40
		f 4 36 6 37 22
		mu 0 4 43 46 45 44
		f 4 24 -41 14 -40
		mu 0 4 21 19 13 10
		f 4 35 23 39 11
		mu 0 4 11 20 21 10
		f 4 -42 30 28 8
		mu 0 4 47 49 48 8
		f 4 -43 -39 41 33
		mu 0 4 50 53 52 51
		f 4 17 -44 18 42
		mu 0 4 15 14 16 17
		f 4 40 21 43 15
		mu 0 4 13 19 16 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Middle_Arm_Toe_1_Geo_parentConstraint1" -p "Right_Middle_Arm_Toe_1_Geo";
	rename -uid "C1838B1A-406C-DC08-E89A-67A9E81CA297";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Thumb1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.8106102025910733 5.5556445884838368 -1.7838701848615224 ;
	setAttr ".tg[0].tor" -type "double3" -119.75550023489872 20.333196652226754 121.81282382675867 ;
	setAttr ".lr" -type "double3" 3.1805546814635176e-15 -6.3611093629270335e-15 -1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 2.2204460492503131e-16 3.3306690738754696e-16 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635176e-15 -6.3611093629270335e-15 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Middle_Arm_Toe_2_Geo" -p "Right_Middle_Arm_Geo";
	rename -uid "4C00F482-4BC3-CECC-83F3-EEB64EDCA5A1";
createNode transform -n "Right_Middle_Arm_Heel_to_Toe_Tip2_Geo" -p "Right_Middle_Arm_Toe_2_Geo";
	rename -uid "8D534607-46FA-9E7C-0DD6-5BA78311FCBE";
createNode mesh -n "Right_Middle_Arm_Heel_to_Toe_Tip2_GeoShape" -p "Right_Middle_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "EFD922AD-4FB5-A57E-4557-84B638B5F229";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Heel_to_Toe_Tip2_GeoShapeOrig" -p "Right_Middle_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "A8291FB2-4B58-BF6F-CA78-C9910BB01C4D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -7.91638088 1.14405894 -0.66225576 -8.41365051 0.95846099 -0.62958717
		 -8.5230608 1.43795395 -0.62958813 -8.0022821426 1.543437 -0.66227055 -7.91638088 1.14405894 -1.041177988
		 -8.41365242 0.95846099 -1.073847771 -8.0022983551 1.543437 -1.041178465 -8.52304554 1.43795395 -1.073861599;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 12 15 14 13
		f 4 8 -12 2 10
		mu 0 4 16 19 18 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Toe_Tip2_Geo" -p "Right_Middle_Arm_Toe_2_Geo";
	rename -uid "A550F353-468C-35CD-F8A2-2D898582A442";
createNode mesh -n "Right_Middle_Arm_Toe_Tip2_GeoShape" -p "Right_Middle_Arm_Toe_Tip2_Geo";
	rename -uid "A05C119B-4B8F-7805-7DD5-B4AB1305DB91";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Toe_Tip2_GeoShapeOrig" -p "Right_Middle_Arm_Toe_Tip2_Geo";
	rename -uid "ECB90941-4F5F-C785-0EFA-529774E7EB8C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801
		 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399
		 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501
		 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372
		 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331
		 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027
		 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001
		 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027
		 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625
		 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -9.57199669 0.50238299 0.062016487 -10.80207729 0.122388 -0.27235889
		 -11.039028168 0.32297999 -0.26551342 -9.67101097 1.31556594 -1.76533079 -11.03902626 0.32297999 -1.43777227
		 -10.80207729 0.122388 -1.43092632 -8.44995689 1.66221297 0.20198536 -8.23498535 0.83185202 0.18970394
		 -8.23503113 0.83185202 -1.89288664 -8.45000267 1.66221297 -1.90516615 -8.34650326 0.769104 -0.031399727
		 -9.55566216 0.474096 -0.2321763 -8.34653282 0.769104 -1.67221284 -9.57199669 0.50238299 -1.76530123
		 -10.67631912 0.145992 -0.3953557 -10.47230625 0.001701 -0.39537096 -10.47229195 0.001701 -1.30816841
		 -9.52398968 0.19378801 -0.23219156 -9.52398872 0.19378801 -1.47133064 -8.31861591 0.494403 -1.67221189
		 -8.31858635 0.494403 -0.031400204 -10.67631912 0.145992 -1.30816793 -9.55566311 0.474096 -1.4713459
		 -9.67102623 1.31556594 0.062060833;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 23 2 0 0 23 1 3 4 0 4 5 0 5 13 0
		 3 13 1 6 7 0 7 0 0 6 23 0 8 9 0 9 3 0 8 13 0 7 10 1 10 11 0 11 0 1 12 8 1 13 22 1
		 12 22 0 15 14 0 14 11 0 11 17 1 15 17 0 15 16 0 21 16 0 14 21 0 17 18 1 18 16 0 19 18 0
		 20 17 0 19 20 0 10 20 0 22 18 1 22 21 0 19 12 0 2 4 0 3 23 1 9 6 0 1 5 0 14 1 1 21 5 1
		 8 7 0 12 10 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 11 10 9
		f 4 13 -8 -13 -12
		mu 0 4 12 15 14 13
		f 4 9 -17 -16 -15
		mu 0 4 16 19 18 17
		f 4 19 -19 -14 -18
		mu 0 4 20 23 22 21
		f 4 23 -23 -22 -21
		mu 0 4 24 27 26 25
		f 4 26 25 -25 20
		mu 0 4 28 31 30 29
		f 4 -29 -28 -24 24
		mu 0 4 32 35 34 33
		f 4 31 30 27 -30
		mu 0 4 36 39 38 37
		f 4 -33 15 22 -31
		mu 0 4 40 43 42 41
		f 4 -35 33 28 -26
		mu 0 4 44 47 46 45
		f 4 29 -34 -20 -36
		mu 0 4 48 51 50 49
		f 4 -3 -38 4 -37
		mu 0 4 52 55 54 53
		f 4 -39 12 37 -11
		mu 0 4 56 13 58 57
		f 4 1 36 5 -40
		mu 0 4 59 62 61 60
		f 4 -41 21 16 0
		mu 0 4 63 65 18 64
		f 4 40 39 -42 -27
		mu 0 4 66 69 68 67
		f 4 41 6 18 34
		mu 0 4 70 72 22 71
		f 4 -43 11 38 8
		mu 0 4 73 75 13 74
		f 4 -44 17 42 14
		mu 0 4 76 79 78 77
		f 4 32 -32 35 43
		mu 0 4 80 83 82 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Middle_Arm_Toe_2_Geo_parentConstraint1" -p "Right_Middle_Arm_Toe_2_Geo";
	rename -uid "BA9B032F-4F02-A962-5442-57A134F860E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_MidFinger1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.416077907784719 1.0253051755455955 4.8655192968989702 ;
	setAttr ".tg[0].tor" -type "double3" -91.452554233794032 -27.650717977430702 1.2850020571790557 ;
	setAttr ".lr" -type "double3" 6.361109362927032e-15 6.361109362927032e-15 -6.361109362927032e-15 ;
	setAttr ".rst" -type "double3" 0 -4.4408920985006262e-16 2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-15 6.361109362927032e-15 -6.361109362927032e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Middle_Arm_Toe_3_Geo" -p "Right_Middle_Arm_Geo";
	rename -uid "23BD0CAF-4B2E-C4B8-4E7C-B9B8BD1370AC";
createNode transform -n "Right_Middle_Arm_Heel_to_Toe_Tip3_Geo" -p "Right_Middle_Arm_Toe_3_Geo";
	rename -uid "2E75102C-4A3F-0C16-D3AF-4ABA22999C2C";
createNode mesh -n "Right_Middle_Arm_Heel_to_Toe_Tip3_GeoShape" -p "Right_Middle_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "6877CE52-48CD-DD48-3ABB-E68681AB34A3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Heel_to_Toe_Tip3_GeoShapeOrig" -p "Right_Middle_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "620BF912-4281-D2A8-BB36-50A530EF1011";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -7.58592606 1.20556796 -0.9845736 -7.39900303 0.95963699 -1.36325932
		 -7.33776569 1.30235696 -1.46862912 -7.54201698 1.42298102 -1.06017065 -7.31317425 1.20521104 -0.82714248
		 -7.079224586 0.95923799 -1.1786685 -7.26925039 1.42262399 -0.90275502 -7.017971039 1.30195796 -1.28402352;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 12 15 14 13
		f 4 8 -12 2 10
		mu 0 4 16 19 18 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Middle_Arm_Toe_Tip3_Geo" -p "Right_Middle_Arm_Toe_3_Geo";
	rename -uid "7D169AA1-4D06-B6BC-D200-64833C9FAA85";
createNode mesh -n "Right_Middle_Arm_Toe_Tip3_GeoShape" -p "Right_Middle_Arm_Toe_Tip3_Geo";
	rename -uid "E75FE49E-4B1B-5F86-8BB5-38A7259B7426";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Middle_Arm_Toe_Tip3_GeoShapeOrig" -p "Right_Middle_Arm_Toe_Tip3_Geo";
	rename -uid "0696138C-43E3-C1FA-EAE3-F8B0D5B420B9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699 0.164968
		 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -7.45554972 0.70742702 -2.41568398 -6.68982077 0.15760501 -3.17760849
		 -6.66975927 0.248367 -3.22347808 -6.048538685 1.12881303 -1.81424558 -5.8259511 0.24729601 -2.73640776
		 -5.85582781 0.156555 -2.69622588 -7.95968056 1.45960498 -1.77339554 -8.032976151 1.024863005 -1.6269505
		 -6.79673529 0.026292 -2.78814292 -6.65207481 0.18849599 -3.038381338 -7.25183296 0.68529302 -2.279531
		 -7.2594943 0.27190799 -2.26717758 -7.88773537 0.63075602 -1.51182532 -6.70662737 0.62924403 -0.83009744
		 -6.64957619 0.961128 -0.92819142 -6.35986805 0.68415898 -1.76467896 -6.36752987 0.27077401 -1.75229478
		 -5.99502468 0.187677 -2.65910244 -6.13968611 0.025451999 -2.40886331 -7.36394501 1.13049304 -2.57354641
		 -6.53384161 1.022951961 -0.76167178 -6.44287539 1.45767295 -0.89789915 -6.14020348 0.70574701 -1.65644288
		 -7.83068562 0.96261901 -1.60991931;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 19 2 0 0 19 1 3 4 0 4 5 0 5 22 0
		 3 22 1 6 7 0 7 0 0 6 19 0 8 9 0 9 10 0 10 11 1 11 8 0 12 11 0 10 23 0 23 12 0 13 14 0
		 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0 2 4 0 3 19 1 21 3 0 21 6 0 1 5 0
		 20 21 0 22 20 0 10 0 1 7 23 1 9 1 1 9 17 0 17 5 1 22 15 1 20 14 1 18 8 0 11 16 1
		 20 7 0 14 23 0 13 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 11 10 9
		f 4 -15 -14 -13 -12
		mu 0 4 12 15 14 13
		f 4 -18 -17 13 -16
		mu 0 4 16 19 18 17
		f 4 -22 -21 -20 -19
		mu 0 4 20 23 22 21
		f 4 -25 -24 -23 20
		mu 0 4 24 27 26 25
		f 4 -3 -27 4 -26
		mu 0 4 28 31 30 29
		f 4 -29 27 26 -11
		mu 0 4 32 35 34 33
		f 4 1 25 5 -30
		mu 0 4 36 39 38 37
		f 4 -32 -8 -28 -31
		mu 0 4 40 43 42 41
		f 4 16 -34 9 -33
		mu 0 4 44 47 46 45
		f 4 -35 12 32 0
		mu 0 4 48 51 50 49
		f 4 34 29 -37 -36
		mu 0 4 52 55 54 53
		f 4 31 38 19 -38
		mu 0 4 56 59 58 57
		f 4 36 6 37 22
		mu 0 4 60 63 62 61
		f 4 24 -41 14 -40
		mu 0 4 64 67 66 65
		f 4 35 23 39 11
		mu 0 4 68 71 70 69
		f 4 -42 30 28 8
		mu 0 4 72 75 74 73
		f 4 -43 -39 41 33
		mu 0 4 76 79 78 77
		f 4 17 -44 18 42
		mu 0 4 80 83 82 81
		f 4 40 21 43 15
		mu 0 4 84 87 86 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Middle_Arm_Toe_3_Geo_parentConstraint1" -p "Right_Middle_Arm_Toe_3_Geo";
	rename -uid "4AD2E89D-49B6-82DD-9E84-86895FCC796D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Pinky1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8860618910830129 -7.0254628751526003 -0.38993399057974149 ;
	setAttr ".tg[0].tor" -type "double3" -59.232921153084376 15.219761520997217 -113.38612438457031 ;
	setAttr ".lr" -type "double3" 1.5902773407317578e-14 3.1805546814635168e-15 -6.361109362927032e-15 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 0 6.6613381477509392e-16 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317578e-14 3.1805546814635168e-15 -6.361109362927032e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Front_Arm_Geo" -p "SpiderBot_Geo";
	rename -uid "87239900-452F-0CF3-BBE8-9BA3AA6104DB";
createNode transform -n "Right_Front_Upper_Arm_Geo" -p "Right_Front_Arm_Geo";
	rename -uid "B305D19D-403E-8D16-DD68-20B8732B8A1A";
createNode transform -n "Right_Front_Arm_Knee_Geo" -p "Right_Front_Upper_Arm_Geo";
	rename -uid "9ED61C70-41AB-FD6E-3DD1-7CBEBE323615";
createNode mesh -n "Right_Front_Arm_Knee_GeoShape" -p "Right_Front_Arm_Knee_Geo";
	rename -uid "5A27A2E3-4A32-7CC7-53C4-AD9FB992812E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Knee_GeoShapeOrig" -p "Right_Front_Arm_Knee_Geo";
	rename -uid "BA1E847E-48C6-9C0F-0CF3-8FABD6506797";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.93326402 0.55445099
		 0.93195701 0.54122198 0.91465998 0.53527802 0.90329701 0.54415202 0.922194 0.56268197
		 0.90489799 0.55673701 0.91118097 0.58714199 0.894777 0.57577199 0.91118097 0.58714199
		 0.922194 0.56268197 0.922194 0.56268197 0.93326402 0.55445099 0.93326402 0.55445099
		 0.93195701 0.54122198 0.93195701 0.54122198 0.91465998 0.53527802 0.91465998 0.53527802
		 0.93195701 0.54122198 0.93326402 0.55445099 0.90329701 0.54415202 0.90329701 0.54415202
		 0.93326402 0.55445099 0.922194 0.56268197 0.90489799 0.55673701 0.90489799 0.55673701
		 0.922194 0.56268197 0.91118097 0.58714199 0.894777 0.57577199 0.894777 0.57577199
		 0.90489799 0.55673701 0.90489799 0.55673701 0.90329701 0.54415202 0.90329701 0.54415202
		 0.91465998 0.53527802;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -4.55380821 11.40808105 3.9517169 -4.54032612 11.6261034 3.93823504
		 -4.44066 11.32322121 3.85553694 -4.41728592 11.70092773 3.83216405 -4.34483719 11.39831734 3.735039
		 -4.33133411 11.61633873 3.7215569 -4.15982723 11.38596916 3.43570495 -4.19443512 11.62341595 3.47031307
		 -4.55282116 11.38596916 3.04271102 -4.85217619 11.39831734 3.2277 -4.97265196 11.32322121 3.32354498
		 -5.068852901 11.40808105 3.436692 -5.05535078 11.6261034 3.42319012 -4.94929981 11.70092773 3.3001709
		 -4.8386941 11.61633873 3.21421909 -4.58742905 11.62341595 3.077318907;
	setAttr -s 28 ".ed[0:27]"  2 0 0 0 1 0 1 3 0 3 2 1 4 2 0 3 5 0 5 4 1
		 6 4 0 5 7 0 7 6 0 6 8 0 8 9 0 9 4 1 9 10 0 10 2 0 10 11 0 11 0 0 12 11 0 1 12 0 10 13 1
		 13 12 0 9 14 1 14 13 0 8 15 0 15 14 0 15 7 0 5 14 0 3 13 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 3 -5
		mu 0 4 4 5 3 0
		f 4 -10 -9 6 -8
		mu 0 4 6 7 5 4
		f 4 7 -13 -12 -11
		mu 0 4 6 4 9 8
		f 4 4 -15 -14 12
		mu 0 4 4 0 11 10
		f 4 0 -17 -16 14
		mu 0 4 0 1 13 12
		f 4 18 17 16 1
		mu 0 4 2 15 14 1
		f 4 -21 -20 15 -18
		mu 0 4 16 19 18 17
		f 4 -23 -22 13 19
		mu 0 4 20 23 22 21
		f 4 -25 -24 11 21
		mu 0 4 24 27 26 25
		f 4 24 -27 8 -26
		mu 0 4 28 29 5 7
		f 4 22 -28 5 26
		mu 0 4 30 31 3 5
		f 4 20 -19 2 27
		mu 0 4 32 33 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Thigh_Geo" -p "Right_Front_Upper_Arm_Geo";
	rename -uid "D8DC910E-4D5C-C2DC-F76C-4FB2F36C24BA";
createNode mesh -n "Right_Front_Arm_Thigh_GeoShape" -p "Right_Front_Arm_Thigh_Geo";
	rename -uid "A1C85A05-4841-1883-C597-66A01B340529";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" 0.88565999 0.55092603
		 0.89015901 0.54916501 0.89015901 0.54916501 0.88565999 0.55092603 0.935812 0.80722499
		 0.88260198 0.80684102 0.89381701 0.821729 0.92482603 0.821953 0.882478 0.790829 0.93568802
		 0.79121298 0.935812 0.80722499 0.92482603 0.821953 0.935812 0.80722499 0.93568802
		 0.79121298 0.88260198 0.80684102 0.935812 0.80722499 0.92482603 0.821953 0.89381701
		 0.821729 0.93568802 0.79121298 0.935812 0.80722499 0.88260198 0.80684102 0.882478
		 0.790829 0.88260198 0.80684102 0.89381701 0.821729 0.882478 0.790829 0.88260198 0.80684102
		 0.94025201 0.78669798 0.87784398 0.78624701 0.92724103 0.76102901 0.89046001 0.760764
		 0.87962699 0.69417298 0.90592903 0.69054103 0.99414098 0.99804699 0.94726598 0.99804699
		 0.94140601 0.99023402 1 0.99023402 0.95507801 0.97265601 0.984375 0.97265601 0.984375
		 0.91796899 0.95507801 0.91796899 0.93568802 0.79121298 0.882478 0.790829 0.87784398
		 0.78624701 0.94025201 0.78669798 0.94025201 0.78669798 0.87784398 0.78624701 0.89046001
		 0.760764 0.92724103 0.76102901 0.92724103 0.76102901 0.89046001 0.760764 0.87962699
		 0.69417298 0.90592903 0.69054103 0.87962699 0.69417298 0.88285798 0.631558 0.90472102
		 0.62711298 0.88416398 0.60925001 0.91251802 0.60238802 0.88839698 0.58336103 0.880871
		 0.58281398 0.94667798 0.79194701 0.99453801 0.79194701 0.99751902 0.78776801 0.94369602
		 0.78776801 0.98548299 0.76113302 0.95573199 0.76113302 0.95573199 0.697236 0.98548299
		 0.697236 0.880871 0.58281398 0.88839698 0.58336103 0.91251802 0.60238802 0.88839698
		 0.58336103 0.88416398 0.60925001 0.95507801 0.79492199 0.984375 0.79492199 0.99414098
		 0.82421899 0.94726598 0.82421899 0.95507801 0.83398402 0.984375 0.83398402 0.88565999
		 0.55092603 0.89015901 0.54916501 0.880871 0.58281398 0.98509902 0.55142099 0.95611602
		 0.55142099 0.94667798 0.58377802 0.99453801 0.58377802 0.98548299 0.60996097 0.95573199
		 0.60996097 0.89381701 0.821729 0.92482603 0.821953 0.88285798 0.631558 0.90472102
		 0.62711298 0.91251802 0.60238802 0.88416398 0.60925001 0.90592903 0.69054103 0.90472102
		 0.62711298 0.88285798 0.631558 0.984375 0.859375 0.95507801 0.859375 0.95573199 0.632415
		 0.98548299 0.632415;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -4.60053301 12.030500412 3.84686399 -4.64064312 11.9798069 3.8869741
		 -5.0041098595 11.9798069 3.52352691 -4.96397877 12.030500412 3.48341799 -1.71645606 10.29273033 1.19949901
		 -1.73439002 10.032203674 0.96702898 -1.96287 9.54542446 1.44591296 -1.88800502 10.40585709 1.37106895
		 -2.13441896 9.65855026 1.61748302 -1.87798798 9.59668541 1.11062706 -2.56302905 9.54542446 0.84573299
		 -2.73459911 9.6585722 1.01730299 -2.22776389 9.59668541 0.76087201 -2.31663609 10.29273033 0.59934002
		 -2.48818493 10.40585709 0.77088898 -2.08416605 10.032203674 0.61727399 -2.16705298 9.62610626 1.72489798
		 -1.87805104 10.50260353 1.43589604 -2.53268409 9.98678112 1.78865397 -2.36237407 10.50335979 1.61834395
		 -3.027276039 11.11826134 2.28324604 -2.84201407 9.62610626 1.04993701 -2.90579104 9.98678112 1.41556799
		 -3.19015193 10.77545738 2.44612193 -2.55301189 10.50260353 0.76093501 -2.73546004 10.50335979 1.24523699
		 -3.40036201 11.11826134 1.91015995 -3.56325889 10.77545738 2.073035955 -4.088741779 11.50869274 2.59854007
		 -4.23948002 11.23367786 2.74925709 -4.33471489 11.6456337 2.84451294 -4.54200602 11.29659271 3.051783085
		 -4.74652481 11.76653099 3.029230118 -4.11679697 11.87564659 3.59984112 -4.14634514 11.76653099 3.62940907
		 -4.16889906 11.29659271 3.42486906 -4.71697807 11.87564659 2.99966097 -3.96162891 11.6456337 3.21759892
		 -3.86639404 11.23367786 3.12236404 -3.71565604 11.50869274 2.97162604;
	setAttr -s 77 ".ed[0:76]"  0 1 0 1 2 0 2 3 0 3 0 0 6 4 0 4 5 0 5 9 0
		 6 9 0 7 4 0 6 8 0 8 7 0 10 6 0 12 9 0 10 12 0 10 11 0 11 8 0 13 10 0 12 15 0 13 15 0
		 13 14 0 14 11 0 4 13 0 15 5 0 7 14 0 8 16 0 16 17 0 17 7 0 16 18 0 18 19 1 19 17 0
		 20 19 0 23 18 0 20 23 1 11 21 0 21 16 0 21 22 0 22 18 1 27 22 0 23 27 1 14 24 0 24 21 0
		 24 25 0 25 22 1 25 26 0 26 27 1 26 28 0 28 29 1 29 27 0 28 30 0 30 31 1 31 29 0 32 31 0
		 30 36 0 32 36 0 17 14 1 17 24 0 19 25 0 26 20 1 0 33 0 33 34 0 34 1 0 35 34 0 37 33 0
		 35 37 1 34 32 0 32 2 0 35 31 0 36 3 0 36 33 1 30 37 1 39 38 1 38 35 0 37 39 0 23 38 0
		 39 20 0 38 29 1 28 39 1;
	setAttr -s 39 -ch 154 ".fc[0:38]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 -11 -10 4 -9
		mu 0 4 8 9 4 5
		f 4 13 12 -8 -12
		mu 0 4 10 11 7 4
		f 4 -16 -15 11 9
		mu 0 4 9 13 12 4
		f 4 18 -18 -14 -17
		mu 0 4 14 17 16 15
		f 4 -21 -20 16 14
		mu 0 4 18 21 20 19
		f 4 5 -23 -19 -22
		mu 0 4 5 6 23 22
		f 4 -24 8 21 19
		mu 0 4 24 8 5 25
		f 4 -27 -26 -25 10
		mu 0 4 8 27 26 9
		f 4 -30 -29 -28 25
		mu 0 4 27 29 28 26
		f 4 32 31 28 -31
		mu 0 4 30 31 28 29
		f 4 24 -35 -34 15
		mu 0 4 32 35 34 33
		f 4 27 -37 -36 34
		mu 0 4 35 37 36 34
		f 4 38 37 36 -32
		mu 0 4 38 39 36 37
		f 4 33 -41 -40 20
		mu 0 4 40 43 42 41
		f 4 35 -43 -42 40
		mu 0 4 44 47 46 45
		f 4 -38 -45 -44 42
		mu 0 4 48 51 50 49
		f 4 -48 -47 -46 44
		mu 0 4 51 54 53 52
		f 4 -51 -50 -49 46
		mu 0 4 54 56 55 53
		f 4 53 -53 49 -52
		mu 0 4 57 58 55 56
		f 3 -55 26 23
		mu 0 3 59 61 60
		f 3 39 -56 54
		mu 0 3 59 62 61
		f 4 41 -57 29 55
		mu 0 4 62 64 63 61
		f 4 57 30 56 43
		mu 0 4 65 66 63 64
		f 4 -61 -60 -59 0
		mu 0 4 1 68 67 0
		f 4 63 62 59 -62
		mu 0 4 69 71 67 70
		f 4 -66 -65 60 1
		mu 0 4 72 75 74 73
		f 4 -67 61 64 51
		mu 0 4 76 77 74 75
		f 4 -68 -54 65 2
		mu 0 4 78 80 57 79
		f 4 58 -69 67 3
		mu 0 4 81 84 83 82
		f 4 -70 52 68 -63
		mu 0 4 85 86 83 84
		f 4 6 -13 17 22
		mu 0 4 6 7 88 87
		f 4 -73 -64 -72 -71
		mu 0 4 89 92 91 90
		f 4 -33 -75 70 -74
		mu 0 4 93 30 95 94
		f 4 50 -76 71 66
		mu 0 4 76 97 96 77
		f 4 47 -39 73 75
		mu 0 4 97 39 38 96
		f 4 72 -77 48 69
		mu 0 4 85 99 98 86
		f 4 74 -58 45 76
		mu 0 4 99 66 65 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Front_Upper_Arm_Geo_parentConstraint1" -p "Right_Front_Upper_Arm_Geo";
	rename -uid "C5B5FD0F-4DA8-F534-1763-DB87517547C0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Shoulder_IK_Jnt1W0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.2671620356323672 0.76656238637919816 9.9995937968390951 ;
	setAttr ".tg[0].tor" -type "double3" -90.115923326728165 2.4069706266444078 40.98931888855347 ;
	setAttr ".lr" -type "double3" -1.2369454807586096e-14 1.1244958915987321e-15 -2.5444437451708128e-14 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-16 1.7763568394002505e-15 1.1102230246251565e-16 ;
	setAttr ".rsrr" -type "double3" -1.2369454807586096e-14 1.1244958915987321e-15 -2.5444437451708128e-14 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Front_Fore_Arm_Geo" -p "Right_Front_Arm_Geo";
	rename -uid "E8DBD54E-4E56-DD6D-87B0-05A9E9E27ADF";
createNode transform -n "Right_Front_Arm_Ankle_Geo" -p "Right_Front_Fore_Arm_Geo";
	rename -uid "F9B75914-4BB0-7F8B-10A9-0BB4530BCA3B";
createNode mesh -n "Right_Front_Arm_Ankle_GeoShape" -p "Right_Front_Arm_Ankle_Geo";
	rename -uid "54D8BA46-4F8C-C1CA-B48F-06A8D269C0FA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.77148402 0.87109399
		 0.82617199 0.87109399 0.79296899 0.87109399 0.74804699 0.87109399 0.77929699 0.87890601
		 0.828125 0.87890601 0.83203101 0.90625 0.77929699 0.90625 0.83203101 0.92773402 0.78125
		 0.92773402 0.78515601 0.90625 0.78710902 0.87890601 0.74218798 0.87109399 0.74804699
		 0.87890601 0.74804699 0.90625 0.74609399 0.90625 0.77539098 0.92773402 0.74804699
		 0.92773402 0.74609399 0.92773402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -4.93063116 2.72481298 4.04275322 -4.57995176 2.72481298 3.68348408
		 -4.81683302 2.72649288 3.45229602 -5.16751099 2.72649288 3.81156301 -4.875422 2.83890605 4.24071884
		 -4.41128111 2.83890605 3.76519489 -4.36339998 3.23540711 3.81194091 -4.65047121 3.49761295 3.75574493
		 -4.8854599 3.49702501 3.5264051 -4.90669203 3.23580599 3.28162909 -4.87624121 2.84048104 3.31136394
		 -5.34038401 2.84048104 3.78688788 -5.37083292 3.23580599 3.75715303 -4.82754183 3.23540711 4.28746605
		 -4.88735104 3.49761295 3.99844193 -5.12234116 3.49702501 3.76907992;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 4 5 0 5 1 0
		 6 5 0 13 4 0 6 13 0 7 8 0 8 9 0 9 6 0 6 7 0 9 10 0 10 5 0 10 2 0 10 11 0 11 3 0 12 11 0
		 12 9 0 11 4 0 12 13 0 14 13 0 12 15 0 15 14 0 8 15 0 14 7 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 -5 0
		mu 0 4 1 5 4 0
		f 4 9 8 5 -8
		mu 0 4 6 7 4 5
		f 4 -14 -13 -12 -11
		mu 0 4 8 6 10 9
		f 4 7 -16 -15 12
		mu 0 4 6 5 11 10
		f 4 6 1 -17 15
		mu 0 4 5 1 2 11
		f 4 -19 -18 16 2
		mu 0 4 12 13 11 2
		f 4 20 14 17 -20
		mu 0 4 14 10 11 13
		f 4 4 -22 18 3
		mu 0 4 0 4 13 3
		f 4 -23 19 21 -9
		mu 0 4 7 15 13 4
		f 4 -26 -25 22 -24
		mu 0 4 16 17 15 7
		f 4 11 -21 24 -27
		mu 0 4 9 10 14 18
		f 4 23 -10 13 -28
		mu 0 4 16 7 6 8
		f 4 26 25 27 10
		mu 0 4 9 17 16 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Ankle_to_Heel_Geo" -p "Right_Front_Fore_Arm_Geo";
	rename -uid "1917BBCD-4FA5-E9E8-03FB-CCBBF65F89A5";
createNode mesh -n "Right_Front_Arm_Ankle_to_Heel_GeoShape" -p "Right_Front_Arm_Ankle_to_Heel_Geo";
	rename -uid "C43A8980-4CE2-6B18-FDF2-E4ADF6BD54A6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098 0.95507801 0.98242199
		 0.98828101 0.98242199 0.98828101 0.83789098 0.95507801 0.83789098;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -5.1681838 1.59862494 3.76595211 -4.87481403 1.59862494 3.46539998
		 -4.87481403 2.78766608 3.46539998 -5.1681838 2.78766608 3.76595211 -4.57424116 1.59862494 3.75876904
		 -4.57424116 2.78485203 3.75876904 -4.86760998 1.59862494 4.059320927 -4.86760998 2.78485203 4.059320927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 4 6 0 6 7 0 7 5 0 6 0 0 3 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 1 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 5 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 8 -12 3 -11
		mu 0 4 12 15 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Heel_Geo" -p "Right_Front_Fore_Arm_Geo";
	rename -uid "718CFA4F-4D4A-8A73-544C-54B1A9D041FE";
createNode mesh -n "Right_Front_Arm_Heel_GeoShape" -p "Right_Front_Arm_Heel_Geo";
	rename -uid "2D450B69-4F2D-33D2-1ECA-9BB360DFE05F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Heel_GeoShapeOrig" -p "Right_Front_Arm_Heel_Geo";
	rename -uid "FD7D43AD-4E8C-CAF8-A5E8-35826521D41D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.95703101 0.97851598
		 0.94531298 0.97851598 0.94531298 0.99804699 0.95703101 0.99804699 0.96679699 0.97851598
		 0.96679699 0.99804699 0.97851598 0.97851598 0.97851598 0.99804699 0.98828101 0.97851598
		 0.98828101 0.99804699 0.99804699 0.97851598 0.99804699 0.99804699 -1.29296899 1.11132801
		 -1.47460902 0.55273402 -1 0.207031 -0.70507801 1.11132801 -0.52343798 0.55273402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -5.47824907 1.63783205 3.85940099 -5.47824907 1.080827951 3.85940099
		 -5.160182 1.63783205 3.21600389 -5.160182 1.080827951 3.21600389 -4.44996309 1.63783205 3.31967998
		 -4.44996309 1.080827951 3.31967998 -4.32912779 1.63783205 4.027171135 -4.32912779 1.080827951 4.027171135
		 -4.96463108 1.63783205 4.36073399 -4.96463108 1.080806971 4.36073399;
	setAttr -s 17 ".ed[0:16]"  2 0 0 0 1 0 1 3 0 3 2 0 4 2 0 3 5 0 5 4 0
		 6 4 0 5 7 0 7 6 0 8 6 0 7 9 0 9 8 0 0 8 0 9 1 0 5 1 1 2 6 1;
	setAttr -s 9 -ch 34 ".fc[0:8]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 -6 3 -5
		mu 0 4 4 5 3 0
		f 4 -10 -9 6 -8
		mu 0 4 6 7 5 4
		f 4 -13 -12 9 -11
		mu 0 4 8 9 7 6
		f 4 1 -15 12 -14
		mu 0 4 10 11 9 8
		f 4 14 -16 8 11
		mu 0 4 12 15 14 13
		f 3 2 5 15
		mu 0 3 15 16 14
		f 4 10 -17 0 13
		mu 0 4 8 6 0 10
		f 3 7 4 16
		mu 0 3 6 4 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Calf_Geo" -p "Right_Front_Fore_Arm_Geo";
	rename -uid "ADE5D843-4D99-DCB4-D8D7-CEA202AC34AC";
createNode mesh -n "Right_Front_Arm_Calf_GeoShape" -p "Right_Front_Arm_Calf_Geo";
	rename -uid "A0386309-451D-7EED-5ACE-4E8A2C90DD2F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 189 ".uvst[0].uvsp[0:188]" -type "float2" 0.52856898 0.97485399
		 0.53409302 0.98160398 0.52432799 0.98150498 0.51881802 0.97346097 0.50092202 0.553137
		 0.526932 0.44578201 0.52451599 0.438366 0.49828899 0.55254501 0.49828899 0.55254501
		 0.52451599 0.438366 0.526932 0.44578201 0.50092202 0.553137 0.56129599 0.49112499
		 0.58846599 0.54950303 0.57420999 0.51922601 0.56166101 0.49178499 0.58846599 0.54950303
		 0.56129599 0.49112499 0.56166101 0.49178499 0.57420999 0.51922601 0.59274697 0.98832899
		 0.54504901 0.98805302 0.55490899 0.996889 0.58270597 0.99704999 0.54521102 0.97227699
		 0.59290898 0.97255301 0.59274697 0.98832899 0.58270597 0.99704999 0.59274697 0.98832899
		 0.59290898 0.97255301 0.59290898 0.97255301 0.60472399 0.96858698 0.60472399 0.96858698
		 0.60472399 0.96858698 0.602368 0.94401699 0.602368 0.94401699 0.602368 0.94401699
		 0.593413 0.82681203 0.593413 0.82681203 0.593413 0.82681203 0.59387797 0.69657397
		 0.59387702 0.69657397 0.54504901 0.98805302 0.59274697 0.98832899 0.58270597 0.99704999
		 0.55490899 0.996889 0.59290898 0.97255301 0.59274697 0.98832899 0.54504901 0.98805302
		 0.54521102 0.97227699 0.60472399 0.96858698 0.531147 0.967713 0.60472399 0.96858698
		 0.602368 0.94401699 0.52183598 0.94245797 0.602368 0.94401699 0.593413 0.82681203
		 0.49801701 0.83599597 0.51968998 0.81626302 0.593413 0.82681203 0.52219099 0.57310098
		 0.50092202 0.553137 0.58846599 0.54950303 0.51962101 0.69467402 0.58846599 0.54950303
		 0.51968998 0.81626302 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597
		 0.52183598 0.94245797 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.59290898
		 0.97255301 0.54521102 0.97227699 0.358565 0.39152601 0.447299 0.39152601 0.471104
		 0.53459102 0.334759 0.53459102 0.472105 0.683725 0.333758 0.683725 0.47168499 0.829763
		 0.33417901 0.829763 0.461916 0.95712602 0.34398201 0.95731503 0.45107201 0.98891401
		 0.356471 0.98912501 0.42356101 0.99704999 0.38378099 0.99704999 0.52219099 0.57310098
		 0.51962101 0.69467402 0.52219099 0.57310098 0.53703499 0.459288 0.56166101 0.49178499
		 0.56129599 0.49112499 0.526932 0.44578201 0.526932 0.44578201 0.56129599 0.49112499
		 0.58846599 0.54950303 0.50092202 0.553137 0.49548501 0.83629501 0.51718199 0.81656498
		 0.48430699 0.82624298 0.51931798 0.94420201 0.509556 0.94389701 0.52856803 0.974949
		 0.51881701 0.97364902 0.517124 0.69449401 0.47502801 0.69425201 0.51969302 0.57243699
		 0.48696399 0.56242502 0.51474702 0.43864399 0.52451599 0.438366 0.51474702 0.43864399
		 0.49828899 0.55254501 0.51969397 0.57243699 0.48696399 0.56242502 0.52451599 0.438366
		 0.49828899 0.55254501 0.48696399 0.56242502 0.51474702 0.43864399 0.48696399 0.56242502
		 0.517124 0.69449401 0.47502801 0.69425201 0.47502801 0.69425201 0.517124 0.69449401
		 0.51718199 0.81656599 0.484308 0.82624298 0.49549001 0.83629501 0.50955802 0.94372803
		 0.51932001 0.94398898 0.53409302 0.98160398 0.52432799 0.98150498 0.53409302 0.98160398
		 0.52432799 0.98150498 0.526932 0.44578201 0.52451599 0.438366 0.517124 0.69449401
		 0.51968998 0.81626302 0.517124 0.69449401 0.50092202 0.553137 0.49828899 0.55254501
		 0.51968998 0.81626302 0.49801701 0.83599597 0.49801701 0.83599597 0.52183598 0.94245797
		 0.52183598 0.94245797 0.531147 0.967713 0.531147 0.967713 0.54521102 0.97227699 0.53409302
		 0.98160398 0.54521102 0.97227699 0.54521102 0.97227699 0.54504901 0.98805302 0.51962101
		 0.69467402 0.53409302 0.98160398 0.57420999 0.51922601 0.58846599 0.54950303 0.58846599
		 0.54950303 0.53703499 0.459288 0.526932 0.44578201 0.53703499 0.459288 0.53873801
		 0.51796103 0.51807398 0.50026798 0.53703499 0.459288 0.52914 0.46362701 0.57420999
		 0.51922601 0.53873801 0.51796103 0.53873801 0.51796103 0.51807398 0.50026798 0.51807398
		 0.50026798 0.52914 0.46362701 0.56166101 0.49178499 0.52914 0.46362701 0.51807398
		 0.50026798 0.57420999 0.51922601 0.56166101 0.49178499 0.51807398 0.50026798 0.53873801
		 0.51796103 0.53703499 0.459288 0.52914 0.46362701 0.52219099 0.57310098 0.51962101
		 0.69467402 0.52219099 0.57310098 0.54504901 0.98805302 0.55490899 0.996889 0.55490899
		 0.996889 0.58270597 0.99704999 0.51962101 0.69467402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  -5.47253704 11.34886265 3.48621106 -5.17788601 11.46284962 3.680125
		 -5.26881599 11.46211433 3.76511097 -5.57617092 11.32618141 3.55849195 -4.89839602 4.19596815 4.636549
		 -4.7795372 2.39158511 4.30651188 -4.71500301 2.26764297 4.4159441 -4.72317314 4.18618202 4.85929489
		 -5.97758579 4.18618202 3.604882 -5.534235 2.26764297 3.59669089 -5.42497206 2.39158511 3.66107702
		 -4.37394285 3.14750099 4.084774017 -4.10232782 4.1257019 3.856251 -4.46077824 3.61678791 3.76017594
		 -4.48835087 3.15850496 3.96366596 -4.97471094 4.1257019 2.98386908 -5.20323277 3.14750099 3.25548291
		 -5.082126141 3.15850496 3.36989188 -4.87863493 3.61678791 3.34231901 -4.73442793 11.57118893 3.92500496
		 -4.63108778 11.72014236 3.84906912 -4.30479002 11.57118893 3.4953661 -4.73442793 11.3034811 3.92500496
		 -4.30479002 11.3034811 3.4953661 -4.38070488 11.72014236 3.59868598 -4.62714005 11.57118893 3.17301607
		 -4.62714005 11.3034811 3.17301607 -4.69738483 11.23502064 2.89065003 -4.022422791 11.23502064 3.56561089
		 -4.7368021 10.81836033 2.89821005 -4.016668797 10.81836033 3.61834192 -4.90303802 8.83054256 2.91503191
		 -4.033491135 8.83054256 3.78457808 -4.9142518 6.62062788 2.91958809 -4.73048115 11.72014236 3.24893093
		 -5.056777954 11.57118893 3.60265493 -5.056777954 11.3034811 3.60265493 -4.68522501 11.22743988 4.22841406
		 -4.74219799 10.79983807 4.34387207 -4.89520502 8.99574947 4.639678 -4.69517899 8.65878296 4.45292377
		 -5.571383 4.53263998 3.57672 -5.75500822 4.19596815 3.77993798 -5.58327007 6.5957222 3.58860612
		 -5.571383 8.65878296 3.57672 -5.75813723 8.99574947 3.77674603 -5.46233082 10.79983807 3.623739
		 -5.36018705 11.22743988 3.55345201 -4.79812098 2.27327108 4.50874186 -5.62703323 2.27327108 3.67983007
		 -6.088297844 4.35495901 3.69635701 -4.81464911 4.35495901 4.97000694 -6.19296312 6.59292889 3.78231001
		 -4.90060091 6.59292889 5.074649811 -6.093213081 8.83161259 3.69041395 -4.80872583 8.83161259 4.97492218
		 -5.76363802 10.82258129 3.54337311 -4.6619792 10.82545757 4.64503193 -4.69247103 11.32937336 4.44219398
		 -4.89720011 11.46211433 4.13672686 -4.98086405 11.72014236 3.49931407 -4.69517899 4.53263998 4.45292377
		 -4.70706606 6.5957222 4.46481085 -5.24109602 2.61676788 3.66049004 -4.71116114 9.0010824203 4.86924887
		 -4.50949812 8.66418076 4.68371391 -4.57453394 10.82965946 4.55656004 -4.61970615 11.35047817 4.33906317
		 -4.5214262 6.59288692 4.69545317 -4.50968599 4.52161503 4.68350506 -5.80181599 4.52161503 3.39139605
		 -5.81374502 6.59288692 3.40313506 -5.80200577 8.66418076 3.39120698 -5.98752022 9.0010824203 3.5928061
		 -5.675313 10.82606697 3.45578098 -4.81221199 11.46284962 4.04577589 -4.038046837 6.62062788 3.7957921
		 -4.77894783 2.61676788 4.12263584 -4.78037596 3.59910607 4.079796791 -4.88016796 3.30485392 4.35548401
		 -4.84967709 2.6902051 4.19334316 -5.19825602 3.59910607 3.66191697 -5.47394323 3.30485392 3.76170993
		 -5.31180286 2.6902051 3.7312181;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 1 42 10 0 8 42 0 11 12 0 12 13 1 13 14 0 14 11 1 15 16 0 16 17 1 17 18 0 18 15 1
		 21 19 1 19 20 0 20 24 0 21 24 0 22 19 0 21 23 0 23 22 0 25 21 0 34 24 0 25 34 0 25 26 0
		 26 23 0 26 27 1 27 28 0 28 23 1 27 29 0 29 30 1 30 28 0 29 31 0 31 32 1 32 30 0 31 33 0
		 76 33 1 76 32 0 35 25 1 34 60 0 60 35 0 35 36 0 36 26 0 28 37 0 37 22 0 30 38 1 38 37 0
		 32 39 1 39 38 0 40 39 0 32 40 1 41 42 0 42 15 1 15 41 1 43 41 0 15 33 0 33 43 1 44 43 0
		 31 44 1 31 45 1 45 44 0 29 46 1 46 45 0 27 47 0 47 46 0 36 47 0 48 49 0 49 50 0 50 51 1
		 51 48 0 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1 57 55 0 56 3 0
		 3 58 1 58 57 0 2 59 0 59 58 0 12 61 1 61 62 0 76 62 1 12 76 0 4 61 0 11 4 1 11 5 0
		 63 17 0 16 10 0 10 63 1 64 65 0 65 55 1 55 64 1 66 64 0 57 66 1 67 66 0 58 67 0 65 68 0
		 68 53 1 68 69 0 69 51 1 69 7 0 7 51 1 6 48 0 6 9 0 9 49 0 8 70 0 70 50 1 50 8 1 70 71 0
		 71 52 1 71 72 0 72 54 1 72 73 0 73 54 1 73 74 0 74 56 1 74 0 0 1 75 0 75 59 1 75 67 0
		 5 10 1 71 43 1 44 72 0 70 41 0 45 73 0 46 74 1 47 0 1 36 1 0 36 22 0 22 75 1 35 19 0
		 65 40 0 40 62 0 62 68 1 64 39 0 66 38 1 67 37 1 18 13 0 12 15 1 14 77 0 77 5 1 77 63 0
		 13 78 0 78 79 0 79 14 1 79 80 0 80 77 0 18 81 0 81 78 0 81 82 0 82 79 0 83 82 0 80 83 0
		 63 83 0 82 17 1;
	setAttr ".ed[166:167]" 61 69 0 60 20 0;
	setAttr -s 86 -ch 336 ".fc[0:85]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 11 10 -10 -9
		mu 0 4 8 11 10 9
		f 4 -16 -15 -14 -13
		mu 0 4 12 15 14 13
		f 4 -20 -19 -18 -17
		mu 0 4 16 19 18 17
		f 4 23 -23 -22 -21
		mu 0 4 20 23 22 21
		f 4 -27 -26 20 -25
		mu 0 4 24 25 20 21
		f 4 29 28 -24 -28
		mu 0 4 26 27 23 20
		f 4 -32 -31 27 25
		mu 0 4 25 29 28 20
		f 4 -35 -34 -33 31
		mu 0 4 25 32 31 30
		f 4 -38 -37 -36 33
		mu 0 4 33 35 34 31
		f 4 -41 -40 -39 36
		mu 0 4 36 38 37 34
		f 4 -44 42 -42 39
		mu 0 4 39 41 40 37
		f 4 -47 -46 -30 -45
		mu 0 4 42 45 44 43
		f 4 -49 -48 44 30
		mu 0 4 46 49 48 47
		f 4 -51 -50 34 26
		mu 0 4 24 51 50 25
		f 4 -53 -52 37 49
		mu 0 4 51 54 53 52
		f 4 -55 -54 40 51
		mu 0 4 54 57 56 55
		f 3 -57 53 -56
		mu 0 3 58 59 57
		f 3 -60 -59 -58
		mu 0 3 60 62 61
		f 4 -63 -62 59 -61
		mu 0 4 63 40 64 60
		f 4 -65 41 62 -64
		mu 0 4 65 37 40 63
		f 3 -67 -66 64
		mu 0 3 66 67 37
		f 4 -69 -68 38 65
		mu 0 4 68 69 34 37
		f 4 -71 -70 35 67
		mu 0 4 70 71 31 34
		f 4 -72 48 32 69
		mu 0 4 72 74 73 31
		f 4 -76 -75 -74 -73
		mu 0 4 75 78 77 76
		f 4 -79 -78 -77 74
		mu 0 4 78 80 79 77
		f 4 -82 -81 -80 77
		mu 0 4 80 82 81 79
		f 4 -85 -84 -83 80
		mu 0 4 82 84 83 81
		f 4 -88 -87 -86 83
		mu 0 4 84 86 85 83
		f 4 -90 -89 2 86
		mu 0 4 86 88 87 85
		f 4 93 92 -92 -91
		mu 0 4 13 41 90 89
		f 4 -96 12 90 -95
		mu 0 4 4 12 13 91
		f 3 4 -97 95
		mu 0 3 4 5 12
		f 4 -100 -99 17 -98
		mu 0 4 92 95 94 93
		f 4 -11 58 16 98
		mu 0 4 96 99 98 97
		f 3 -103 -102 -101
		mu 0 3 100 102 101
		f 4 -105 84 102 -104
		mu 0 4 103 104 102 100
		f 4 -107 87 104 -106
		mu 0 4 105 106 104 103
		f 4 81 -109 -108 101
		mu 0 4 102 108 107 101
		f 4 78 -111 -110 108
		mu 0 4 108 110 109 107
		f 3 -113 -112 110
		mu 0 3 110 7 109
		f 4 -114 6 112 75
		mu 0 4 111 6 7 110
		f 4 113 72 -116 -115
		mu 0 4 6 111 113 112
		f 3 -119 -118 -117
		mu 0 3 114 116 115
		f 4 115 73 118 8
		mu 0 4 117 120 119 118
		f 4 76 -121 -120 117
		mu 0 4 121 123 122 115
		f 4 79 -123 -122 120
		mu 0 4 124 127 126 125
		f 3 -125 -124 122
		mu 0 3 127 128 126
		f 4 -127 -126 124 82
		mu 0 4 129 130 128 127
		f 4 3 -128 126 85
		mu 0 4 3 0 130 129
		f 4 1 88 -130 -129
		mu 0 4 1 2 132 131
		f 4 129 89 106 -131
		mu 0 4 133 134 106 105
		f 4 5 114 9 -132
		mu 0 4 5 6 136 135
		f 4 121 -134 63 -133
		mu 0 4 137 126 138 63
		f 4 -135 119 132 60
		mu 0 4 60 115 139 63
		f 4 -12 116 134 57
		mu 0 4 140 141 115 60
		f 4 -136 66 133 123
		mu 0 4 128 143 142 126
		f 4 -137 68 135 125
		mu 0 4 130 145 144 128
		f 4 -138 70 136 127
		mu 0 4 0 147 146 130
		f 4 -139 71 137 0
		mu 0 4 1 149 148 0
		f 4 -141 -140 138 128
		mu 0 4 150 24 151 1
		f 4 -142 47 139 24
		mu 0 4 21 153 152 24
		f 4 107 -145 -144 -143
		mu 0 4 101 107 154 58
		f 4 -146 100 142 55
		mu 0 4 57 100 101 58
		f 4 -147 103 145 54
		mu 0 4 54 103 100 57
		f 4 -148 105 146 52
		mu 0 4 51 105 103 54
		f 4 140 130 147 50
		mu 0 4 24 155 105 51
		f 4 19 -150 13 -149
		mu 0 4 156 157 13 14
		f 4 61 -43 -94 149
		mu 0 4 158 40 41 13
		f 4 -152 -151 15 96
		mu 0 4 5 159 15 12
		f 4 99 -153 151 131
		mu 0 4 160 92 161 5
		f 4 -156 -155 -154 14
		mu 0 4 15 163 162 14
		f 4 -158 -157 155 150
		mu 0 4 164 165 163 15
		f 4 153 -160 -159 148
		mu 0 4 14 162 167 166
		f 4 154 -162 -161 159
		mu 0 4 162 163 169 168
		f 4 163 162 161 156
		mu 0 4 165 171 170 163
		f 4 -166 -163 -165 97
		mu 0 4 172 174 173 92
		f 4 158 160 165 18
		mu 0 4 175 178 177 176
		f 4 164 -164 157 152
		mu 0 4 92 180 165 179
		f 4 91 144 109 -167
		mu 0 4 181 182 107 109
		f 4 7 94 166 111
		mu 0 4 7 4 183 109
		f 4 21 -168 46 141
		mu 0 4 21 22 185 184
		f 4 22 -29 45 167
		mu 0 4 22 23 187 186
		f 4 143 -93 43 56
		mu 0 4 58 188 41 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Shin_Geo" -p "Right_Front_Fore_Arm_Geo";
	rename -uid "2C675329-47CD-6402-62F7-C09BAD5EC81F";
createNode mesh -n "Right_Front_Arm_Shin_GeoShape" -p "Right_Front_Arm_Shin_Geo";
	rename -uid "E70994B7-4433-52F8-6FAC-CCBA69A1541B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:105]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 237 ".uvst[0].uvsp[0:236]" -type "float2" 0.091770999 0.369551
		 0.064251997 0.365547 0.057507999 0.46530899 0.097764999 0.46727601 0.046569001 0.95226097
		 0.019934 0.96737301 0.059643999 0.99858999 0.069045 0.97977501 0.110485 0.465197
		 0.099601001 0.36329001 0.33160701 0.49208799 0.33108801 0.47784901 0.30121699 0.48045999
		 0.306741 0.48896801 0.010897 0.89938402 0.015741 0.92038602 0.058373999 0.917386
		 0.062306002 0.89308703 0.14084101 0.99114501 0.138069 0.95506698 0.091770999 0.369551
		 0.097764999 0.46727601 0.046569001 0.95226097 0.069045 0.97977501 0.110485 0.465197
		 0.097764999 0.46727601 0.091770999 0.369551 0.099601001 0.36329001 0.306741 0.48896801
		 0.30121699 0.48045999 0.058373999 0.917386 0.062306002 0.89308703 0.069045 0.97977501
		 0.138069 0.95506698 0.24582 0.55150002 0.198421 0.553119 0.210265 0.64977902 0.252572
		 0.65227503 0.21557599 0.73471701 0.248807 0.73138702 0.29158199 0.55224901 0.29699001
		 0.65341401 0.32378799 0.653687 0.319199 0.55430597 0.32132399 0.73407799 0.29438499
		 0.73260999 0.312702 0.915833 0.29026499 0.91377503 0.183137 0.55549699 0.130492 0.53603703
		 0.125136 0.65086901 0.18320601 0.65105301 0.130918 0.74646097 0.185413 0.73494297
		 0.074359 0.58401501 0.045772001 0.57729 0.025226001 0.64779299 0.068103999 0.65794402
		 0.063110001 0.75552702 0.0078809997 0.75018901 0.119689 0.75301498 0.093028001 0.65320301
		 0.10611 0.53121001 0.054207001 0.52533799 0.27644899 0.74265897 0.28239101 0.92042899
		 0.116622 0.52293497 0.061469 0.83352 0.158557 0.94473398 0.14167701 0.83245897 0.13953499
		 0.75819302 0.259767 0.54373401 0.192002 0.52486098 0.180035 0.54325098 0.135295 0.52912903
		 0.26120099 0.74019098 0.191622 0.768843 0.180673 0.747163 0.140361 0.75189501 0.27634099
		 0.53941703 0.0047590001 0.83474201 0.308368 0.92968798 0.068880998 0.35205701 0.15749
		 0.99116099 0.210265 0.64977902 0.198421 0.553119 0.24582 0.55150002 0.252572 0.65227503
		 0.21557599 0.73471701 0.210265 0.64977902 0.252572 0.65227503 0.248807 0.73138702
		 0.29026499 0.91377503 0.29438499 0.73260999 0.29438499 0.73260999 0.29699001 0.65341401
		 0.29699001 0.65341401 0.29158199 0.55224901 0.125136 0.65086901 0.130492 0.53603703
		 0.183137 0.55549699 0.18320601 0.65105301 0.130918 0.74646097 0.125136 0.65086901
		 0.18320601 0.65105301 0.185413 0.73494297 0.18320601 0.65105301 0.183137 0.55549699
		 0.198421 0.553119 0.210265 0.64977902 0.185413 0.73494297 0.18320601 0.65105301 0.210265
		 0.64977902 0.21557599 0.73471701 0.068103999 0.65794402 0.063110001 0.75552702 0.074359
		 0.58401501 0.068103999 0.65794402 0.10611 0.53121001 0.074359 0.58401501 0.093028001
		 0.65320301 0.074359 0.58401501 0.10611 0.53121001 0.125136 0.65086901 0.119689 0.75301498
		 0.093028001 0.65320301 0.125136 0.65086901 0.130918 0.74646097 0.10611 0.53121001
		 0.130492 0.53603703 0.125136 0.65086901 0.097764999 0.46727601 0.10611 0.53121001
		 0.29699001 0.65341401 0.29438499 0.73260999 0.248807 0.73138702 0.252572 0.65227503
		 0.29158199 0.55224901 0.29699001 0.65341401 0.252572 0.65227503 0.24582 0.55150002
		 0.306741 0.48896801 0.29158199 0.55224901 0.27644899 0.74265897 0.29438499 0.73260999
		 0.29026499 0.91377503 0.28239101 0.92042899 0.116622 0.52293497 0.10611 0.53121001
		 0.097764999 0.46727601 0.110485 0.465197 0.158557 0.94473398 0.062306002 0.89308703
		 0.061469 0.83352 0.14167701 0.83245897 0.119689 0.75301498 0.14167701 0.83245897
		 0.061469 0.83352 0.063110001 0.75552702 0.14167701 0.83245897 0.119689 0.75301498
		 0.13953499 0.75819302 0.130492 0.53603703 0.135295 0.52912903 0.180035 0.54325098
		 0.183137 0.55549699 0.183137 0.55549699 0.180035 0.54325098 0.192002 0.52486098 0.198421
		 0.553119 0.198421 0.553119 0.192002 0.52486098 0.259767 0.54373401 0.24582 0.55150002
		 0.24582 0.55150002 0.259767 0.54373401 0.29158199 0.55224901 0.29438499 0.73260999
		 0.27644899 0.74265897 0.26120099 0.74019098 0.29438499 0.73260999 0.26120099 0.74019098
		 0.248807 0.73138702 0.248807 0.73138702 0.26120099 0.74019098 0.191622 0.768843 0.21557599
		 0.73471701 0.21557599 0.73471701 0.191622 0.768843 0.180673 0.747163 0.185413 0.73494297
		 0.185413 0.73494297 0.180673 0.747163 0.140361 0.75189501 0.130918 0.74646097 0.130918
		 0.74646097 0.140361 0.75189501 0.13953499 0.75819302 0.119689 0.75301498 0.135295
		 0.52912903 0.130492 0.53603703 0.10611 0.53121001 0.116622 0.52293497 0.259767 0.54373401
		 0.27634099 0.53941703 0.29158199 0.55224901 0.30121699 0.48045999 0.306741 0.48896801
		 0.29158199 0.55224901 0.27634099 0.53941703 0.119689 0.75301498 0.063110001 0.75552702
		 0.068103999 0.65794402 0.093028001 0.65320301 0.093028001 0.65320301 0.068103999
		 0.65794402 0.074359 0.58401501 0.062306002 0.89308703 0.061469 0.83352 0.061469 0.83352
		 0.063110001 0.75552702 0.29026499 0.91377503 0.28239101 0.92042899 0.091770999 0.369551
		 0.099601001 0.36329001 0.158557 0.94473398 0.138069 0.95506698 0.058373999 0.917386
		 0.062306002 0.89308703 0.138069 0.95506698 0.158557 0.94473398 0.138069 0.95506698
		 0.069045 0.97977501 0.046569001 0.95226097 0.058373999 0.917386 0.058373999 0.917386
		 0.046569001 0.95226097;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 119 ".vt[0:118]"  -5.14453697 3.10440898 4.58394289 -5.42492914 3.10407305 4.30353022
		 -5.56073713 4.34458494 4.43778276 -5.64131403 9.20845795 5.19052792 -5.96832609 9.21755028 4.83934498
		 -5.59152317 9.23019314 4.46256399 -5.268857 9.24086094 4.75727701 -5.062386036 4.36430407 4.70013714
		 -5.027126789 3.129987 4.46653318 -5.18038511 4.345047 4.81815577 -4.39723206 4.53723907 3.27413106
		 -4.51602793 4.53721809 3.39292789 -4.25023079 4.53755379 3.658746 -4.13141298 4.53757477 3.53996992
		 -6.19080019 9.60634518 5.061316013 -6.03806591 9.72226524 4.90845585 -5.71094894 9.71317196 5.25972414
		 -5.42837286 10.18500042 4.2982378 -5.10560322 10.19566822 4.59305716 -5.70532084 3.1037159 4.023118019
		 -6.31946707 9.20761776 4.51233292 -5.88623714 9.24008369 4.13985586 -5.8230691 4.36335897 3.9393909
		 -5.94106722 4.34412289 4.057411194 -5.58793211 3.12929392 3.90568495 -4.66302919 4.53692389 3.0083129406
		 -4.78182602 4.5369029 3.12711 -6.38929081 9.71233177 4.5813179 -5.72319317 10.19489098 3.97542691
		 -3.99709797 5.3478179 4.046279907 -4.34815502 5.39674807 4.53245211 -4.218081 6.59605789 4.39952087
		 -3.89776802 6.61886406 3.94877696 -4.17213202 7.665483 4.35067606 -3.93172503 7.62596083 3.97748399
		 -4.23305416 6.61712122 3.1074121 -4.064611912 5.34785986 3.47216105 -3.96610188 6.61745691 3.3743639
		 -4.26365089 7.62272692 3.13677001 -3.99869394 7.62306309 3.40174794 -4.30531502 9.90509033 3.1755991
		 -4.064466 9.90538502 3.4164691 -4.34519291 5.38461018 4.72521019 -4.86928988 5.10176086 5.17158699
		 -4.90009689 6.59366417 5.24535894 -4.3652482 6.60546589 4.72287893 -4.86685514 7.84721708 5.19000292
		 -4.34072113 7.67087984 4.71067905 -5.49141598 5.77508402 4.91070414 -5.73621321 5.78314781 4.61147499
		 -6.045962811 6.59292889 4.92021704 -5.63417387 6.60466814 5.33202696 -5.66252279 7.84194613 5.56642818
		 -5.061923981 7.83908987 5.14949512 -5.32578802 6.60473108 5.21060514 -5.12616301 5.11692286 4.96345615
		 -5.60672712 5.11633492 4.48285007 -4.33043098 5.34752417 3.20634294 -4.21497202 7.62503719 3.61800599
		 -4.18319893 9.91132832 3.535182 -5.0079331398 5.12811613 4.84463692 -5.68215895 9.60619736 5.5706501
		 -4.82409906 10.29409504 4.61508703 -5.6630702 8.8480978 5.58457184 -4.881639 8.82915592 4.90020418
		 -4.94495296 7.83203411 4.93170404 -4.073748112 5.35279512 3.835356 -4.69517899 5.3954668 4.46050501
		 -4.50968599 5.3846941 4.6911068 -4.84268284 5.11072779 5.0059390068 -4.038530827 7.625247 3.7944901
		 -4.69253302 7.66670084 4.45506716 -4.50687313 7.67234993 4.6858778 -4.85209084 7.83971977 5.022821903
		 -4.2507782 5.35258484 3.65830493 -6.17809391 7.84131622 5.050815105 -6.18790102 8.84786701 5.059361935
		 -4.42402697 9.91103363 3.294312 -5.30753899 3.12965107 4.18612003 -5.28439808 10.29428387 4.15413713
		 -5.65660095 5.39513111 3.22390008 -5.17032623 5.34636879 2.87294698 -5.52514219 6.59444094 3.092375994
		 -5.074398041 6.61741495 2.77206302 -5.47759819 7.66388702 3.04510498 -5.10434389 7.6245122 2.80475998
		 -4.54614305 9.90479755 2.93475008 -4.52860785 7.62239122 2.87179208 -4.49998522 6.61678505 2.84043908
		 -4.59622812 5.34720802 2.94052505 -6.2954011 5.099997044 3.74537206 -5.84933901 5.38274097 3.22095895
		 -6.37102222 6.59183693 3.77430892 -5.84852123 6.60363913 3.23950291 -6.31721878 7.84541082 3.73955393
		 -5.83762121 7.6690321 3.21367311 -6.4577508 6.60366011 4.50838518 -6.69368696 7.84066486 4.535182
		 -6.035399914 5.77441216 4.36667824 -6.087310791 5.11574697 4.0022439957 -6.33632898 6.60349178 4.20000076
		 -6.27671099 7.8375988 3.934623 -4.74488688 7.62438583 3.088049889 -4.66487694 9.9107399 3.053462982
		 -5.96849298 5.12691879 3.88399291 -5.74530602 10.29296112 3.6938169 -6.7000699 9.60493755 4.55265284
		 -6.71306896 8.84679604 4.53448915 -6.028616905 8.82772732 3.75314093 -6.058897972 7.83066893 3.81767511
		 -6.12977314 5.10913181 3.71874404 -5.81525707 5.38309813 3.38545299 -5.58467722 5.39437485 3.57094598
		 -4.95942307 5.35170317 2.94961905 -4.92135 7.62415504 2.911587 -5.58202982 7.66560888 3.56550694
		 -5.81284094 7.67073298 3.37982392 -6.15001822 7.8381238 3.72479105 -4.78239298 5.35193396 3.1266489;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 9 2 1 0 9 0 3 4 0 4 5 1 5 6 0 6 3 0 7 8 0
		 8 0 0 9 7 1 10 11 1 11 12 0 12 13 0 13 10 0 14 15 1 15 16 0 16 61 1 14 61 0 17 18 0
		 18 6 0 5 17 1 1 19 0 23 19 0 2 23 1 20 21 0 21 5 0 4 20 0 22 23 1 19 24 0 24 22 0
		 10 25 0 25 26 0 26 11 0 27 15 0 106 14 0 27 106 1 21 28 0 28 17 0 29 30 0 30 31 0
		 31 32 1 32 29 1 31 33 0 33 34 0 34 32 1 36 37 1 37 35 1 35 57 1 57 36 1 38 35 1 37 39 1
		 39 38 1 40 38 1 39 41 0 41 40 0 42 43 0 43 44 0 44 45 1 45 42 0 44 46 0 46 47 0 47 45 0
		 30 42 0 45 31 1 47 33 0 48 49 0 49 50 1 50 51 1 51 48 0 52 51 0 50 75 1 75 52 1 53 46 0
		 44 54 1 54 53 0 44 55 0 55 48 1 48 54 0 55 56 1 56 49 1 43 55 0 55 9 0 2 56 1 34 39 0
		 37 32 1 36 29 0 13 36 0 57 10 1 58 59 0 59 41 0 39 58 0 60 7 0 55 60 0 63 61 0 61 62 0
		 62 64 0 64 63 1 64 53 1 53 52 1 52 63 0 64 65 0 65 53 0 36 66 1 66 29 1 66 67 0 67 30 1
		 67 68 0 68 42 1 68 69 0 69 43 0 39 70 1 70 58 0 34 70 1 71 70 0 33 71 1 72 71 0 47 72 1
		 73 72 0 46 73 1 65 73 0 69 60 0 36 74 0 74 66 0 12 74 0 54 51 1 75 76 1 76 63 1 76 14 1
		 59 77 0 77 40 1 8 78 0 78 1 1 17 79 1 79 62 0 62 18 1 16 18 0 16 3 0 15 4 1 82 80 0
		 80 81 0 81 83 1 83 82 1 84 82 0 83 85 1 85 84 0 40 86 0 86 87 0 87 38 1 87 88 1 88 35 1
		 88 89 1 57 89 1 92 90 0 90 91 0 91 93 0 93 92 1 94 92 0 93 95 0 95 94 0 91 80 0 82 93 1
		 84 95 0 50 96 1 96 97 0 75 97 1;
	setAttr ".ed[166:224]" 98 96 0 49 98 0 99 98 1 56 99 1 100 98 0 99 92 0 92 100 1
		 101 100 0 94 101 0 99 90 0 23 99 0 87 85 0 83 88 1 81 89 0 89 25 0 102 87 0 86 103 0
		 103 102 0 104 99 0 22 104 0 105 106 0 106 107 0 107 108 1 108 105 0 101 108 1 107 97 0
		 97 101 1 101 109 0 109 108 0 90 110 0 110 111 0 111 91 1 111 112 0 112 80 1 112 113 0
		 113 81 1 113 89 1 102 114 0 114 87 1 114 85 1 114 115 0 115 84 1 115 116 0 116 95 1
		 116 117 0 117 94 1 117 109 0 104 110 0 113 118 0 118 89 0 118 26 0 96 100 1 76 107 1
		 77 103 0 78 24 0 105 28 1 28 27 0 105 79 0 20 27 0;
	setAttr -s 106 -ch 410 ".fc[0:105]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 -11 -4 -10 -9
		mu 0 4 8 3 0 9
		f 4 -15 -14 -13 -12
		mu 0 4 10 13 12 11
		f 4 18 -18 -17 -16
		mu 0 4 14 17 16 15
		f 4 -22 6 -21 -20
		mu 0 4 18 6 7 19
		f 4 24 23 -23 1
		mu 0 4 2 21 20 1
		f 4 -28 5 -27 -26
		mu 0 4 22 5 6 23
		f 4 -31 -30 -24 -29
		mu 0 4 24 27 26 25
		f 4 11 -34 -33 -32
		mu 0 4 10 11 29 28
		f 4 36 35 15 -35
		mu 0 4 30 31 14 15
		f 4 -39 -38 26 21
		mu 0 4 18 33 32 6
		f 4 -43 -42 -41 -40
		mu 0 4 34 37 36 35
		f 4 -46 -45 -44 41
		mu 0 4 37 39 38 36
		f 4 -50 -49 -48 -47
		mu 0 4 40 43 42 41
		f 4 -53 -52 47 -51
		mu 0 4 44 45 41 42
		f 4 -56 -55 52 -54
		mu 0 4 46 47 45 44
		f 4 -60 -59 -58 -57
		mu 0 4 48 51 50 49
		f 4 -63 -62 -61 58
		mu 0 4 51 53 52 50
		f 4 40 -65 59 -64
		mu 0 4 35 36 51 48
		f 4 43 -66 62 64
		mu 0 4 36 38 53 51
		f 4 -70 -69 -68 -67
		mu 0 4 54 57 56 55
		f 4 -73 -72 68 -71
		mu 0 4 58 59 56 57
		f 4 -76 -75 60 -74
		mu 0 4 60 61 50 52
		f 4 -79 -78 -77 74
		mu 0 4 61 54 62 50
		f 4 -81 -80 77 66
		mu 0 4 55 63 62 54
		f 3 76 -82 57
		mu 0 3 50 62 49
		f 4 -84 -3 -83 79
		mu 0 4 63 2 3 62
		f 4 45 -86 51 -85
		mu 0 4 39 37 41 45
		f 4 42 -87 46 85
		mu 0 4 37 34 40 41
		f 4 14 -89 49 -88
		mu 0 4 13 10 43 40
		f 4 -92 54 -91 -90
		mu 0 4 64 45 47 65
		f 4 -94 82 10 -93
		mu 0 4 66 62 3 8
		f 4 -98 -97 -96 -95
		mu 0 4 67 69 68 17
		f 4 -101 -100 -99 97
		mu 0 4 67 58 60 69
		f 3 -103 -102 98
		mu 0 3 60 70 69
		f 3 -105 -104 86
		mu 0 3 34 71 40
		f 4 -107 -106 104 39
		mu 0 4 35 72 71 34
		f 4 -109 -108 106 63
		mu 0 4 48 73 72 35
		f 4 -111 -110 108 56
		mu 0 4 49 74 73 48
		f 3 -113 -112 91
		mu 0 3 64 75 45
		f 3 -114 84 111
		mu 0 3 75 39 45
		f 4 -116 44 113 -115
		mu 0 4 76 38 39 75
		f 4 -118 65 115 -117
		mu 0 4 77 53 38 76
		f 4 -120 61 117 -119
		mu 0 4 78 52 53 77
		f 4 102 73 119 -121
		mu 0 4 70 60 52 78
		f 4 110 81 93 -122
		mu 0 4 74 49 62 66
		f 3 103 -124 -123
		mu 0 3 40 71 79
		f 4 13 87 122 -125
		mu 0 4 12 13 40 79
		f 4 -126 75 99 70
		mu 0 4 57 61 60 58
		f 3 69 78 125
		mu 0 3 57 54 61
		f 4 -128 -127 72 100
		mu 0 4 67 80 59 58
		f 4 -19 -129 127 94
		mu 0 4 17 14 80 67
		f 4 55 -131 -130 90
		mu 0 4 47 46 81 65
		f 4 0 -133 -132 9
		mu 0 4 0 1 82 9
		f 4 19 -136 -135 -134
		mu 0 4 18 19 68 83
		f 4 17 95 135 -137
		mu 0 4 16 17 68 19
		f 4 20 7 -138 136
		mu 0 4 19 7 4 16
		f 4 137 4 -139 16
		mu 0 4 16 4 5 15
		f 4 -143 -142 -141 -140
		mu 0 4 84 87 86 85
		f 4 -146 -145 142 -144
		mu 0 4 88 91 90 89
		f 4 53 -149 -148 -147
		mu 0 4 46 44 93 92
		f 4 50 -151 -150 148
		mu 0 4 44 42 95 94
		f 4 48 152 -152 150
		mu 0 4 42 43 97 96
		f 4 -157 -156 -155 -154
		mu 0 4 98 101 100 99
		f 4 -160 -159 156 -158
		mu 0 4 102 105 104 103
		f 4 -162 139 -161 155
		mu 0 4 106 109 108 107
		f 4 -163 143 161 158
		mu 0 4 110 113 112 111
		f 4 71 165 -165 -164
		mu 0 4 56 59 115 114
		f 4 -168 67 163 -167
		mu 0 4 116 55 56 117
		f 4 -170 80 167 -169
		mu 0 4 118 63 55 119
		f 4 -173 -172 168 -171
		mu 0 4 120 123 122 121
		f 4 -175 157 172 -174
		mu 0 4 124 127 126 125
		f 3 171 153 -176
		mu 0 3 128 130 129
		f 4 -25 83 169 -177
		mu 0 4 131 2 63 132
		f 4 -179 144 -178 149
		mu 0 4 133 136 135 134
		f 4 -180 141 178 151
		mu 0 4 137 140 139 138
		f 4 -181 -153 88 31
		mu 0 4 141 142 43 10
		f 4 -184 -183 147 -182
		mu 0 4 143 146 145 144
		f 4 -186 28 176 -185
		mu 0 4 147 150 149 148
		f 4 -190 -189 -188 -187
		mu 0 4 151 154 153 152
		f 4 -193 -192 188 -191
		mu 0 4 155 158 157 156
		f 3 -195 -194 190
		mu 0 3 159 161 160
		f 4 154 -198 -197 -196
		mu 0 4 162 165 164 163
		f 4 160 -200 -199 197
		mu 0 4 166 169 168 167
		f 4 140 -202 -201 199
		mu 0 4 170 173 172 171
		f 3 179 -203 201
		mu 0 3 174 176 175
		f 3 -205 -204 181
		mu 0 3 177 179 178
		f 3 177 -206 204
		mu 0 3 180 182 181
		f 4 145 -208 -207 205
		mu 0 4 183 186 185 184
		f 4 162 -210 -209 207
		mu 0 4 187 190 189 188
		f 4 159 -212 -211 209
		mu 0 4 191 194 193 192
		f 4 174 193 -213 211
		mu 0 4 195 198 197 196
		f 4 -214 184 175 195
		mu 0 4 199 202 201 200
		f 3 202 -216 -215
		mu 0 3 203 205 204
		f 4 -217 215 180 32
		mu 0 4 206 209 208 207
		f 4 173 -218 164 192
		mu 0 4 210 213 212 211
		f 3 170 166 217
		mu 0 3 214 216 215
		f 4 187 -219 128 -36
		mu 0 4 217 218 80 14
		f 4 191 -166 126 218
		mu 0 4 219 220 59 80
		f 4 182 -220 130 146
		mu 0 4 221 222 81 46
		f 4 29 -221 132 22
		mu 0 4 223 224 82 1
		f 4 186 -37 -223 -222
		mu 0 4 225 228 227 226
		f 4 133 -224 221 38
		mu 0 4 18 83 230 229
		f 4 222 -225 25 37
		mu 0 4 231 234 233 232
		f 4 34 138 27 224
		mu 0 4 235 15 5 236;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Front_Fore_Arm_Geo_parentConstraint1" -p "Right_Front_Fore_Arm_Geo";
	rename -uid "B128B6D7-4B63-1AF4-BF46-469E17D6E44A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Elbow_IK_JntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -10.424757743724623 0.70188294231359616 7.631278388234831 ;
	setAttr ".tg[0].tor" -type "double3" -166.38914088898417 -47.914019120132465 78.378576278383619 ;
	setAttr ".lr" -type "double3" 7.9513867036587919e-16 -6.3611093629270335e-15 -4.4139062980501586e-32 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-16 -6.3611093629270335e-15 -4.4139062980501586e-32 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Front_Arm_Toe_1_Geo" -p "Right_Front_Arm_Geo";
	rename -uid "7F870A54-44DF-9DC2-2807-6A8B8EE420F6";
createNode transform -n "Right_Front_Arm_Heel_to_Toe_Tip1_Geo" -p "Right_Front_Arm_Toe_1_Geo";
	rename -uid "94408E2C-4B83-6D52-34F5-7282C8D92FB8";
createNode mesh -n "Right_Front_Arm_Heel_to_Toe_Tip1_GeoShape" -p "Right_Front_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "1029B1D4-4781-5C2A-1D15-CB93E66625C1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Heel_to_Toe_Tip1_GeoShapeOrig" -p "Right_Front_Arm_Heel_to_Toe_Tip1_Geo";
	rename -uid "3A5EE162-41A2-54A6-96AA-CF8D8A2AAEBE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4.50817394 1.20791996 3.49656296 -4.091911793 0.95617199 3.54320407
		 -3.967026 1.297212 3.56319594 -4.41896677 1.42411494 3.51101089 -4.56243801 1.20959997 3.80679607
		 -4.1555419 0.95814598 3.90690303 -4.47322989 1.42579496 3.82122302 -4.030654907 1.29918599 3.92691588;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 8 9 3 0
		f 4 8 -12 2 10
		mu 0 4 9 10 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Toe_Tip1_Geo" -p "Right_Front_Arm_Toe_1_Geo";
	rename -uid "6699E806-4966-4ACD-019A-6FB0DE7B5303";
createNode mesh -n "Right_Front_Arm_Toe_Tip1_GeoShape" -p "Right_Front_Arm_Toe_Tip1_Geo";
	rename -uid "F21849E2-4909-8B23-C608-AD8DE1DB4FA0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Toe_Tip1_GeoShapeOrig" -p "Right_Front_Arm_Toe_Tip1_Geo";
	rename -uid "F8FF19BF-45B0-990E-CEAB-53A154C0ACA5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.23623601 0.406389 0.23741101 0.40507901 0.248547 0.45052999
		 0.247372 0.44820699 0.26073399 0.50628698 0.261794 0.50718498 0.153832 0.50628698
		 0.152189 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.17610399 0.40507901
		 0.178331 0.406389 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.66281903
		 0.91825199 0.717085 0.93233401 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.84970701 0.98624903 0.717085 0.93233401 0.71881098
		 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699 0.25976601
		 0.39648399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -3.12652206 0.68840098 3.129987 -2.073204041 0.125286 3.59946299
		 -2.021943092 0.215334 3.6021719 -3.20252109 1.11707401 4.65624714 -2.18985891 0.220542 4.56187201
		 -2.23916698 0.130431 4.54796982 -3.8919301 1.45063806 2.87385011 -4.060853958 1.018206 2.856987
		 -2.47755909 -8.3999999e-05 3.63318896 -2.19057298 0.158214 3.68253899 -3.18481803 0.66805202 3.36814809
		 -3.20497799 0.25491899 3.36684608 -4.12479877 0.62567401 3.034499884 -4.35980892 0.63293999 4.37780809
		 -4.2433219 0.96324903 4.39639187 -3.36230993 0.673554 4.382617 -3.38246989 0.26042101 4.38133621
		 -2.3213191 0.162267 4.42984486 -2.60830498 0.0039479998 4.38047409 -2.94075608 1.10896802 3.1601851
		 -4.35913801 1.027425051 4.56199789 -4.19371986 1.45996201 4.59895802 -3.38826609 0.69650698 4.6259861
		 -4.0083332062 0.95598298 3.053085089;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 19 2 0 0 19 1 3 4 0 4 5 0 5 22 0
		 3 22 1 6 7 0 7 0 0 6 19 0 8 9 0 9 10 0 10 11 1 11 8 0 12 11 0 10 23 0 23 12 0 13 14 0
		 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0 2 4 0 3 19 1 21 3 0 21 6 0 1 5 0
		 20 21 0 22 20 0 10 0 1 7 23 1 9 1 1 9 17 0 17 5 1 22 15 1 20 14 1 18 8 0 11 16 1
		 20 7 0 14 23 0 13 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 3 0 9
		f 4 -15 -14 -13 -12
		mu 0 4 10 13 12 11
		f 4 -18 -17 13 -16
		mu 0 4 14 15 12 13
		f 4 -22 -21 -20 -19
		mu 0 4 16 19 18 17
		f 4 -25 -24 -23 20
		mu 0 4 19 21 20 18
		f 4 -3 -27 4 -26
		mu 0 4 2 3 4 5
		f 4 -29 27 26 -11
		mu 0 4 8 22 4 3
		f 4 1 25 5 -30
		mu 0 4 23 2 5 24
		f 4 -32 -8 -28 -31
		mu 0 4 25 7 4 26
		f 4 16 -34 9 -33
		mu 0 4 27 30 29 28
		f 4 -35 12 32 0
		mu 0 4 31 34 33 32
		f 4 34 29 -37 -36
		mu 0 4 35 38 37 36
		f 4 31 38 19 -38
		mu 0 4 39 42 41 40
		f 4 36 6 37 22
		mu 0 4 43 46 45 44
		f 4 24 -41 14 -40
		mu 0 4 21 19 13 10
		f 4 35 23 39 11
		mu 0 4 11 20 21 10
		f 4 -42 30 28 8
		mu 0 4 47 49 48 8
		f 4 -43 -39 41 33
		mu 0 4 50 53 52 51
		f 4 17 -44 18 42
		mu 0 4 15 14 16 17
		f 4 40 21 43 15
		mu 0 4 13 19 16 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Front_Arm_Toe_1_Geo_parentConstraint1" -p "Right_Front_Arm_Toe_1_Geo";
	rename -uid "4F45EDBC-4810-A72E-7087-BF98ECFEC34B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Thumb1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.6196214584168036 4.4470200257281869 -0.92740654868361894 ;
	setAttr ".tg[0].tor" -type "double3" -100.47137841114295 34.54712339056038 164.23134960147095 ;
	setAttr ".lr" -type "double3" -6.3611093629270351e-15 -2.5444437451708134e-14 6.3611093629270351e-15 ;
	setAttr ".rst" -type "double3" 0 4.4408920985006262e-16 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270351e-15 -2.5444437451708134e-14 
		6.3611093629270351e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Front_Arm_Toe_2_Geo" -p "Right_Front_Arm_Geo";
	rename -uid "618C7E48-4048-CD34-E85F-BE9AABFC03AE";
createNode transform -n "Right_Front_Arm_Heel_to_Toe_Tip2_Geo" -p "Right_Front_Arm_Toe_2_Geo";
	rename -uid "466CF6DF-47B2-9690-898B-B1907C3D301B";
createNode mesh -n "Right_Front_Arm_Heel_to_Toe_Tip2_GeoShape" -p "Right_Front_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "C804548F-471D-30F2-C383-68B966042031";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Heel_to_Toe_Tip2_GeoShapeOrig" -p "Right_Front_Arm_Heel_to_Toe_Tip2_Geo";
	rename -uid "E6BC1351-424C-C269-49D9-3EA8BFDD5BEC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4.93640709 1.14405894 3.99027395 -5.26492977 0.95846099 4.36499691
		 -5.34229517 1.43795395 4.44236088 -4.997159 1.543437 4.051004887 -5.20434523 1.14405894 3.7223351
		 -5.57907009 0.95846099 4.050858021 -5.26509905 1.543437 3.78308797 -5.65643311 1.43795395 4.12820101;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 12 15 14 13
		f 4 8 -12 2 10
		mu 0 4 16 19 18 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Toe_Tip2_Geo" -p "Right_Front_Arm_Toe_2_Geo";
	rename -uid "99221F51-4A6D-A3BC-15F2-B8A5CB4501D9";
createNode mesh -n "Right_Front_Arm_Toe_Tip2_GeoShape" -p "Right_Front_Arm_Toe_Tip2_Geo";
	rename -uid "EADABE3B-4B71-6526-EFA6-719D5F91A2F4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Toe_Tip2_GeoShapeOrig" -p "Right_Front_Arm_Toe_Tip2_Geo";
	rename -uid "5A930F51-44CC-1A6F-3BE2-4384624DCE03";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.66281903 0.91825199
		 0.717085 0.93233401 0.72881001 0.854976 0.68612802 0.83063501 0.25585899 0.39843801
		 0.26171899 0.40234399 0.29101601 0.40625 0.29101601 0.39843801 0.26171899 0.40234399
		 0.25585899 0.39453101 0.29101601 0.39843801 0.29101601 0.40625 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.23741101 0.40507901
		 0.23623601 0.406389 0.178331 0.406389 0.17610399 0.40507901 0.178331 0.406389 0.23623601
		 0.406389 0.247372 0.44820699 0.16719501 0.44820699 0.153832 0.50628698 0.16719501
		 0.44820699 0.247372 0.44820699 0.26073399 0.50628698 0.26073399 0.50628698 0.247372
		 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.17610399 0.40507901 0.178331
		 0.406389 0.16719501 0.44820699 0.164968 0.45052999 0.153832 0.50628698 0.152189 0.50718498
		 0.164968 0.45052999 0.16719501 0.44820699 0.82212299 0.750027 0.74639797 0.750027
		 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976 0.72881001
		 0.854976 0.82067102 0.730515 0.74785101 0.730515 0.74639797 0.750027 0.82212299 0.750027
		 0.32226601 0.39843801 0.29101601 0.39843801 0.32031301 0.40625 0.32031301 0.40429699
		 0.25781301 0.40429699 0.25390601 0.39843801 0.32617199 0.39843801 0.32031301 0.40625
		 0.29101601 0.40625 0.32421899 0.40234399 0.84970701 0.98624903 0.85143697 0.932338
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -5.59496689 0.50238299 5.67310905 -6.70120382 0.122388 6.30646801
		 -6.86391306 0.32297999 6.47885799 -6.95710993 1.31556594 4.45099306 -7.69282389 0.32297999 5.64994478
		 -7.52043486 0.122388 5.48723698 -4.7025919 1.66221297 4.97868013 -4.559268 0.83185202 4.81798792
		 -6.031914234 0.83185202 3.34540606 -6.19260502 1.66221297 3.48873091 -4.79446697 0.769104 4.74049902
		 -5.79144192 0.474096 5.45353317 -5.95471811 0.769104 3.58029008 -6.88707495 0.50238299 4.38100004
		 -6.69925117 0.145992 6.13057184 -6.55500317 0.001701 5.9863019 -7.20043802 0.001701 5.34084606
		 -5.7690568 0.19378801 5.43112612 -6.64525986 0.19378801 4.5549221 -5.93497705 0.494403 3.56054997
		 -4.77472687 0.494403 4.72075796 -7.34470701 0.145992 5.485116 -6.66766787 0.474096 4.57730818
		 -5.66495991 1.31556594 5.74316502;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 23 2 0 0 23 1 3 4 0 4 5 0 5 13 0
		 3 13 1 6 7 0 7 0 0 6 23 0 8 9 0 9 3 0 8 13 0 7 10 1 10 11 0 11 0 1 12 8 1 13 22 1
		 12 22 0 15 14 0 14 11 0 11 17 1 15 17 0 15 16 0 21 16 0 14 21 0 17 18 1 18 16 0 19 18 0
		 20 17 0 19 20 0 10 20 0 22 18 1 22 21 0 19 12 0 2 4 0 3 23 1 9 6 0 1 5 0 14 1 1 21 5 1
		 8 7 0 12 10 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 11 10 9
		f 4 13 -8 -13 -12
		mu 0 4 12 15 14 13
		f 4 9 -17 -16 -15
		mu 0 4 16 19 18 17
		f 4 19 -19 -14 -18
		mu 0 4 20 23 22 21
		f 4 23 -23 -22 -21
		mu 0 4 24 27 26 25
		f 4 26 25 -25 20
		mu 0 4 28 31 30 29
		f 4 -29 -28 -24 24
		mu 0 4 32 35 34 33
		f 4 31 30 27 -30
		mu 0 4 36 39 38 37
		f 4 -33 15 22 -31
		mu 0 4 40 43 42 41
		f 4 -35 33 28 -26
		mu 0 4 44 47 46 45
		f 4 29 -34 -20 -36
		mu 0 4 48 51 50 49
		f 4 -3 -38 4 -37
		mu 0 4 52 55 54 53
		f 4 -39 12 37 -11
		mu 0 4 56 13 58 57
		f 4 1 36 5 -40
		mu 0 4 59 62 61 60
		f 4 -41 21 16 0
		mu 0 4 63 65 18 64
		f 4 40 39 -42 -27
		mu 0 4 66 69 68 67
		f 4 41 6 18 34
		mu 0 4 70 72 22 71
		f 4 -43 11 38 8
		mu 0 4 73 75 13 74
		f 4 -44 17 42 14
		mu 0 4 76 79 78 77
		f 4 32 -32 35 43
		mu 0 4 80 83 82 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Front_Arm_Toe_2_Geo_parentConstraint1" -p "Right_Front_Arm_Toe_2_Geo";
	rename -uid "D9665173-405D-745A-A0F9-4086C5BFD5F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_MidFinger1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.8489329580510718 0.49135503877219822 4.0655259252015519 ;
	setAttr ".tg[0].tor" -type "double3" -110.65388553626755 -19.844180130171427 44.252818054969183 ;
	setAttr ".lr" -type "double3" 1.2722218725854067e-14 -1.5902773407317584e-14 -1.7655625192200638e-30 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 -8.8817841970012523e-16 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 -1.5902773407317584e-14 -1.7655625192200638e-30 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Front_Arm_Toe_3_Geo" -p "Right_Front_Arm_Geo";
	rename -uid "794D1E19-46C3-69DE-F8A1-E0A4955E5AC5";
createNode transform -n "Right_Front_Arm_Heel_to_Toe_Tip3_Geo" -p "Right_Front_Arm_Toe_3_Geo";
	rename -uid "89C0A822-45AE-5186-AB40-6A94EDEA8C17";
createNode mesh -n "Right_Front_Arm_Heel_to_Toe_Tip3_GeoShape" -p "Right_Front_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "07A4FE55-46E4-E6EB-0004-8EAA59E8249C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Heel_to_Toe_Tip3_GeoShapeOrig" -p "Right_Front_Arm_Heel_to_Toe_Tip3_Geo";
	rename -uid "69E70994-4C50-8456-354B-8CB863F58522";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.69780701 0.93968499
		 0.64248902 0.935516 0.649692 0.94568998 0.693349 0.94836199 0.64118397 0.98503202
		 0.61381 0.9892 0.61381 0.93251902 0.64118499 0.93668801 0.697806 0.988029 0.69334799
		 0.979352 0.649692 0.98202401 0.64248902 0.99219698 0.697806 0.988029 0.69780701 0.93968499
		 0.693349 0.94836199 0.69334799 0.979352 0.69334799 0.979352 0.693349 0.94836199 0.649692
		 0.94568998 0.649692 0.98202401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4.9306531 1.20556796 3.52869391 -5.066249847 0.95963699 3.12874794
		 -5.097455978 1.30235696 3.010938883 -4.95306015 1.42298102 3.44419003 -4.62646818 1.20521104 3.44714999
		 -4.70960712 0.95923799 3.033155918 -4.64887524 1.42262399 3.36262488 -4.7407918 1.30195796 2.91534591;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 4 6 0 6 7 0 7 5 0 3 6 0 2 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 -7 0 -6 -5
		mu 0 4 4 7 6 5
		f 4 4 -10 -9 -8
		mu 0 4 8 11 10 9
		f 4 7 -11 3 6
		mu 0 4 12 15 14 13
		f 4 8 -12 2 10
		mu 0 4 16 19 18 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Right_Front_Arm_Toe_Tip3_Geo" -p "Right_Front_Arm_Toe_3_Geo";
	rename -uid "9B5B620F-4631-7030-1BDB-498BA252CD6E";
createNode mesh -n "Right_Front_Arm_Toe_Tip3_GeoShape" -p "Right_Front_Arm_Toe_Tip3_Geo";
	rename -uid "AD5F2904-480A-2374-9944-2FA3A7E66F4E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "Right_Front_Arm_Toe_Tip3_GeoShapeOrig" -p "Right_Front_Arm_Toe_Tip3_Geo";
	rename -uid "8C8AD0C2-42B5-5E46-202E-74AFC12AC7EF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.88239098 0.83063501
		 0.84343898 0.75240302 0.82212299 0.750027 0.83970898 0.854976 0.72881001 0.854976
		 0.74639797 0.750027 0.72508198 0.75240302 0.68612802 0.83063501 0.85143697 0.932338
		 0.90570199 0.91825497 0.88239098 0.83063501 0.83970898 0.854976 0.23623601 0.406389
		 0.23741101 0.40507901 0.248547 0.45052999 0.247372 0.44820699 0.26073399 0.50628698
		 0.247372 0.44820699 0.248547 0.45052999 0.261794 0.50718498 0.153832 0.50628698 0.152189
		 0.50718498 0.164968 0.45052999 0.16719501 0.44820699 0.16719501 0.44820699 0.164968
		 0.45052999 0.17610399 0.40507901 0.178331 0.406389 0.82212299 0.750027 0.74639797
		 0.750027 0.72881001 0.854976 0.83970898 0.854976 0.85143697 0.932338 0.83970898 0.854976
		 0.72881001 0.854976 0.717085 0.93233401 0.82067102 0.730515 0.74785101 0.730515 0.74639797
		 0.750027 0.82212299 0.750027 0.66281903 0.91825199 0.717085 0.93233401 0.72881001
		 0.854976 0.68612802 0.83063501 0.29101601 0.40625 0.29101601 0.39843801 0.25585899
		 0.39843801 0.26171899 0.40234399 0.32226601 0.39843801 0.29101601 0.39843801 0.29101601
		 0.40625 0.32031301 0.40625 0.32031301 0.40429699 0.25781301 0.40429699 0.25390601
		 0.39843801 0.32617199 0.39843801 0.29101601 0.39843801 0.29101601 0.40625 0.26171899
		 0.40234399 0.25585899 0.39453101 0.32031301 0.40625 0.29101601 0.40625 0.29101601
		 0.39843801 0.32421899 0.40234399 0.178331 0.406389 0.23623601 0.406389 0.247372 0.44820699
		 0.16719501 0.44820699 0.23741101 0.40507901 0.23623601 0.406389 0.178331 0.406389
		 0.17610399 0.40507901 0.84970701 0.98624903 0.85143697 0.932338 0.717085 0.93233401
		 0.71881098 0.98624498 0.328125 0.39648399 0.33007801 0.40429699 0.25585899 0.40429699
		 0.25976601 0.39648399 0.261794 0.50718498 0.152189 0.50718498 0.153832 0.50628698
		 0.26073399 0.50628698 0.247372 0.44820699 0.26073399 0.50628698 0.153832 0.50628698
		 0.16719501 0.44820699;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -5.85041094 0.70742702 2.42455602 -5.86660814 0.15760501 1.31764221
		 -5.88485718 0.248367 1.2710222 -4.43022299 1.12881303 1.85493004 -4.94378424 0.24729601 1.018770218
		 -4.93649721 0.156555 1.068309188 -5.75271893 1.45960498 3.23519707 -5.70099497 1.024863005 3.39057708
		 -5.66681433 0.026292 1.6686362 -5.74146938 0.18849599 1.38940024 -5.61008692 0.68529302 2.37678099
		 -5.60676908 0.27190799 2.39093399 -5.51688814 0.63075602 3.36928201 -4.19966412 0.62924403 3.016166925
		 -4.22868586 0.961128 2.90646291 -4.61531687 0.68415898 2.11012197 -4.61197805 0.27077401 2.1242969
		 -5.0086741447 0.187677 1.19298625 -4.93401957 0.025451999 1.47222316 -5.8972621 1.13049304 2.24815607
		 -4.029101849 1.022951961 2.94237304 -4.061106205 1.45767295 2.78172302 -4.38345623 0.70574701 2.031330109
		 -5.54591084 0.96261901 3.25957894;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 19 2 0 0 19 1 3 4 0 4 5 0 5 22 0
		 3 22 1 6 7 0 7 0 0 6 19 0 8 9 0 9 10 0 10 11 1 11 8 0 12 11 0 10 23 0 23 12 0 13 14 0
		 14 15 0 15 16 1 16 13 0 15 17 0 17 18 0 18 16 0 2 4 0 3 19 1 21 3 0 21 6 0 1 5 0
		 20 21 0 22 20 0 10 0 1 7 23 1 9 1 1 9 17 0 17 5 1 22 15 1 20 14 1 18 8 0 11 16 1
		 20 7 0 14 23 0 13 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 3 2 -2 -1
		mu 0 4 0 3 2 1
		f 4 7 -7 -6 -5
		mu 0 4 4 7 6 5
		f 4 10 -4 -10 -9
		mu 0 4 8 11 10 9
		f 4 -15 -14 -13 -12
		mu 0 4 12 15 14 13
		f 4 -18 -17 13 -16
		mu 0 4 16 19 18 17
		f 4 -22 -21 -20 -19
		mu 0 4 20 23 22 21
		f 4 -25 -24 -23 20
		mu 0 4 24 27 26 25
		f 4 -3 -27 4 -26
		mu 0 4 28 31 30 29
		f 4 -29 27 26 -11
		mu 0 4 32 35 34 33
		f 4 1 25 5 -30
		mu 0 4 36 39 38 37
		f 4 -32 -8 -28 -31
		mu 0 4 40 43 42 41
		f 4 16 -34 9 -33
		mu 0 4 44 47 46 45
		f 4 -35 12 32 0
		mu 0 4 48 51 50 49
		f 4 34 29 -37 -36
		mu 0 4 52 55 54 53
		f 4 31 38 19 -38
		mu 0 4 56 59 58 57
		f 4 36 6 37 22
		mu 0 4 60 63 62 61
		f 4 24 -41 14 -40
		mu 0 4 64 67 66 65
		f 4 35 23 39 11
		mu 0 4 68 71 70 69
		f 4 -42 30 28 8
		mu 0 4 72 75 74 73
		f 4 -43 -39 41 33
		mu 0 4 76 79 78 77
		f 4 17 -44 18 42
		mu 0 4 80 83 82 81
		f 4 40 21 43 15
		mu 0 4 84 87 86 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Right_Front_Arm_Toe_3_Geo_parentConstraint1" -p "Right_Front_Arm_Toe_3_Geo";
	rename -uid "0634A891-4E91-D040-F5E3-6A9D19026AA1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Pinky1_IK_JntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.5816621623626115 -5.2264152023000223 -0.16228984834476901 ;
	setAttr ".tg[0].tor" -type "double3" -57.686568492176846 -6.4959960963338395 -79.610464927371737 ;
	setAttr ".lr" -type "double3" 3.1805546814635152e-15 -1.2722218725854067e-14 1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 0 2.2204460492503131e-16 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -3.5311250384401269e-31 -6.3611093629270335e-15 
		6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Controls" -p "Spider_Rig";
	rename -uid "F1321ECB-45F8-E549-7201-EA8ABF772E63";
createNode transform -n "Master_Ctrl_Grp" -p "Controls";
	rename -uid "3C5C6858-4BEB-D47F-4E46-E79323B98020";
createNode transform -n "Master_Ctrl" -p "Master_Ctrl_Grp";
	rename -uid "F20D30C8-4A6B-C68A-7193-B2BE755A3E4B";
createNode nurbsCurve -n "Master_CtrlShape" -p "Master_Ctrl";
	rename -uid "8CAA8091-41F4-C272-1E70-478657D1D218";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 9.9867532402025567 6.1151226947442422e-16 
		-9.9867532402025567 1.7871737649188021e-16 1.7871737649188021e-16 -2.9186762520640284 
		-9.9867532402025567 6.1151226947442432e-16 -9.9867532402025567 -2.9186762520640466 
		-5.2750680213217292e-32 1.1140417106929947e-14 -9.9867532402025567 -6.1151226947442422e-16 
		9.9867532402025567 -2.923657963433446e-16 -1.7871737649188031e-16 2.9186762520640559 
		9.9867532402025567 -6.1151226947442432e-16 9.9867532402025567 2.9186762520640466 
		-8.6387046100734861e-32 1.168974064921065e-14 0 0 0 0 0 0 0 0 0;
createNode transform -n "Root_Ctrl_Grp" -p "Master_Ctrl";
	rename -uid "1B93FBB5-4A15-755F-44FC-F092F37CDD9D";
	setAttr ".t" -type "double3" -2.6783009738613566e-16 11.740900039672852 0 ;
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
createNode transform -n "Root_Ctrl" -p "Root_Ctrl_Grp";
	rename -uid "CEAA437F-4715-A570-31C5-DA99E6880720";
createNode nurbsCurve -n "Root_CtrlShape" -p "Root_Ctrl";
	rename -uid "DBC9C23C-4462-1F4B-B41A-F1936D3E15D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.5583275728225728e-16 5.5275888318129027 -5.5275888318129027
		-1.2654757507925407e-16 2.5692135843344387e-16 -2.0666787381857614
		-4.5583275728225728e-16 -5.5275888318129027 -5.5275888318129027
		2.2791637864112864e-16 -2.0666787381857694 5.2556780578531448e-15
		4.5583275728225728e-16 -5.5275888318129027 5.5275888318129027
		1.2654757507925422e-16 -7.6646839316187388e-17 2.0666787381857747
		4.5583275728225728e-16 5.5275888318129027 5.5275888318129027
		-2.2791637864112864e-16 2.0666787381857694 5.6446472984167684e-15
		-4.5583275728225728e-16 5.5275888318129027 -5.5275888318129027
		-1.2654757507925407e-16 2.5692135843344387e-16 -2.0666787381857614
		-4.5583275728225728e-16 -5.5275888318129027 -5.5275888318129027
		;
createNode transform -n "Right_Back_Arm_IK_Master_Ctrl_Grp" -p "Root_Ctrl";
	rename -uid "9BD1E7A4-435C-A9D4-A9EF-9A80ACBB35C8";
	setAttr ".t" -type "double3" 11.740900039672852 -2.3391734133873071e-15 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "Right_Back_Arm_Wrist_IK_CTRL_Grp" -p "Right_Back_Arm_IK_Master_Ctrl_Grp";
	rename -uid "65A2102B-40FC-952A-CE03-E08E8DC26529";
	setAttr ".t" -type "double3" -4.3257112503051758 1.4079506397247314 -5.923192024230957 ;
createNode transform -n "Right_Back_Arm_Wrist_IK_CTRL" -p "Right_Back_Arm_Wrist_IK_CTRL_Grp";
	rename -uid "95BD0133-45B7-C57F-D03F-4D9F2F067C61";
createNode nurbsCurve -n "Right_Back_Arm_Wrist_IK_CTRLShape" -p "Right_Back_Arm_Wrist_IK_CTRL";
	rename -uid "289F3E91-46BD-AC6B-5123-35B019911C85";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824479
		2.2163883751087767 -2.2204460492503131e-16 2.6584414664283103e-16
		1.5672232497824501 1.8318679906315083e-15 1.5672232497824512
		5.5898717460055905e-16 -6.9486850108352546e-16 2.2163883751087772
		-1.5672232497824485 -3.8857805861880479e-16 1.567223249782449
		-2.2163883751087758 -2.2204460492503131e-16 4.7854117548084678e-16
		-1.5672232497824492 7.7715611723760958e-16 -1.5672232497824479
		1.4184110969407092e-16 -4.7282389615849415e-16 -2.2163883751087763
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824479
		2.2163883751087767 -2.2204460492503131e-16 2.6584414664283103e-16
		1.5672232497824501 1.8318679906315083e-15 1.5672232497824512
		;
createNode ikHandle -n "Right_Back_Arm_IK_Handle" -p "Right_Back_Arm_Wrist_IK_CTRL";
	rename -uid "1EFF4E02-49E4-2A24-7B9A-C086CF9E7E04";
	setAttr ".t" -type "double3" -0.066778749694800688 -2.0639724734650144e-05 0.011834592514025744 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Right_Back_Arm_IK_Handle_poleVectorConstraint1" 
		-p "Right_Back_Arm_IK_Handle";
	rename -uid "84632FF7-418D-E30D-1C66-5993ED8A9328";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Back_Arm_Elbow_IK_CTRLW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -7.5235976585626254 0.24803067964869285 -7.6929782254477939 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Back_Arm_Toe_1_Ctrl_Grp" -p "Right_Back_Arm_Wrist_IK_CTRL";
	rename -uid "56A8B915-4C38-8EB0-0C3E-2C81B30A745D";
	setAttr ".t" -type "double3" 0.0056428213174877229 -0.061047987569208928 0.43906690387072267 ;
	setAttr ".r" -type "double3" 157.59477817022625 49.336298159538039 76.073426279257987 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "Right_Back_Arm_Toe_1_Ctrl" -p "Right_Back_Arm_Toe_1_Ctrl_Grp";
	rename -uid "A881DF05-487D-C9D5-828B-FBA8AA43B15F";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
createNode nurbsCurve -n "Right_Back_Arm_Toe_1_CtrlShape" -p "Right_Back_Arm_Toe_1_Ctrl";
	rename -uid "05640FEF-4895-1B27-9EE4-E0B4D116E200";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.7098474388649847 -0.75910854876134759 -0.34579530657514512
		-2.8746421813965464 0.017933122521078815 -0.44262293519065565
		-2.7313062255378044 0.80725919294617143 -0.31613814355931247
		-2.3638038302551081 1.1464931555935713 -0.040434007184828147
		-1.9874129145004558 0.83691635596200464 0.22298573004699057
		-1.8226181719688954 0.05987468467957946 0.31981335866250021
		-1.9659541278276351 -0.72945138574551449 0.19332856703115858
		-2.3334565231103328 -1.0686853483929155 -0.082375569343326793
		-2.7098474388649847 -0.75910854876134759 -0.34579530657514512
		-2.8746421813965464 0.017933122521078815 -0.44262293519065565
		-2.7313062255378044 0.80725919294617143 -0.31613814355931247
		;
createNode transform -n "Right_Back_Arm_Toe_2_Ctrl_Grp" -p "Right_Back_Arm_Wrist_IK_CTRL";
	rename -uid "381C265F-49DB-B550-7FF0-639767A2F8E6";
	setAttr ".t" -type "double3" -0.19031775643929016 -0.014203662500014147 -0.17326571266545709 ;
	setAttr ".r" -type "double3" 64.455758258863511 -45.221111839537464 41.361390918815161 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "Right_Back_Arm_Toe_2_Ctrl" -p "Right_Back_Arm_Toe_2_Ctrl_Grp";
	rename -uid "6D4C12DB-41A8-A70A-2694-AC87A363CD63";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
createNode nurbsCurve -n "Right_Back_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl";
	rename -uid "B977366B-4B90-38EA-E1E5-F2965D5D284C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.1537939528725474 -0.65341714524000771 -0.13306616621500189
		-3.2776105507969948 0.13829336591420405 -0.22756914946169782
		-3.1307953337723431 0.91230175695559002 -0.17580286467413742
		-2.7993506647688897 1.2152044098026873 -0.0080912994072084299
		-2.4774323357125887 0.86956505849645271 0.17732238597254679
		-2.3536157377881439 0.07785454734224273 0.27182536921924183
		-2.500430954812793 -0.69615384369914546 0.22005908443168276
		-2.831875623816249 -0.99905649654624273 0.052347519164752443
		-3.1537939528725474 -0.65341714524000771 -0.13306616621500189
		-3.2776105507969948 0.13829336591420405 -0.22756914946169782
		-3.1307953337723431 0.91230175695559002 -0.17580286467413742
		;
createNode transform -n "Right_Back_Arm_Toe_3_Ctrl_Grp" -p "Right_Back_Arm_Wrist_IK_CTRL";
	rename -uid "4076A438-4175-DC0C-AC48-3491E8E1D9DF";
	setAttr ".t" -type "double3" 0.23079931588428426 -0.030882505803789151 0.15554670024450346 ;
	setAttr ".r" -type "double3" -86.573810132306775 -10.699104561362969 149.82305126168416 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "Right_Back_Arm_Toe_2_Ctrl" -p "Right_Back_Arm_Toe_3_Ctrl_Grp";
	rename -uid "56FD416F-4144-AFC8-C1C7-57AA3D2BC685";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
createNode nurbsCurve -n "Right_Back_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl";
	rename -uid "B24854EA-4E58-29CA-3D83-C5A6EB556969";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.7068221335938958 0.82174667517701616 -0.2947336453087312
		-2.853824201032082 0.037497613235804687 -0.39200023960759472
		-2.7048181848262152 -0.74546788499165872 -0.29783244223462996
		-2.3470897883945043 -1.0684992495139363 -0.067392471752117211
		-1.9901914547206692 -0.74236908806576096 0.16433106244414236
		-1.8431893872824807 0.04187997387544961 0.26159765674300722
		-1.9921954034883476 0.82484547210291304 0.16742985937004257
		-2.34992379992006 1.1478768366251897 -0.063010111112471401
		-2.7068221335938958 0.82174667517701616 -0.2947336453087312
		-2.853824201032082 0.037497613235804687 -0.39200023960759472
		-2.7048181848262152 -0.74546788499165872 -0.29783244223462996
		;
createNode parentConstraint -n "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1" -p
		 "Right_Back_Arm_Wrist_IK_CTRL";
	rename -uid "6810D485-4803-096F-F897-9DA3050C6B97";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AllFeet_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.3257112503051758 1.4079506397247314 -5.9231920242309579 ;
	setAttr ".rst" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Back_Arm_Shoulder_IK_CTRL_Grp" -p "Right_Back_Arm_IK_Master_Ctrl_Grp";
	rename -uid "7088B625-4EAF-C9FC-644F-CE96249C3AB4";
	setAttr ".t" -type "double3" -1.7922199964523315 12.401053428649902 -1.6412436962127686 ;
createNode transform -n "Right_Back_Arm_Shoulder_IK_CTRL" -p "Right_Back_Arm_Shoulder_IK_CTRL_Grp";
	rename -uid "97554E10-4194-3F87-181A-DA9AA7F6A504";
createNode nurbsCurve -n "Right_Back_Arm_Shoulder_IK_CTRLShape" -p "Right_Back_Arm_Shoulder_IK_CTRL";
	rename -uid "8AB602B5-46D6-49F2-3900-DFA79741420C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.5540970937771944 -0.78361162489122549 -0.55409709377719274
		5.2693013523768787e-16 -1.1081941875543881 6.2293644725586034e-16
		-0.55409709377719363 -0.78361162489122504 0.55409709377719629
		-0.78361162489122504 -2.7949358730027953e-16 0.78361162489122604
		-0.55409709377719385 0.78361162489122416 0.55409709377719496
		3.7653062380809622e-16 1.1081941875543879 6.2293644725586054e-16
		0.5540970937771944 0.7836116248912246 -0.55409709377719274
		0.78361162489122482 -7.0920554847035433e-17 -0.78361162489122371
		0.5540970937771944 -0.78361162489122549 -0.55409709377719274
		5.2693013523768787e-16 -1.1081941875543881 6.2293644725586034e-16
		-0.55409709377719363 -0.78361162489122504 0.55409709377719629
		;
createNode transform -n "Right_Back_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp" -p "Right_Back_Arm_IK_Master_Ctrl_Grp";
	rename -uid "0F5741EB-49AD-386D-B5C3-1D9AA81E0D88";
	setAttr ".t" -type "double3" -4.444625091252222 11.570116123333827 -4.5515087115713833 ;
	setAttr ".r" -type "double3" 45.376289143945549 -9.8912855573136191 87.132418496311004 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Right_Back_Arm_Elbow_IK_PV_CTRL_Offset_Grp" -p "Right_Back_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp";
	rename -uid "61512EC5-454F-04C6-C296-36808570E3C4";
createNode transform -n "Right_Back_Arm_Elbow_IK_CTRL" -p "Right_Back_Arm_Elbow_IK_PV_CTRL_Offset_Grp";
	rename -uid "DFFF95E6-4D2A-A8D6-1122-81BCA190BFFA";
	setAttr ".t" -type "double3" 0 -2.2204460492503131e-16 -6.9113798059595215 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode nurbsCurve -n "Right_Back_Arm_Elbow_IK_CTRLShape" -p "Right_Back_Arm_Elbow_IK_CTRL";
	rename -uid "AE847F78-4465-AC52-35DB-72A6DF68FAB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.75691070626277479 -0.78361162489122549 -0.20281361248558058
		-3.7541621294575304e-16 -1.1081941875543881 4.0371676646906517e-16
		-0.75691070626277679 -0.78361162489122504 0.20281361248558324
		-1.0704333863022171 -2.7949358730027953e-16 0.28682176141099125
		-0.75691070626277646 0.78361162489122416 0.20281361248558194
		-5.0566601056054752e-16 1.1081941875543879 3.2851701075426956e-16
		0.75691070626277479 0.7836116248912246 -0.20281361248558058
		1.0704333863022144 -7.0920554847035433e-17 -0.28682176141099003
		0.75691070626277479 -0.78361162489122549 -0.20281361248558058
		-3.7541621294575304e-16 -1.1081941875543881 4.0371676646906517e-16
		-0.75691070626277679 -0.78361162489122504 0.20281361248558324
		;
createNode transform -n "Right_Middle_Arm_IK_Master_Ctrl_Grp" -p "Root_Ctrl";
	rename -uid "1FA613E9-40F4-24C7-3EB1-0F957EFF119D";
	setAttr ".t" -type "double3" 11.740900039672852 -2.3391734133873071e-15 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "Right_Middle_Arm_Wrist_IK_CTRL_Grp" -p "Right_Middle_Arm_IK_Master_Ctrl_Grp";
	rename -uid "2DF80A7D-46B4-6AB8-76CC-3BACCB886325";
	setAttr ".t" -type "double3" -7.6526098251342773 1.3593469858169556 -0.079094342887401581 ;
createNode transform -n "Right_Middle_Arm_Wrist_IK_CTRL" -p "Right_Middle_Arm_Wrist_IK_CTRL_Grp";
	rename -uid "3A41A2A3-4387-22F7-98C4-9D9C0E1E5AF3";
createNode nurbsCurve -n "Right_Middle_Arm_Wrist_IK_CTRLShape" -p "Right_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "6C74556B-4E8C-1675-7463-E992B32A5B3B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824481
		2.2163883751087767 -2.2204460492503131e-16 4.3799541717799719e-17
		1.5672232497824501 1.8318679906315083e-15 1.567223249782451
		5.5898717460055905e-16 -6.9486850108352546e-16 2.2163883751087772
		-1.5672232497824485 -3.8857805861880479e-16 1.5672232497824488
		-2.2163883751087758 -2.2204460492503131e-16 2.5649657055581547e-16
		-1.5672232497824492 7.7715611723760958e-16 -1.5672232497824481
		1.4184110969407092e-16 -4.7282389615849415e-16 -2.2163883751087763
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824481
		2.2163883751087767 -2.2204460492503131e-16 4.3799541717799719e-17
		1.5672232497824501 1.8318679906315083e-15 1.567223249782451
		;
createNode ikHandle -n "Right_Middle_Arm_IK_Handle" -p "Right_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "9D8D61AE-4E12-3D8F-3BFF-9BB6F265C43A";
	setAttr ".t" -type "double3" -1.7486572456704153e-07 -2.6985816958813302e-05 0.041689911170481167 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Right_Middle_Arm_IK_Handle_poleVectorConstraint1" 
		-p "Right_Middle_Arm_IK_Handle";
	rename -uid "C76A5986-468D-B05F-CC03-6B8FC180ACE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Middle_Arm_Elbow_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -11.267964372402854 1.389325249575279 -0.040684906258609821 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Middle_Arm_Toe_1_Ctrl_Grp" -p "Right_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "049193CB-487D-FC7C-6299-6E9EEF684266";
	setAttr ".t" -type "double3" 0.22800824541779185 -0.046995149761807742 0.24392941041942828 ;
	setAttr ".r" -type "double3" -127.60511365089216 40.302616911356935 130.4016754317347 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Right_Middle_Arm_Toe_1_Ctrl" -p "Right_Middle_Arm_Toe_1_Ctrl_Grp";
	rename -uid "CA722F82-4E4B-9607-E835-C7BFBAF44879";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
createNode nurbsCurve -n "Right_Middle_Arm_Toe_1_CtrlShape" -p "Right_Middle_Arm_Toe_1_Ctrl";
	rename -uid "4C2C7813-4C1A-F792-3E32-C5A79D5FB6D9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6426583462295432 -0.7980119725856557 -0.28438715955200433
		-2.8074530887611049 -0.020970301303229674 -0.38121478816751453
		-2.664117132902363 0.76835576912186287 -0.25472999653617145
		-2.2966147376196666 1.1075897317692631 0.020974139838312728
		-1.9202238218650143 0.79801293213769597 0.28439387707013175
		-1.7554290793334539 0.020971260855271026 0.3812215056856415
		-1.8987650351921936 -0.76835480956982261 0.25473671405429976
		-2.2662674304748913 -1.1075887722172242 -0.020967422320185919
		-2.6426583462295432 -0.7980119725856557 -0.28438715955200433
		-2.8074530887611049 -0.020970301303229674 -0.38121478816751453
		-2.664117132902363 0.76835576912186287 -0.25472999653617145
		;
createNode transform -n "Right_Middle_Arm_Toe_2_Ctrl_Grp" -p "Right_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "A3C55AD0-4C4C-8116-DB41-0A88A0CC2520";
	setAttr ".t" -type "double3" -0.3076374822899357 -0.015088960794817918 -0.018302290743990979 ;
	setAttr ".r" -type "double3" 91.28670594944731 0.61063289237032869 27.672003648584447 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "Right_Middle_Arm_Toe_2_Ctrl" -p "Right_Middle_Arm_Toe_2_Ctrl_Grp";
	rename -uid "B911BEFF-4FC4-C6D9-6607-FDBC1C27E8B2";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
createNode nurbsCurve -n "Right_Middle_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl";
	rename -uid "FA73864A-4400-B019-56C3-9B884E8494F2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.1870438054110797 -0.76149153904429712 -0.15518855299411466
		-3.3108604033355271 0.030218972109915511 -0.24969153624081114
		-3.1640451863108754 0.80422736315130083 -0.19792525145325018
		-2.8326005173074225 1.1071300159983983 -0.030213686186321208
		-2.5106821882511219 0.76149066469216353 0.15519999919343397
		-2.3868655903266771 -0.030219846462045813 0.24970298244012901
		-2.5336808073513262 -0.80422823750343442 0.19793669765256994
		-2.8651254763547818 -1.1071308903505319 0.030225132385639165
		-3.1870438054110797 -0.76149153904429712 -0.15518855299411466
		-3.3108604033355271 0.030218972109915511 -0.24969153624081114
		-3.1640451863108754 0.80422736315130083 -0.19792525145325018
		;
createNode transform -n "Right_Middle_Arm_Toe_3_Ctrl_Grp" -p "Right_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "8CDC114E-496C-F349-209B-03BED6673D84";
	setAttr ".t" -type "double3" 0.22271273690585236 -0.041091653450017196 -0.11823528416288009 ;
	setAttr ".r" -type "double3" -43.248862668793535 -47.337865645765064 124.41439813410317 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "Right_Middle_Arm_Toe_2_Ctrl" -p "Right_Middle_Arm_Toe_3_Ctrl_Grp";
	rename -uid "84CC70B8-484C-DC74-4BE7-219ED5853B6F";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
createNode nurbsCurve -n "Right_Middle_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl";
	rename -uid "26BECB2B-4F39-26F7-4AFF-65934DCA1AB4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6414748598878193 0.78205160210217606 -0.22952989740273139
		-2.7884769273260051 -0.0021974598390357533 -0.32679649170159514
		-2.6394709111201382 -0.78516295806649927 -0.23262869432863004
		-2.2817425146884274 -1.1081943225887767 -0.0021887238461176326
		-1.9248441810145926 -0.78206416114060173 0.22953481035014178
		-1.7778421135764042 0.0021849008006091688 0.32680140464900664
		-1.926848129782271 0.78515039902807249 0.23263360727604199
		-2.284576526213983 1.1081817635503497 0.0021936367935281777
		-2.6414748598878193 0.78205160210217606 -0.22952989740273139
		-2.7884769273260051 -0.0021974598390357533 -0.32679649170159514
		-2.6394709111201382 -0.78516295806649927 -0.23262869432863004
		;
createNode parentConstraint -n "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1" 
		-p "Right_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "EE968168-440C-1336-CA6B-AB8E48DC2B41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AllFeet_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.6526098251342773 1.3593469858169556 -0.079094342887401581 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Middle_Arm_Shoulder_IK_CTRL_Grp" -p "Right_Middle_Arm_IK_Master_Ctrl_Grp";
	rename -uid "7A0C5745-4736-3753-91B0-5C8C285955F0";
	setAttr ".t" -type "double3" -1.7922199964523315 11.230008125305176 0.032039523124694824 ;
createNode transform -n "Right_Middle_Arm_Shoulder_IK_CTRL" -p "Right_Middle_Arm_Shoulder_IK_CTRL_Grp";
	rename -uid "D551CEA6-49B1-21A7-B7AB-71ADFDB49C63";
createNode nurbsCurve -n "Right_Middle_Arm_Shoulder_IK_CTRLShape" -p "Right_Middle_Arm_Shoulder_IK_CTRL";
	rename -uid "77B2AC3E-4EE4-E559-0939-2D874BE7F314";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2204460492503131e-16 -0.78361162489122727 -0.78361162489122393
		-2.2204460492503131e-16 -1.1081941875543908 1.3877787807814457e-16
		6.6613381477509392e-16 -0.78361162489122727 0.7836116248912256
		-4.4408920985006262e-16 -1.7763568394002505e-15 1.1081941875543886
		-6.6613381477509392e-16 0.78361162489122194 0.78361162489122449
		-4.4408920985006262e-16 1.1081941875543855 2.4286128663675299e-16
		2.2204460492503131e-16 0.78361162489122371 -0.78361162489122393
		-4.4408920985006262e-16 -1.7763568394002505e-15 -1.1081941875543881
		2.2204460492503131e-16 -0.78361162489122727 -0.78361162489122393
		-2.2204460492503131e-16 -1.1081941875543908 1.3877787807814457e-16
		6.6613381477509392e-16 -0.78361162489122727 0.7836116248912256
		;
createNode transform -n "Right_Middle_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp" -p "Right_Middle_Arm_IK_Master_Ctrl_Grp";
	rename -uid "56CF380C-4110-20EE-4E8C-C99CB6A0B6C4";
	setAttr ".t" -type "double3" -5.93562 11.401100000000001 -0.046535431716919151 ;
	setAttr ".r" -type "double3" 90.300350539802196 0.051355794423591276 80.29713470671858 ;
createNode transform -n "Right_Middle_Arm_Elbow_IK_PV_CTRL_Offset_Grp" -p "Right_Middle_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp";
	rename -uid "6C9EFC32-4846-BD90-29A0-708603926CF1";
	setAttr ".t" -type "double3" 0 0 -7.2280651570401977 ;
createNode transform -n "Right_Middle_Arm_Elbow_IK_CTRL" -p "Right_Middle_Arm_Elbow_IK_PV_CTRL_Offset_Grp";
	rename -uid "56F8A7EA-4BA5-ACC1-53D3-AD84CA1BC0B1";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.3877787807814457e-17 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode nurbsCurve -n "Right_Middle_Arm_Elbow_IK_CTRLShape" -p "Right_Middle_Arm_Elbow_IK_CTRL";
	rename -uid "5B5F90CC-434C-BFE5-F939-1C9573D0601B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122393 -0.78361162489122727 1.3877787807814457e-16
		-1.3877787807814459e-16 -1.1081941875543908 -2.2204460492503131e-16
		-0.7836116248912256 -0.78361162489122727 6.106226635438361e-16
		-1.1081941875543888 -1.7763568394002505e-15 -6.106226635438361e-16
		-0.7836116248912246 0.78361162489122194 -6.6613381477509392e-16
		-2.4286128663675309e-16 1.1081941875543855 -4.4408920985006262e-16
		0.78361162489122393 0.78361162489122371 1.3877787807814457e-16
		1.1081941875543881 -1.7763568394002505e-15 -6.6613381477509392e-16
		0.78361162489122393 -0.78361162489122727 1.3877787807814457e-16
		-1.3877787807814459e-16 -1.1081941875543908 -2.2204460492503131e-16
		-0.7836116248912256 -0.78361162489122727 6.106226635438361e-16
		;
createNode transform -n "Right_Front_Arm_IK_Master_Ctrl_Grp" -p "Root_Ctrl";
	rename -uid "3C923350-4696-B764-151E-86BE9FA1038F";
	setAttr ".t" -type "double3" 11.740900039672852 -2.3391734133873071e-15 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "Right_Front_Arm_Wrist_IK_CTRL_Grp" -p "Right_Front_Arm_IK_Master_Ctrl_Grp";
	rename -uid "82C45DBC-453F-2138-B24A-6F93403B074F";
	setAttr ".t" -type "double3" -7.6526098251342773 1.3593469858169556 -0.079094342887401581 ;
createNode transform -n "Right_Front_Arm_Wrist_IK_CTRL" -p "Right_Front_Arm_Wrist_IK_CTRL_Grp";
	rename -uid "83E724C7-4F6B-EB07-EBC9-C2BA52B2D87D";
createNode nurbsCurve -n "Right_Front_Arm_Wrist_IK_CTRLShape" -p "Right_Front_Arm_Wrist_IK_CTRL";
	rename -uid "FA6E4A20-4C1D-D485-0104-A9AF38C6475B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824479
		2.2163883751087767 -2.2204460492503131e-16 2.6584414664283103e-16
		1.5672232497824501 1.8318679906315083e-15 1.5672232497824512
		5.5898717460055905e-16 -6.9486850108352546e-16 2.2163883751087772
		-1.5672232497824485 -3.8857805861880479e-16 1.567223249782449
		-2.2163883751087758 -2.2204460492503131e-16 4.7854117548084678e-16
		-1.5672232497824492 7.7715611723760958e-16 -1.5672232497824479
		1.4184110969407092e-16 -4.7282389615849415e-16 -2.2163883751087763
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824479
		2.2163883751087767 -2.2204460492503131e-16 2.6584414664283103e-16
		1.5672232497824501 1.8318679906315083e-15 1.5672232497824512
		;
createNode ikHandle -n "Right_Front_Arm_IK_Handle" -p "Right_Front_Arm_Wrist_IK_CTRL";
	rename -uid "8DEA2480-452E-821B-8519-FD86EED2A2CB";
	setAttr ".t" -type "double3" 1.2763433154816539e-07 -3.7009522557696073e-08 1.7877976254965233e-07 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Right_Front_Arm_IK_Handle_poleVectorConstraint1" 
		-p "Right_Front_Arm_IK_Handle";
	rename -uid "4C66598A-48D1-D0E8-BE7F-A18835D2A8FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Right_Front_Arm_Shoulder_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -7.9752081784102566 2.5155600765084145 7.167382945077005 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Front_Arm_Toe_1_Ctrl_Grp" -p "Right_Front_Arm_Wrist_IK_CTRL";
	rename -uid "B1C4888A-47A0-B2AB-FDAF-2EA86EE0DDFD";
	setAttr ".t" -type "double3" 0.30452393909049746 -0.047891151981452662 0.0080076103492965345 ;
	setAttr ".r" -type "double3" -98.73443910205593 9.6740108870319901 143.52319123029028 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Right_Front_Arm_Toe_1_Ctrl" -p "Right_Front_Arm_Toe_1_Ctrl_Grp";
	rename -uid "50113DC2-4DBB-87D6-5C15-EC9618C81F23";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
createNode nurbsCurve -n "Right_Front_Arm_Toe_1_CtrlShape" -p "Right_Front_Arm_Toe_1_Ctrl";
	rename -uid "DB5AA57C-452D-68A5-411B-ABBF612BC48A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.6828480616002102 -0.84427244452756223 -0.31507529078567698
		-2.8476428041317718 -0.067230773245136252 -0.41190291940118706
		-2.7043068482730299 0.72209529717995613 -0.2854181277698441
		-2.3368044529903331 1.0613292598273569 -0.0097139913953600259
		-1.9604135372356803 0.75175246019578945 0.25370574583645894
		-1.79561879470412 -0.025289211086635614 0.35053337445196858
		-1.9389547505628597 -0.81461528151172935 0.22404858282062692
		-2.3064571458455578 -1.1538492441591306 -0.051655553553858674
		-2.6828480616002102 -0.84427244452756223 -0.31507529078567698
		-2.8476428041317718 -0.067230773245136252 -0.41190291940118706
		-2.7043068482730299 0.72209529717995613 -0.2854181277698441
		;
createNode transform -n "Right_Front_Arm_Toe_2_Ctrl_Grp" -p "Right_Front_Arm_Wrist_IK_CTRL";
	rename -uid "F42A66DF-46BA-D5A7-0505-52BC7B8EE93B";
	setAttr ".t" -type "double3" -0.27454305134804002 -0.017280561245128778 0.15098702327027169 ;
	setAttr ".r" -type "double3" 113.75654910772383 34.556043595742878 35.108452014865335 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "Right_Front_Arm_Toe_2_Ctrl" -p "Right_Front_Arm_Toe_2_Ctrl_Grp";
	rename -uid "A14D56EE-4DF1-7EAB-54A4-0B94E802552C";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
createNode nurbsCurve -n "Right_Front_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl";
	rename -uid "C645635B-4AC1-115A-28C2-2ABEFB5B7A93";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.3355692492910647 -0.53317301427994279 -0.30503252549466775
		-3.4593858472155112 0.25853749687426897 -0.3995355087413639
		-3.3125706301908595 1.0325458879156553 -0.34776922395380327
		-2.9811259611874066 1.3354485407627521 -0.18005765868687429
		-2.659207632131106 0.98980918945651786 0.0053560266928807665
		-2.5353910342066603 0.19809867830230779 0.09985900993957611
		-2.6822062512313094 -0.57590971273908054 0.048092725152016735
		-3.013650920234765 -0.87881236558617803 -0.11961884011491358
		-3.3355692492910647 -0.53317301427994279 -0.30503252549466775
		-3.4593858472155112 0.25853749687426897 -0.3995355087413639
		-3.3125706301908595 1.0325458879156553 -0.34776922395380327
		;
createNode transform -n "Right_Front_Arm_Toe_3_Ctrl_Grp" -p "Right_Front_Arm_Wrist_IK_CTRL";
	rename -uid "8943CCE7-41BB-5B33-5816-008D07C056D3";
	setAttr ".t" -type "double3" 0.068196685768654675 -0.036152127897132402 -0.26627907680649976 ;
	setAttr ".r" -type "double3" 21.750080815831073 -55.122238664484939 71.73881643393122 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Right_Front_Arm_Toe_2_Ctrl" -p "Right_Front_Arm_Toe_3_Ctrl_Grp";
	rename -uid "E71A5FE3-49F5-62E7-3B02-0F9DFEE115D2";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
createNode nurbsCurve -n "Right_Front_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl";
	rename -uid "801F5044-4681-58E2-8E2E-039F9E779B0A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.5885401077917729 1.051316976811036 -0.17281135452316865
		-2.7355421752299591 0.26706791486982473 -0.27007794882203218
		-2.5865361590240923 -0.51589758335763891 -0.1759101514490673
		-2.228807762592381 -0.83892894787991645 0.054529819033445337
		-1.8719094289185463 -0.51279878643174115 0.28625335322970491
		-1.7249073614803574 0.27145027550946965 0.38351994752856988
		-1.8739133776862242 1.0544157737369333 0.28935215015560511
		-2.2316417741179366 1.3774471382592099 0.058912179673091147
		-2.5885401077917729 1.051316976811036 -0.17281135452316865
		-2.7355421752299591 0.26706791486982473 -0.27007794882203218
		-2.5865361590240923 -0.51589758335763891 -0.1759101514490673
		;
createNode parentConstraint -n "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1" 
		-p "Right_Front_Arm_Wrist_IK_CTRL";
	rename -uid "EE04B550-4252-5B5E-A51A-5385EB626401";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AllFeet_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.6949701309204102 1.3141000270843506 4.32781982421875 ;
	setAttr ".rst" -type "double3" 2.9576396942138672 -0.04524695873260498 4.4069141671061516 ;
	setAttr -k on ".w0";
createNode transform -n "Right_Front_Arm_Shoulder_IK_CTRL_Grp" -p "Right_Front_Arm_IK_Master_Ctrl_Grp";
	rename -uid "CD1C6BF0-412E-B2DC-F6FC-21BFAAE357B0";
	setAttr ".t" -type "double3" -1.7922199964523315 11.230008125305176 0.032039523124694824 ;
createNode transform -n "Right_Front_Arm_Shoulder_IK_CTRL" -p "Right_Front_Arm_Shoulder_IK_CTRL_Grp";
	rename -uid "1586CFEE-4BE9-4607-FB12-488708AF82B2";
	setAttr ".t" -type "double3" 0 -1.1481084823608398 1.6467704772949219 ;
createNode nurbsCurve -n "Right_Front_Arm_Shoulder_IK_CTRLShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL";
	rename -uid "88E436D4-409F-DBA9-24D4-45AF226A0D6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.55409709377719374 -0.78361162489122727 -0.55409709377719385
		-2.1588771306901909e-16 -1.1081941875543908 3.2017538359276725e-16
		0.55409709377719507 -0.78361162489122727 0.5540970937771944
		0.78361162489122427 -1.7763568394002505e-15 0.78361162489122538
		0.55409709377719341 0.78361162489122194 0.55409709377719463
		-2.9929887493659467e-16 1.1081941875543855 5.507827134619468e-16
		-0.55409709377719374 0.78361162489122371 -0.55409709377719385
		-0.78361162489122516 -1.7763568394002505e-15 -0.78361162489122405
		-0.55409709377719374 -0.78361162489122727 -0.55409709377719385
		-2.1588771306901909e-16 -1.1081941875543908 3.2017538359276725e-16
		0.55409709377719507 -0.78361162489122727 0.5540970937771944
		;
createNode transform -n "Right_Front_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp" -p "Right_Front_Arm_IK_Master_Ctrl_Grp";
	rename -uid "87139EE2-4972-EB7B-23A9-89BEFCC955BD";
	setAttr ".t" -type "double3" -4.6955096887179906 11.512099958641443 4.3272285175847518 ;
	setAttr ".r" -type "double3" 131.2408444897022 4.8115515484463147 82.126955403268838 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Right_Front_Arm_Shoulder_IK_CTRL_Offset_Grp" -p "Right_Front_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp";
	rename -uid "E901B9CC-4166-0B80-4016-41AA9375B80F";
	setAttr ".t" -type "double3" 0 0 -6.8792007710546468 ;
createNode transform -n "Right_Front_Arm_Shoulder_IK_CTRL" -p "Right_Front_Arm_Shoulder_IK_CTRL_Offset_Grp";
	rename -uid "D1F72B03-49D0-8BF7-4B98-BF9B6A26FA9D";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 1.9428902930940239e-16 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode nurbsCurve -n "Right_Front_Arm_Shoulder_IK_CTRLShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Offset_Grp|Right_Front_Arm_Shoulder_IK_CTRL";
	rename -uid "30AE2F30-4BCA-498B-81E9-C98AC84A4A08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122427 -0.78361162489122727 -5.5511151231257827e-17
		7.3742519021490751e-17 -1.1081941875543908 3.790538507934089e-16
		0.78361162489122549 -0.78361162489122727 -4.163336342344337e-16
		1.1081941875543886 -1.7763568394002505e-15 8.3266726846886741e-16
		0.7836116248912246 0.78361162489122194 8.6042284408449632e-16
		1.7782592758009923e-16 1.1081941875543855 6.010984557184405e-16
		-0.78361162489122427 0.78361162489122371 -5.5511151231257827e-17
		-1.1081941875543881 -1.7763568394002505e-15 8.8817841970012523e-16
		-0.78361162489122427 -0.78361162489122727 -5.5511151231257827e-17
		7.3742519021490751e-17 -1.1081941875543908 3.790538507934089e-16
		0.78361162489122549 -0.78361162489122727 -4.163336342344337e-16
		;
createNode transform -n "Left_Back_Arm_IK_Master_Ctrl_Grp" -p "Root_Ctrl";
	rename -uid "F0A75B29-4554-9E95-B72E-7D8E3227EEF7";
	setAttr ".t" -type "double3" 11.740900039672852 -2.3391734133873071e-15 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "Left_Back_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp" -p "Left_Back_Arm_IK_Master_Ctrl_Grp";
	rename -uid "2B149A56-4557-8F88-BE26-05A5D61D8DA0";
	setAttr ".t" -type "double3" 4.4573057072917095 11.566616496692784 -4.538889787045564 ;
	setAttr ".r" -type "double3" -135.65384026406144 10.085089238975263 -87.372809937293795 ;
createNode transform -n "Left_Back_Arm_Elbow_IK_PV_CTRL_Offset_Grp" -p "Left_Back_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp";
	rename -uid "DD26F4A7-410D-5BAD-0881-AB9644CA59F6";
	setAttr ".t" -type "double3" 0 0 6.8999793840601029 ;
createNode transform -n "Left_Back_Arm_Elbow_IK_CTRL" -p "Left_Back_Arm_Elbow_IK_PV_CTRL_Offset_Grp";
	rename -uid "B5A0D28A-4696-B4EE-0138-DC84C2F39A5C";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -2.2204460492503131e-16 0 ;
createNode nurbsCurve -n "Left_Back_Arm_Elbow_IK_CTRLShape" -p "Left_Back_Arm_Elbow_IK_CTRL";
	rename -uid "180C2998-4602-28DF-3265-80BE7E455589";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.7569107062627739 -0.78361162489122549 0.20281361248558283
		8.9122514040446375e-16 -1.1081941875543881 2.0843909128012133e-15
		0.75691070626277768 -0.78361162489122504 -0.20281361248558075
		1.0704333863022164 -2.7949358730027953e-16 -0.2868217614109882
		0.75691070626277723 0.78361162489122416 -0.20281361248557922
		1.0214749380192573e-15 1.1081941875543879 2.159590668516009e-15
		-0.7569107062627739 0.7836116248912246 0.20281361248558283
		-1.0704333863022149 -7.0920554847035433e-17 0.28682176141099325
		-0.7569107062627739 -0.78361162489122549 0.20281361248558283
		8.9122514040446375e-16 -1.1081941875543881 2.0843909128012133e-15
		0.75691070626277768 -0.78361162489122504 -0.20281361248558075
		;
createNode transform -n "Left_Back_Arm_Wrist_IK_CTRL_Grp" -p "Left_Back_Arm_IK_Master_Ctrl_Grp";
	rename -uid "1B111A2A-4AC5-BCEC-C161-67BA08126E8A";
	setAttr ".t" -type "double3" 4.3697314262390137 1.4079506397247314 -5.923192024230957 ;
createNode transform -n "Left_Back_Arm_Wrist_IK_CTRL" -p "Left_Back_Arm_Wrist_IK_CTRL_Grp";
	rename -uid "9B406ACB-4C06-195A-7CDF-7BB7C83D344D";
createNode nurbsCurve -n "Left_Back_Arm_Wrist_IK_CTRLShape" -p "Left_Back_Arm_Wrist_IK_CTRL";
	rename -uid "18618F12-4791-F0D5-B716-B9B41E4833D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824479
		2.2163883751087767 -2.2204460492503131e-16 2.6584414664283103e-16
		1.5672232497824501 1.8318679906315083e-15 1.5672232497824512
		5.5898717460055905e-16 -6.9486850108352546e-16 2.2163883751087772
		-1.5672232497824485 -3.8857805861880479e-16 1.567223249782449
		-2.2163883751087758 -2.2204460492503131e-16 4.7854117548084678e-16
		-1.5672232497824492 7.7715611723760958e-16 -1.5672232497824479
		1.4184110969407092e-16 -4.7282389615849415e-16 -2.2163883751087763
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824479
		2.2163883751087767 -2.2204460492503131e-16 2.6584414664283103e-16
		1.5672232497824501 1.8318679906315083e-15 1.5672232497824512
		;
createNode ikHandle -n "Left_Back_Arm_IK_Handle" -p "Left_Back_Arm_Wrist_IK_CTRL";
	rename -uid "3A6B2DE4-4C76-F620-AFAF-018D0C45FE37";
	setAttr ".t" -type "double3" 5.5614819416405226e-09 -5.5006807997415308e-09 -1.2520677028504679e-07 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Left_Back_Arm_IK_Handle_poleVectorConstraint1" 
		-p "Left_Back_Arm_IK_Handle";
	rename -uid "F841A906-47DC-2698-37B3-D59A84D52891";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Back_Arm_Elbow_IK_CTRLW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 7.4434342318970819 0.24979025027296764 -7.7557849931962171 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Back_Arm_Toe_1_Ctrl_Grp" -p "Left_Back_Arm_Wrist_IK_CTRL";
	rename -uid "8C3AE37E-451E-E6C2-FB0B-768D568C0C8E";
	setAttr ".t" -type "double3" -0.057661027661569442 -0.060863308978179598 0.42948965489770874 ;
	setAttr ".r" -type "double3" -25.280906773435817 -48.896265218405333 -73.605634620675104 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "Left_Back_Arm_Toe_1_Ctrl" -p "Left_Back_Arm_Toe_1_Ctrl_Grp";
	rename -uid "2D9BF685-4FAA-F0D3-EF9E-8C94D9AACDCA";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
createNode nurbsCurve -n "Left_Back_Arm_Toe_1_CtrlShape" -p "Left_Back_Arm_Toe_1_Ctrl";
	rename -uid "5E273B7E-40FB-6447-72FC-4797039E3664";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.960411268315926 -0.75174458074478412 -0.253709404155671
		1.7956165257843644 0.025297090537641856 -0.3505370327711812
		1.9389524816431063 0.81462316096273435 -0.22405224113983813
		2.3064548769258026 1.1538571236101347 0.051651895234646084
		2.682845792680455 0.84428032397856756 0.31507163246646508
		2.8476405352120153 0.067238652696142528 0.41189926108197472
		2.7043045793532756 -0.72208741772895113 0.28541446945063309
		2.3368021840705779 -1.0613213803763526 0.0097103330761474371
		1.960411268315926 -0.75174458074478412 -0.253709404155671
		1.7956165257843644 0.025297090537641856 -0.3505370327711812
		1.9389524816431063 0.81462316096273435 -0.22405224113983813
		;
createNode transform -n "Left_Back_Arm_Toe_2_Ctrl_Grp" -p "Left_Back_Arm_Wrist_IK_CTRL";
	rename -uid "F4A99ACA-48E7-4033-7AE7-D88492F22D67";
	setAttr ".t" -type "double3" 0.11731160848010269 -0.013789072284560833 -0.18914785305327886 ;
	setAttr ".r" -type "double3" -117.4711005219396 46.613713085676515 -42.452242974826476 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Left_Back_Arm_Toe_2_Ctrl" -p "Left_Back_Arm_Toe_2_Ctrl_Grp";
	rename -uid "EFE4FC39-477B-BA9B-09B3-45A448204B9A";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
createNode nurbsCurve -n "Left_Back_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl";
	rename -uid "37C67D45-43DE-F695-B830-5E82A2C2AD8F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6592090549401894 -0.98980844853006134 -0.0053546418479615276
		2.5353924570157425 -0.19809793737584952 -0.099857625094657676
		2.6822076740403942 0.57591045366553617 -0.048091340307097052
		3.0136523430438475 0.87881310651263334 0.11962022495983193
		3.3355706721001481 0.53317375520639898 0.30503391033958693
		3.4593872700245933 -0.25853675594781089 0.39953689358628219
		3.3125720529999443 -1.0325451469891991 0.3477706087987229
		2.9811273839964887 -1.3354477998362966 0.18005904353179258
		2.6592090549401894 -0.98980844853006134 -0.0053546418479615276
		2.5353924570157425 -0.19809793737584952 -0.099857625094657676
		2.6822076740403942 0.57591045366553617 -0.048091340307097052
		;
createNode transform -n "Left_Back_Arm_Toe_3_Ctrl_Grp" -p "Left_Back_Arm_Wrist_IK_CTRL";
	rename -uid "3FEC24BA-4875-FE9F-7068-8BA6BFAD0A5A";
	setAttr ".t" -type "double3" -0.29239646704262512 -0.032197378796155585 0.15369627150306098 ;
	setAttr ".r" -type "double3" 92.498006874646251 8.9962898586882467 -149.68837037323541 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "Left_Back_Arm_Toe_2_Ctrl" -p "Left_Back_Arm_Toe_3_Ctrl_Grp";
	rename -uid "288A9E1D-49C2-3443-A9E1-E48E2E562737";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
createNode nurbsCurve -n "Left_Back_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl";
	rename -uid "3948A1EA-43AD-15FA-E5B7-C697C745B090";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8719027384070359 0.512803062888331 -0.2862570769205588
		1.7249006709688497 -0.27144599905288036 -0.38352367121942232
		1.8739066871747168 -1.0544114972803438 -0.28935587384645756
		2.2316350836064278 -1.3774428618026215 -0.05891590336394481
		2.5885334172802628 -1.0513127003544462 0.17280763083231476
		2.7355354847184512 -0.26706363841323549 0.27007422513117962
		2.5865294685125844 0.51590185981422809 0.17590642775821497
		2.2288010720808722 0.83893322433650475 -0.054533542724299
		1.8719027384070359 0.512803062888331 -0.2862570769205588
		1.7249006709688497 -0.27144599905288036 -0.38352367121942232
		1.8739066871747168 -1.0544114972803438 -0.28935587384645756
		;
createNode parentConstraint -n "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1" -p
		 "Left_Back_Arm_Wrist_IK_CTRL";
	rename -uid "874D1061-4435-1AC5-85C7-369EB79C8FFD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AllFeet_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.3697314262390146 1.4079506397247317 -5.9231920242309579 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 2.2204460492503131e-16 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Back_Arm_Shoulder_IK_CTRL_Grp" -p "Left_Back_Arm_IK_Master_Ctrl_Grp";
	rename -uid "BDED547E-4BD6-82EB-0591-0D82189BF9B8";
	setAttr ".t" -type "double3" 1.7922240495681763 12.401053428649902 -1.6412436962127686 ;
createNode transform -n "Left_Back_Arm_Shoulder_IK_CTRL" -p "Left_Back_Arm_Shoulder_IK_CTRL_Grp";
	rename -uid "A8AF17CF-4BA3-8C84-79EA-AEB4822EE622";
createNode nurbsCurve -n "Left_Back_Arm_Shoulder_IK_CTRLShape" -p "Left_Back_Arm_Shoulder_IK_CTRL";
	rename -uid "ED43023E-443F-EF8D-F45D-19A69A6FB025";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.55409709377719329 -0.78361162489122549 -0.55409709377719374
		1.7884723740579792e-16 -1.1081941875543881 3.6124828446243765e-16
		0.55409709377719563 -0.78361162489122504 0.55409709377719429
		0.78361162489122493 -2.7949358730027953e-16 0.78361162489122549
		0.55409709377719407 0.78361162489122416 0.5540970937771944
		1.7884723740579792e-16 1.1081941875543879 5.1164779589202926e-16
		-0.55409709377719329 0.7836116248912246 -0.55409709377719374
		-0.78361162489122449 -7.0920554847035433e-17 -0.78361162489122405
		-0.55409709377719329 -0.78361162489122549 -0.55409709377719374
		1.7884723740579792e-16 -1.1081941875543881 3.6124828446243765e-16
		0.55409709377719563 -0.78361162489122504 0.55409709377719429
		;
createNode transform -n "Left_Middle_Arm_IK_Master_Ctrl_Grp" -p "Root_Ctrl";
	rename -uid "91348C68-4EEA-DF2A-A5B7-82944EE18682";
	setAttr ".t" -type "double3" 11.740900039672852 -2.3391734133873071e-15 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "Left_Middle_Arm_Shoulder_IK_CTRL_Grp" -p "Left_Middle_Arm_IK_Master_Ctrl_Grp";
	rename -uid "4899DFE7-4A54-D654-2EBE-C29967D8B620";
	setAttr ".t" -type "double3" 1.7922240495681763 11.230008125305176 0.032039523124694824 ;
createNode transform -n "Left_Middle_Arm_Shoulder_IK_CTRL" -p "Left_Middle_Arm_Shoulder_IK_CTRL_Grp";
	rename -uid "07932F60-4D64-E63E-E652-9F850BB7FEDF";
createNode nurbsCurve -n "Left_Middle_Arm_Shoulder_IK_CTRLShape" -p "Left_Middle_Arm_Shoulder_IK_CTRL";
	rename -uid "F60B8718-437F-F7CE-361F-1BB81DAE35E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4074416915836245e-16 -0.78361162489122549 -0.78361162489122393
		1.5810294671240858e-16 -1.1081941875543881 1.3292207332141551e-16
		1.1791224083178276e-15 -0.78361162489122504 0.7836116248912256
		-1.2538964561673142e-16 -2.7949358730027953e-16 1.1081941875543886
		-4.2122918769844683e-17 0.78361162489122416 0.78361162489122449
		5.1754432293400644e-17 1.1081941875543879 2.3927058774042339e-16
		5.4074416915836245e-16 0.7836116248912246 -0.78361162489122393
		-1.4367343154215772e-17 -7.0920554847035433e-17 -1.1081941875543881
		5.4074416915836245e-16 -0.78361162489122549 -0.78361162489122393
		1.5810294671240858e-16 -1.1081941875543881 1.3292207332141551e-16
		1.1791224083178276e-15 -0.78361162489122504 0.7836116248912256
		;
createNode transform -n "Left_Middle_Arm_Wrist_IK_CTRL_Grp" -p "Left_Middle_Arm_IK_Master_Ctrl_Grp";
	rename -uid "86A2EE51-4FCA-6981-1096-688564EACAD0";
	setAttr ".t" -type "double3" 7.6524820327758789 1.3593469858169556 -0.079094342887401581 ;
createNode transform -n "Left_Middle_Arm_Wrist_IK_CTRL" -p "Left_Middle_Arm_Wrist_IK_CTRL_Grp";
	rename -uid "F770BC42-48A1-68E5-760A-CF8421C89F1C";
createNode nurbsCurve -n "Left_Middle_Arm_Wrist_IK_CTRLShape" -p "Left_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "C690BF96-47BA-9AB6-973B-AC9356A70A36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824481
		2.2163883751087767 -2.2204460492503131e-16 4.3799541717799719e-17
		1.5672232497824501 1.8318679906315083e-15 1.567223249782451
		5.5898717460055905e-16 -6.9486850108352546e-16 2.2163883751087772
		-1.5672232497824485 -3.8857805861880479e-16 1.5672232497824488
		-2.2163883751087758 -2.2204460492503131e-16 2.5649657055581547e-16
		-1.5672232497824492 7.7715611723760958e-16 -1.5672232497824481
		1.4184110969407092e-16 -4.7282389615849415e-16 -2.2163883751087763
		1.567223249782451 6.6613381477509392e-16 -1.5672232497824481
		2.2163883751087767 -2.2204460492503131e-16 4.3799541717799719e-17
		1.5672232497824501 1.8318679906315083e-15 1.567223249782451
		;
createNode ikHandle -n "Left_Middle_Arm_IK_Handle" -p "Left_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "7549FAB1-4632-5AA5-C6FB-4D8DC43F1868";
	setAttr ".t" -type "double3" 1.1357509155374146e-07 -3.1067894923353379e-09 -3.5719358026931047e-10 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Left_Middle_Arm_IK_Handle_poleVectorConstraint1" 
		-p "Left_Middle_Arm_IK_Handle";
	rename -uid "D2B8491C-49AB-F3E9-1523-FC9E43C70470";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Middle_Arm_Elbow_IK_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 11.266463784116837 1.3893363262241447 -0.21365708812622253 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Middle_Arm_Toe_1_Ctrl_Grp" -p "Left_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "D8BD3187-42BB-B6AE-2B21-ED94C307774F";
	setAttr ".t" -type "double3" -0.21994993550575881 -0.045227068235918821 0.21135299452669531 ;
	setAttr ".r" -type "double3" 50.541369238717863 -42.111053862543635 -129.16755409774237 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "Left_Middle_Arm_Toe_1_Ctrl" -p "Left_Middle_Arm_Toe_1_Ctrl_Grp";
	rename -uid "874D9B36-4F99-9818-B4D1-159F2CE71E1C";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
createNode nurbsCurve -n "Left_Middle_Arm_Toe_1_CtrlShape" -p "Left_Middle_Arm_Toe_1_Ctrl";
	rename -uid "68FE029A-472E-380E-B432-4D80DFCC5979";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.960411268315926 -0.75174458074478412 -0.253709404155671
		1.7956165257843644 0.025297090537641856 -0.3505370327711812
		1.9389524816431063 0.81462316096273435 -0.22405224113983813
		2.3064548769258026 1.1538571236101347 0.051651895234646084
		2.682845792680455 0.84428032397856756 0.31507163246646508
		2.8476405352120153 0.067238652696142528 0.41189926108197472
		2.7043045793532756 -0.72208741772895113 0.28541446945063309
		2.3368021840705779 -1.0613213803763526 0.0097103330761474371
		1.960411268315926 -0.75174458074478412 -0.253709404155671
		1.7956165257843644 0.025297090537641856 -0.3505370327711812
		1.9389524816431063 0.81462316096273435 -0.22405224113983813
		;
createNode transform -n "Left_Middle_Arm_Toe_2_Ctrl_Grp" -p "Left_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "8AAC0D6B-4E0F-3687-F477-03A46398B576";
	setAttr ".t" -type "double3" 0.30508178259909702 -0.01556656507658416 -0.071777788105155532 ;
	setAttr ".r" -type "double3" -90.18853423171889 1.1324273131245552 -27.6658718672068 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "Left_Middle_Arm_Toe_2_Ctrl" -p "Left_Middle_Arm_Toe_2_Ctrl_Grp";
	rename -uid "73660B27-4A0B-DFCA-6A4D-FAB1418D1937";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
createNode nurbsCurve -n "Left_Middle_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl";
	rename -uid "7B5DFF5B-4FF6-44AC-A4D8-FABEF675F84F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6592090549401894 -0.98980844853006134 -0.0053546418479615276
		2.5353924570157425 -0.19809793737584952 -0.099857625094657676
		2.6822076740403942 0.57591045366553617 -0.048091340307097052
		3.0136523430438475 0.87881310651263334 0.11962022495983193
		3.3355706721001481 0.53317375520639898 0.30503391033958693
		3.4593872700245933 -0.25853675594781089 0.39953689358628219
		3.3125720529999443 -1.0325451469891991 0.3477706087987229
		2.9811273839964887 -1.3354477998362966 0.18005904353179258
		2.6592090549401894 -0.98980844853006134 -0.0053546418479615276
		2.5353924570157425 -0.19809793737584952 -0.099857625094657676
		2.6822076740403942 0.57591045366553617 -0.048091340307097052
		;
createNode transform -n "Left_Middle_Arm_Toe_3_Ctrl_Grp" -p "Left_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "24B8D43B-4F38-BEDC-44BA-BDBB7BA39A8E";
	setAttr ".t" -type "double3" -0.22874427369751071 -0.042465615935092904 -0.15078055159074152 ;
	setAttr ".r" -type "double3" 134.5228300639761 45.646167831884604 -126.01796361499153 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "Left_Middle_Arm_Toe_2_Ctrl" -p "Left_Middle_Arm_Toe_3_Ctrl_Grp";
	rename -uid "6CA4BCFD-4453-04F2-00E1-04B8354A2493";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
createNode nurbsCurve -n "Left_Middle_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl";
	rename -uid "87C93B08-49CD-21B2-02A2-989A0F6F9E4D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8719027384070359 0.512803062888331 -0.2862570769205588
		1.7249006709688497 -0.27144599905288036 -0.38352367121942232
		1.8739066871747168 -1.0544114972803438 -0.28935587384645756
		2.2316350836064278 -1.3774428618026215 -0.05891590336394481
		2.5885334172802628 -1.0513127003544462 0.17280763083231476
		2.7355354847184512 -0.26706363841323549 0.27007422513117962
		2.5865294685125844 0.51590185981422809 0.17590642775821497
		2.2288010720808722 0.83893322433650475 -0.054533542724299
		1.8719027384070359 0.512803062888331 -0.2862570769205588
		1.7249006709688497 -0.27144599905288036 -0.38352367121942232
		1.8739066871747168 -1.0544114972803438 -0.28935587384645756
		;
createNode parentConstraint -n "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1" 
		-p "Left_Middle_Arm_Wrist_IK_CTRL";
	rename -uid "E9893BD1-422B-D134-6A71-E3890A149B13";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AllFeet_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.6524820327758789 1.3593469858169556 -0.079094342887401581 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Middle_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp" -p "Left_Middle_Arm_IK_Master_Ctrl_Grp";
	rename -uid "1ADDBF86-4191-134C-E5A6-2E8BBB21955F";
	setAttr ".t" -type "double3" 5.9356231689453125 11.401056289672844 -0.046535849571228943 ;
	setAttr ".r" -type "double3" -91.070885267783396 0.18311386836504234 -80.297792631167852 ;
createNode transform -n "Left_Middle_Arm_Elbow_IK_PV_CTRL_Offset_Grp" -p "Left_Middle_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp";
	rename -uid "3DB52740-4CE8-A378-EFA9-7199FFF62F0C";
	setAttr ".t" -type "double3" 0 0 7.2277606029271997 ;
createNode transform -n "Left_Middle_Arm_Elbow_IK_CTRL" -p "Left_Middle_Arm_Elbow_IK_PV_CTRL_Offset_Grp";
	rename -uid "FBE18EF5-4925-05BC-1797-369DC2D79291";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -1.3877787807814457e-17 -8.8817841970012523e-16 ;
createNode nurbsCurve -n "Left_Middle_Arm_Elbow_IK_CTRLShape" -p "Left_Middle_Arm_Elbow_IK_CTRL";
	rename -uid "F280A9DB-4C3D-C31A-4FFC-5EA0846D3789";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.78361162489122449 -0.78361162489122549 -3.2933320638725878e-15
		-7.5525634637870979e-16 -1.1081941875543881 -2.8226382058127851e-15
		0.78361162489122504 -0.78361162489122504 -3.7096656981070211e-15
		1.1081941875543879 -2.7949358730027953e-16 -2.7104649759443807e-15
		0.78361162489122393 0.78361162489122416 -2.5439315222506072e-15
		-6.489078319597016e-16 1.1081941875543879 -2.7162896913937771e-15
		-0.78361162489122449 0.7836116248912246 -3.2933320638725878e-15
		-1.1081941875543888 -7.0920554847035433e-17 -2.7659761271756385e-15
		-0.78361162489122449 -0.78361162489122549 -3.2933320638725878e-15
		-7.5525634637870979e-16 -1.1081941875543881 -2.8226382058127851e-15
		0.78361162489122504 -0.78361162489122504 -3.7096656981070211e-15
		;
createNode transform -n "Left_Front_Arm_IK_Master_Ctrl_Grp" -p "Root_Ctrl";
	rename -uid "DBA890BC-4184-07FC-E906-E99D8595F30B";
	setAttr ".t" -type "double3" 11.740900039672852 -2.3391734133873071e-15 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
createNode transform -n "Left_Front_Arm_Elbow_IK_PV_CTRL_Grp" -p "Left_Front_Arm_IK_Master_Ctrl_Grp";
	rename -uid "CCF915EA-4CFF-1D36-CF1A-448D9ADCEE26";
	setAttr ".t" -type "double3" 4.6955091295140639 11.512074409281523 4.3272247251741698 ;
	setAttr ".r" -type "double3" -48.759177134684819 -4.8115501897876749 -82.126955040881498 ;
createNode transform -n "Left_Front_Arm_Elbow_IK_PV_CTRL_Offset_Grp" -p "Left_Front_Arm_Elbow_IK_PV_CTRL_Grp";
	rename -uid "EF8AC951-4910-E5E9-7750-33AEBF2F3247";
	setAttr ".t" -type "double3" 1.7208456881689926e-15 2.2204460492503131e-16 6.8792077488515773 ;
createNode transform -n "Left_Front_Arm_Elbow_IK_PV_CTRL" -p "Left_Front_Arm_Elbow_IK_PV_CTRL_Offset_Grp";
	rename -uid "3F3EC398-4981-9EBC-81C8-FB896C9F4A42";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 1.9428902930940239e-16 0 ;
createNode nurbsCurve -n "Left_Front_Arm_Elbow_IK_PV_CTRLShape" -p "Left_Front_Arm_Elbow_IK_PV_CTRL";
	rename -uid "667B99E7-4B72-DD68-D998-46AFF37A4C8D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122438 -0.78361162489122516 6.1584811373533871e-16
		-1.1666323355725206e-16 -1.1081941875543881 3.3829235757904957e-16
		-0.78361162489122482 -0.78361162489122504 2.8278120634779175e-16
		-1.1081941875543886 -8.5204557990877106e-17 3.05311331771918e-16
		-0.78361162489122482 0.78361162489122427 3.6604793319467849e-16
		-2.2301174797626001e-16 1.1081941875543877 2.8278120634779175e-16
		0.78361162489122438 0.78361162489122405 8.6564829427599893e-16
		1.1081941875543884 1.2336847446236699e-16 1.3877787807814452e-16
		0.78361162489122438 -0.78361162489122516 6.1584811373533871e-16
		-1.1666323355725206e-16 -1.1081941875543881 3.3829235757904957e-16
		-0.78361162489122482 -0.78361162489122504 2.8278120634779175e-16
		;
createNode transform -n "Left_Front_Arm_Wrist_IK_CTRL_Grp" -p "Left_Front_Arm_IK_Master_Ctrl_Grp";
	rename -uid "2C197EE8-4D0F-0F85-76CF-2F8150627026";
	setAttr ".t" -type "double3" 4.6949691772460938 1.3140959739685059 4.3278164863586426 ;
createNode transform -n "Left_Front_Arm_Wrist_IK_CTRL" -p "Left_Front_Arm_Wrist_IK_CTRL_Grp";
	rename -uid "6ED706E0-4017-A3AE-FC55-C6B0174910FF";
createNode nurbsCurve -n "Left_Front_Arm_Wrist_IK_CTRLShape" -p "Left_Front_Arm_Wrist_IK_CTRL";
	rename -uid "7A35AD51-47D6-D42F-4A85-F29B14AEAD62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5672232497824488 -3.8857805861880479e-16 -1.5672232497824508
		-2.3332646711450412e-16 -3.3306690738754696e-16 -2.2163883751087758
		-1.5672232497824496 3.8857805861880479e-16 -1.5672232497824505
		-2.2163883751087772 2.2204460492503131e-16 -5.5898717460055905e-16
		-1.5672232497824496 2.7755575615628914e-16 1.5672232497824485
		-4.4602349595252002e-16 4.4408920985006262e-16 2.2163883751087758
		1.5672232497824488 -7.7715611723760958e-16 1.5672232497824485
		2.2163883751087767 5.5511151231257827e-16 -1.4184110969407087e-16
		1.5672232497824488 -3.8857805861880479e-16 -1.5672232497824508
		-2.3332646711450412e-16 -3.3306690738754696e-16 -2.2163883751087758
		-1.5672232497824496 3.8857805861880479e-16 -1.5672232497824505
		;
createNode ikHandle -n "Left_Front_Arm_IK_Handle" -p "Left_Front_Arm_Wrist_IK_CTRL";
	rename -uid "33318A5A-41F8-6869-3489-3B9181824E78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.8572172646527179e-09 -2.9774918530733885e-08 8.9961513793923586e-09 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Left_Front_Arm_IK_Handle_poleVectorConstraint1" 
		-p "Left_Front_Arm_IK_Handle";
	rename -uid "6D9DD3A2-420A-4857-02F3-94A6099F4765";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Left_Front_Arm_Elbow_IK_PV_CTRLW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 7.9752104399273458 2.5155140487767458 7.1673782233039063 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Front_Arm_Toe_1_Ctrl_Grp" -p "Left_Front_Arm_Wrist_IK_CTRL";
	rename -uid "F6B56DAA-46DD-A0EB-7B43-F4896516E608";
	setAttr ".t" -type "double3" -0.30452662116757967 -0.047885274298940406 0.0080083364312670824 ;
	setAttr ".r" -type "double3" 81.265549408281089 -9.6740266455987705 -143.52318947851626 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "Left_Front_Arm_Toe_1_Ctrl" -p "Left_Front_Arm_Toe_1_Ctrl_Grp";
	rename -uid "62EE4AB4-4828-8A7A-4F2C-48A3712B0634";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
createNode nurbsCurve -n "Left_Front_Arm_Toe_1_CtrlShape" -p "Left_Front_Arm_Toe_1_Ctrl";
	rename -uid "369C7273-4FED-F297-7E7D-76AF51453578";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -45913157.621489584 -1830445.0500940497 
		63454386.894127443 -45913157.332244195 -1830442.7189683162 63454386.928202212 -45913156.118640393 
		-1830440.3509907329 63454386.983095825 -45913154.691590697 -1830439.3332904377 63454387.026651822 
		-45913153.887041457 -1830440.2620224748 63454387.033356115 -45913154.176286876 -1830442.5931482036 
		63454386.999281242 -45913155.389890663 -1830444.9611257925 63454386.944387868 -45913156.816940509 
		-1830445.9788260851 63454386.900831804 0 0 0 0 0 0 0 0 0;
createNode transform -n "Left_Front_Arm_Toe_2_Ctrl_Grp1" -p "Left_Front_Arm_Wrist_IK_CTRL";
	rename -uid "BB40292D-46D8-FD86-D3D0-8B8A756BF9EE";
	setAttr ".t" -type "double3" 0.27454287361184004 -0.017277099412795538 0.15098648295573724 ;
	setAttr ".r" -type "double3" -66.24346470254828 -34.556027871406577 -35.108444360489649 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "Left_Front_Arm_Toe_2_Ctrl" -p "Left_Front_Arm_Toe_2_Ctrl_Grp1";
	rename -uid "296480B5-4966-4D03-77CD-D4AD2CE8DA7C";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
createNode nurbsCurve -n "Left_Front_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl";
	rename -uid "0C5C5DEB-46A3-C9F9-11DB-14818484609E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.6592090549401894 -0.98980844853006134 -0.0053546418479615276
		2.5353924570157425 -0.19809793737584952 -0.099857625094657676
		2.6822076740403942 0.57591045366553617 -0.048091340307097052
		3.0136523430438475 0.87881310651263334 0.11962022495983193
		3.3355706721001481 0.53317375520639898 0.30503391033958693
		3.4593872700245933 -0.25853675594781089 0.39953689358628219
		3.3125720529999443 -1.0325451469891991 0.3477706087987229
		2.9811273839964887 -1.3354477998362966 0.18005904353179258
		2.6592090549401894 -0.98980844853006134 -0.0053546418479615276
		2.5353924570157425 -0.19809793737584952 -0.099857625094657676
		2.6822076740403942 0.57591045366553617 -0.048091340307097052
		;
createNode transform -n "Left_Front_Arm_Toe_3_Ctrl_Grp1" -p "Left_Front_Arm_Wrist_IK_CTRL";
	rename -uid "3540C123-475E-47C3-447F-94B41A0B976C";
	setAttr ".t" -type "double3" -0.068192676471782399 -0.036148574082573104 -0.26628017532084058 ;
	setAttr ".r" -type "double3" 21.750048447006382 124.87775550287091 108.26115683255298 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "Left_Front_Arm_Toe_2_Ctrl" -p "Left_Front_Arm_Toe_3_Ctrl_Grp1";
	rename -uid "C3338593-45A6-3D67-F1B1-45A76508A66A";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
createNode nurbsCurve -n "Left_Front_Arm_Toe_2_CtrlShape" -p "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl";
	rename -uid "2F25704A-49A3-B0A9-21A2-C38AB7E4ADBE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.8719027384070359 0.512803062888331 -0.2862570769205588
		1.7249006709688497 -0.27144599905288036 -0.38352367121942232
		1.8739066871747168 -1.0544114972803438 -0.28935587384645756
		2.2316350836064278 -1.3774428618026215 -0.05891590336394481
		2.5885334172802628 -1.0513127003544462 0.17280763083231476
		2.7355354847184512 -0.26706363841323549 0.27007422513117962
		2.5865294685125844 0.51590185981422809 0.17590642775821497
		2.2288010720808722 0.83893322433650475 -0.054533542724299
		1.8719027384070359 0.512803062888331 -0.2862570769205588
		1.7249006709688497 -0.27144599905288036 -0.38352367121942232
		1.8739066871747168 -1.0544114972803438 -0.28935587384645756
		;
createNode parentConstraint -n "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1" -p
		 "Left_Front_Arm_Wrist_IK_CTRL";
	rename -uid "C70A084F-481C-9922-7052-21BD2506F4A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AllFeet_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.6949691772460938 1.3140959739685061 4.3278164863586426 ;
	setAttr ".rst" -type "double3" 0 2.2204460492503131e-16 0 ;
	setAttr -k on ".w0";
createNode transform -n "Left_Front_Arm_Shoulder_IK_CTRL_Grp" -p "Left_Front_Arm_IK_Master_Ctrl_Grp";
	rename -uid "84982C74-4FBB-9BB4-AFA6-F988526517A5";
	setAttr ".t" -type "double3" 1.7922240495681763 10.081921577453613 1.6788135766983032 ;
createNode transform -n "Left_Front_Arm_Shoulder_IK_CTRL" -p "Left_Front_Arm_Shoulder_IK_CTRL_Grp";
	rename -uid "6EB54431-434E-D4AE-270D-9C91ECA74DD0";
createNode nurbsCurve -n "Left_Front_Arm_Shoulder_IK_CTRLShape" -p "Left_Front_Arm_Shoulder_IK_CTRL";
	rename -uid "EFFEE6F2-4C09-6238-2671-B5B547359620";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.25549496060923449 -0.76274389018895916 
		0.21735320168970773 -1.3469127484874473e-13 -1.1105848751509879 1.1081941875543819 
		0.25549496060896548 -0.76274389018895916 1.3498700480927339 0.36132443841122919 0.077018533255585025 
		0.800810341899587 0.25549496060896948 0.91678095669991755 -0.21735320168970396 -1.2741634766737086e-13 
		1.2646219416619118 -1.1081941875543884 -0.2554949606092306 0.91678095669991755 -1.3498700480927348 
		-0.36132443841149331 0.077018533255585025 -0.80081034189958966 0 0 0 0 0 0 0 0 0;
createNode transform -n "AllFeet_Ctrl_Grp" -p "Master_Ctrl";
	rename -uid "4DE3AF87-4D3A-B4DB-57D2-36B39F568F26";
createNode transform -n "AllFeet_Ctrl" -p "AllFeet_Ctrl_Grp";
	rename -uid "3EC63368-4B68-7BE9-25CA-CBA0B08F7877";
createNode nurbsCurve -n "AllFeet_CtrlShape" -p "AllFeet_Ctrl";
	rename -uid "985577AC-42E9-EBD9-DC50-7987AAF38AB1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 1 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.6715653863302657 1.1816051006317141 -3.6715653863302666
		8.4056124744834619e-17 1.1816051006317141 -1.3727406923099432
		-3.6715653863302657 1.1816051006317141 -3.6715653863302662
		-1.372740692309949 1.1816051006317139 3.192727644032422e-15
		-3.6715653863302657 1.1816051006317136 3.6715653863302653
		-1.3750837400903548e-16 1.1816051006317139 1.3727406923099517
		3.6715653863302657 1.1816051006317136 3.6715653863302653
		1.372740692309949 1.1816051006317139 3.4510909274556152e-15
		3.6715653863302657 1.1816051006317141 -3.6715653863302666
		8.4056124744834619e-17 1.1816051006317141 -1.3727406923099432
		-3.6715653863302657 1.1816051006317141 -3.6715653863302662
		;
createNode shadingEngine -n "SpiderBot_SG";
	rename -uid "8CE9345D-4EC6-1FCF-5AFA-35BC27170199";
	setAttr ".ihi" 0;
	setAttr -s 82 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 82 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "04BFF9CD-454B-1674-8D0D-6397963E9971";
createNode phong -n "SpiderBot_Shader";
	rename -uid "3FD4AA3E-4A9D-0668-2618-0C81053C40E8";
	setAttr ".sc" -type "float3" 0.1 0.1 0.1 ;
	setAttr ".cp" 98.07843017578125;
createNode file -n "SpiderBot1F";
	rename -uid "B7008978-4E4A-A285-7BA3-CF928614BE65";
	setAttr ".ftn" -type "string" "D:/Documents/UVU DGM 2211 Rigging 2019 - 2020/2-SpiderBot//Spider_Guard_D.tga";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "SpiderBot_P2D";
	rename -uid "D7D465D9-4029-34BC-7B01-0EA7FB0A1C50";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9712CE8D-4E00-DAA3-F9CB-F2A4E965BC7F";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8A2EC48E-4F96-216B-BC9F-F0ABD4CF2BC6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3B54546F-4DBD-0570-66AE-EB84C41ECADA";
createNode displayLayerManager -n "layerManager";
	rename -uid "C77896E5-4C48-7CFA-1B9A-DF8B04F18C78";
createNode displayLayer -n "defaultLayer";
	rename -uid "8644FC77-4A1D-01EF-AB58-E8A6D70F73F8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CFF0A3FA-4F33-1B05-FBF8-B891DCD80724";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "42370894-4F9C-FFE2-A3BD-BFB53C6526AC";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "03F071A6-48FD-C75A-F991-79AB6F86755F";
	setAttr ".version" -type "string" "1.4.2.3";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "D635A64D-4520-E636-5A2D-BAA70EFAAEAF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "44AEF79E-4BE9-59BC-D5CC-58AEEFF8537F";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "80EB6B0B-4740-14BC-F913-3B9A9CB16F1B";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D8E217AD-4250-F8BD-69B8-CDB8383A9552";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 349\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1319\n            -height 741\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"<function selCom at 0x7f29c5c04aa0>\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n"
		+ "            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 741\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BB2D4EE0-4C98-3925-E4D9-36A23360D194";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "23399996-42C3-B595-CFB6-1C959A60BC49";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -856.66444826589736 -761.80206671428891 ;
	setAttr ".tgi[0].vh" -type "double2" 1045.6290541254018 611.80207267475305 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -545.71429443359375;
	setAttr ".tgi[0].ni[0].y" 171.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -236.10092163085938;
	setAttr ".tgi[0].ni[1].y" 194.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 375.71429443359375;
	setAttr ".tgi[0].ni[2].y" 171.42857360839844;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 68.571426391601563;
	setAttr ".tgi[0].ni[3].y" 194.28572082519531;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode groupId -n "groupId245";
	rename -uid "035B66C6-48FE-E975-367E-18853099D295";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "69FCC050-4005-C93B-4D47-ACACDA27C1E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId238";
	rename -uid "0E757FA8-4BFF-600D-1549-90BEA0D7DE9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId237";
	rename -uid "07878716-44BB-65C8-A7A7-D09E1404129B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId235";
	rename -uid "6F339A68-426B-B744-475C-4DB919336756";
	setAttr ".ihi" 0;
createNode groupId -n "groupId234";
	rename -uid "067EB805-4F15-663C-B1C4-CD90770B171A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId233";
	rename -uid "57AE6800-480D-F1A2-4D6B-9DA988E336AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId225";
	rename -uid "D0534A51-4E19-CA76-B19F-65BCD36B9C3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId224";
	rename -uid "34A9B6A3-485A-5752-4DA8-4C8FEE07CD31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId222";
	rename -uid "64C44234-4E7E-D44C-16EC-76BB1FAA3A9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId221";
	rename -uid "F0C16F8D-47E4-6778-4A94-31BE3445C5E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId220";
	rename -uid "FF89BB2E-44B8-8767-8561-1189EA733AD3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId212";
	rename -uid "0325E42B-4DAB-D6B3-7D78-A78CAB183555";
	setAttr ".ihi" 0;
createNode groupId -n "groupId211";
	rename -uid "41E71542-45D6-E8EA-A9DC-72AF16CB4DE9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId209";
	rename -uid "1AE2C4E2-40D4-E6CF-D755-44A8AF6B60F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId208";
	rename -uid "753734E6-4751-925F-FAB6-FA9F3FA9E7BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId207";
	rename -uid "05D26B61-4203-982A-159A-67ACECEF7BEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId160";
	rename -uid "A9880AA9-45EC-D541-89ED-8B88F955E941";
	setAttr ".ihi" 0;
createNode groupId -n "groupId159";
	rename -uid "D6FD822D-4B5D-3ED1-1A99-3994A0D9BE77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId156";
	rename -uid "C67F809D-4DAD-4D7E-1C5A-558BDE111C21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId155";
	rename -uid "E0642B23-4D48-063C-0FFE-BD86C7CF3F9E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId147";
	rename -uid "E5028F12-41A6-0E69-6BEE-6E8E0E85A60A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId146";
	rename -uid "DF285B61-4BCB-0567-5804-53801FB73522";
	setAttr ".ihi" 0;
createNode groupId -n "groupId144";
	rename -uid "4AC18976-4E4E-3073-495E-F185223C8CBC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId143";
	rename -uid "76E6E631-4410-F5A4-C9EC-7780F59C915B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId142";
	rename -uid "E3A67A10-49EA-9B04-9290-A5B2734643FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	rename -uid "E4322D82-49CA-28BE-44D1-CF98DF6CF01B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	rename -uid "EBB59778-4CC1-EE56-3162-35B5DB0E4D9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	rename -uid "23A80769-4C98-2A59-B5BF-8C850E417FF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	rename -uid "53DAE75B-49A7-7E34-5616-8BA615F11F35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	rename -uid "36181D1F-4349-F5E5-B1BE-79BBA99F524E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId248";
	rename -uid "28C6FBFC-4855-FEB6-FEE9-3EA993B6AD2C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "4940DD61-4F43-3631-210D-2E95A1C35690";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:81]";
createNode groupId -n "groupId251";
	rename -uid "6010139E-4A96-A900-3AE8-F0AF93305502";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "42FE7F2F-4723-B7D8-CED3-CC8DF3A3AFD1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:81]";
createNode groupId -n "groupId254";
	rename -uid "C634B172-42B2-540B-4C27-04AFBB75AFD9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "2275BDA0-4B4F-B8B0-2E11-9D96F8918317";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:81]";
createNode groupId -n "groupId257";
	rename -uid "C9AD933C-44AE-DC74-02C3-569749EFFE06";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "19F8054D-4E4E-B5CC-B005-809115B18EC7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId260";
	rename -uid "889BC8AB-4259-6A48-FDE3-F1A6F774541B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "5D511E44-41D8-3AC0-6E7F-14882319F521";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId263";
	rename -uid "33177688-4D25-F2D8-7BC1-6CAFD479868B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "AB403703-4B6E-7695-CBEF-C081DAAC4C45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId266";
	rename -uid "A9AD7E7A-40D6-9109-A514-548F4C2979B3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "8931F592-4A9D-366F-6448-299C3C58AC5F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId269";
	rename -uid "C111E798-4871-4EB7-85FD-DB83FF41D4CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "2E0945FB-4AF3-C39A-481E-419BCE050158";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId272";
	rename -uid "366BDCA7-4C7A-6D37-08CB-64B6062A7DA6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "2AE4DE61-476A-B013-366D-C196302E10E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId275";
	rename -uid "DC5BA854-4960-007C-9F5E-3B9D898FC3B3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "21EDC2ED-4889-0776-99CA-FB8E7D5B46EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId278";
	rename -uid "F4C7C2FF-4852-5C24-C191-58990F430C11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "4B011963-40B7-2A84-2976-A98230B555FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId281";
	rename -uid "EE6B5881-4393-1702-D7B2-1A83C4A42314";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "2DC6CEAD-4DB9-758E-1AEA-A7B807813893";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId284";
	rename -uid "20F7234C-4CED-9B3D-8561-F3B9725EE9F8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "CD3B5B18-4422-F2B8-1EC1-C3AF109F4A5A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId287";
	rename -uid "B3E2A697-4052-B045-FC34-29B11FC1E113";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "41182672-4862-FFB1-309C-C781291CF0F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId290";
	rename -uid "48F64F17-4BFF-5EE3-BBF1-0B973E6EDAC2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "0BAF4DE9-4B09-DE31-AF6D-748FA40785B8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId293";
	rename -uid "98C6F5B8-47BE-34C3-73B3-B68FED03998F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "35B1A442-479F-934A-FE7E-8CA336E2DC56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId296";
	rename -uid "63ED1898-45C2-8EA2-5267-0FB3564D4401";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "D755B31C-474E-6210-6D20-F9B450C60640";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId299";
	rename -uid "9A504857-4FEB-E10B-ADB9-B69EB470D492";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	rename -uid "F34C0A6F-44A4-8F98-D228-0F86AE6B6115";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId302";
	rename -uid "1BDD8826-45C6-2BC3-C8E5-D4A63EB4A92E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "41560383-4F83-4CBF-EA47-FE8015EE250B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId305";
	rename -uid "AA7D4ECE-4AA2-41DC-E36A-43A8B0820BF1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "B64B95E2-4643-03A9-72CD-A7B64B856C2C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId308";
	rename -uid "85918C30-4875-F1B1-86C5-3A8595792598";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "484565EE-4BDC-97E7-F400-29ABB0F7A41D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId311";
	rename -uid "C44E3BA0-4C18-A882-D6DA-20A36ECF4A33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	rename -uid "51095F52-4A1D-FB56-ACB2-C0AE5810C9B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId314";
	rename -uid "F857051A-4F72-FAB9-6418-F6BF3A81145D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "4E7AE4D3-4F48-C2B8-0408-C48B5A17A2AF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId317";
	rename -uid "440723D9-432A-CC75-AFE8-AD8B74D810F8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	rename -uid "D97E5752-456A-37A7-82ED-7A8E3AE014BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId157";
	rename -uid "DDC70C8A-47BE-B40A-E96A-7099A860DE7E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId320";
	rename -uid "34A8215D-4E0A-1256-8E73-16B159D5768A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "4648FC58-40B6-4958-F01A-1BB9A1C2F699";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId323";
	rename -uid "0E815BDB-4A26-7D82-6500-BF85F6106D69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	rename -uid "93F2EEBA-4CB7-0182-AC34-EF9F27463592";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId326";
	rename -uid "A355E5A0-4ABC-D215-C560-5EA792AEE96B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	rename -uid "1136940D-42DD-81C5-B1BB-A9A49FFBF5D4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId329";
	rename -uid "2D0AB488-4CCD-C7F4-5693-4F883937E406";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	rename -uid "C8399804-4358-4701-F12E-888A7BEAC2FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId332";
	rename -uid "4439CA7D-46C4-A1AF-0925-C1AF278AEFF8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	rename -uid "0ACC01F8-42DE-2D1B-8655-5E9B8D897CD1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId335";
	rename -uid "7DCC0224-447D-E362-42E0-629D0050D120";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts91";
	rename -uid "6366E091-469C-C8E5-CA80-309A6CCDD612";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId338";
	rename -uid "49A1FF65-45E8-F039-3AA2-58B2CEFBA6EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	rename -uid "CB288E54-4703-6BA0-63A1-33B007D791E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId341";
	rename -uid "7C8F7B69-4E79-ABCA-7F9F-D5B30DD9B5B9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts97";
	rename -uid "F9F517D4-4275-CCB6-AC16-428D14AEF391";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId344";
	rename -uid "F396CF22-4C5F-354E-9FEA-2FB6D82A49EE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	rename -uid "3D97DCAA-447E-EDBD-A1BE-E79B582F567F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId347";
	rename -uid "0309CE57-4F1A-06BE-4698-A6A3C99BE941";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts103";
	rename -uid "03964927-447B-C167-87AF-8593FB8FF2E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId350";
	rename -uid "D6DFE912-4466-B312-9956-A384324A4465";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts106";
	rename -uid "2C864192-47C3-F7A3-9712-CABDFD9133D3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId353";
	rename -uid "2C8174F7-435C-6A3C-609C-94814E64D849";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts109";
	rename -uid "5CAEB2B5-4CE7-40EA-2407-49B1492A479C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId356";
	rename -uid "92C58153-4866-85D2-9876-D4A94136F4FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts112";
	rename -uid "50774AF1-4C27-7C62-0698-62B0B225C0F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId359";
	rename -uid "5CEA8DC0-4BAE-C996-D964-219912B3C2A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts115";
	rename -uid "53230E4A-403E-5FA8-90E7-348950AEDC2A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId362";
	rename -uid "D8E90573-4B70-8EEF-3493-699F01384216";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts118";
	rename -uid "84E64EC3-443A-CABB-90EE-2E88D1E7E31F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId365";
	rename -uid "779EBB18-4415-D602-5DAB-98A978752494";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts121";
	rename -uid "CC1B28AE-4F5B-BA9B-1352-3F9302860363";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId368";
	rename -uid "FF39A1EE-433D-1265-07FD-048E77225AE5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts124";
	rename -uid "7BAE94A5-4BCB-8DAE-F6A0-96AA49453855";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId371";
	rename -uid "22B00E2A-45CD-B153-9D51-CFBDE696E581";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts127";
	rename -uid "BDCD0CDC-40E3-6542-0C7D-928BAF01A3B2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId374";
	rename -uid "83AF4C74-499A-9332-9E4E-4DA428EAE168";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts130";
	rename -uid "32F7B82D-4987-D444-79BF-5E82953BF456";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId377";
	rename -uid "AE21FB1D-44D3-79E9-D982-D486D7E85469";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts133";
	rename -uid "09DE463F-4AFB-E8F9-F741-9EB0E1A3090E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId380";
	rename -uid "3AF2FC9F-432F-B2E3-57B7-9EA6E7F79706";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts136";
	rename -uid "788D76AC-4A64-F2E0-13C0-D3A5FC2E0123";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId383";
	rename -uid "B421C3BF-4069-9CA7-D868-779B53BA2EB8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts139";
	rename -uid "123A8B3B-4BBF-B020-BD82-2C975A7A0B95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId386";
	rename -uid "609639D3-426E-688B-8881-FA91CE68C6C1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts142";
	rename -uid "28857D8D-4948-2EAF-90E5-539BC7ED3BB3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId389";
	rename -uid "58C5C79A-4DBA-C1AC-A76B-35810231BC66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts145";
	rename -uid "8F91CCCA-463D-62DC-A477-F38677DF1498";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId392";
	rename -uid "8AA9A21C-4A62-BF2C-EE83-088574CE6CBF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts148";
	rename -uid "0D1B0519-4765-0F6E-7B22-86A7F5288A1E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId395";
	rename -uid "60B0032D-417C-123B-80AE-52A6E7BC051C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts151";
	rename -uid "BF675A75-4172-5E3C-63E6-65A65E1B11B1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId398";
	rename -uid "E495A886-4992-5BD1-A5A3-FB829A0F25AB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts154";
	rename -uid "55AE477B-488C-0470-08DD-7AAE903E33ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "B11892B9-4830-7171-966D-928FBD223854";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "CFC29119-468B-8B9D-EC94-02B7007E4216";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "9FB527F9-4B20-7E46-9CC0-478B2E535DDE";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "A1D03784-4F89-91CA-7E1C-66A49A927354";
	setAttr ".nr" -type "double3" 0 1 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :ikSystem;
connectAttr "Master_Jnt_parentConstraint1.ctx" "Master_Jnt.tx";
connectAttr "Master_Jnt_parentConstraint1.cty" "Master_Jnt.ty";
connectAttr "Master_Jnt_parentConstraint1.ctz" "Master_Jnt.tz";
connectAttr "Master_Jnt_parentConstraint1.crx" "Master_Jnt.rx";
connectAttr "Master_Jnt_parentConstraint1.cry" "Master_Jnt.ry";
connectAttr "Master_Jnt_parentConstraint1.crz" "Master_Jnt.rz";
connectAttr "Master_Jnt.s" "Root_Jnt.is";
connectAttr "Root_Jnt_parentConstraint1.ctx" "Root_Jnt.tx";
connectAttr "Root_Jnt_parentConstraint1.cty" "Root_Jnt.ty";
connectAttr "Root_Jnt_parentConstraint1.ctz" "Root_Jnt.tz";
connectAttr "Root_Jnt_parentConstraint1.crx" "Root_Jnt.rx";
connectAttr "Root_Jnt_parentConstraint1.cry" "Root_Jnt.ry";
connectAttr "Root_Jnt_parentConstraint1.crz" "Root_Jnt.rz";
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.ctx" "Left_Middle_Arm_Shoulder_IK_Jnt.tx"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cty" "Left_Middle_Arm_Shoulder_IK_Jnt.ty"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.ctz" "Left_Middle_Arm_Shoulder_IK_Jnt.tz"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crx" "Left_Middle_Arm_Shoulder_IK_Jnt.rx"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cry" "Left_Middle_Arm_Shoulder_IK_Jnt.ry"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crz" "Left_Middle_Arm_Shoulder_IK_Jnt.rz"
		;
connectAttr "Root_Jnt.s" "Left_Middle_Arm_Shoulder_IK_Jnt.is";
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.s" "Left_Middle_Arm_Elbow_IK_Jnt.is"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.s" "Left_Middle_Arm_Wrist_IK_Jnt.is";
connectAttr "Left_Middle_Arm_Wrist_IK_Jnt.s" "Left_Middle_Arm_Thumb1_IK_Jnt.is";
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.ctx" "Left_Middle_Arm_Thumb1_IK_Jnt.tx"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cty" "Left_Middle_Arm_Thumb1_IK_Jnt.ty"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.ctz" "Left_Middle_Arm_Thumb1_IK_Jnt.tz"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crx" "Left_Middle_Arm_Thumb1_IK_Jnt.rx"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cry" "Left_Middle_Arm_Thumb1_IK_Jnt.ry"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crz" "Left_Middle_Arm_Thumb1_IK_Jnt.rz"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.s" "Left_Middle_Arm_Thumb2_IK_Jnt.is"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.ro" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.pim" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.rp" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.rpt" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.jo" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Left_Middle_Arm_Toe_1_Ctrl.t" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Middle_Arm_Toe_1_Ctrl.rp" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Middle_Arm_Toe_1_Ctrl.rpt" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Middle_Arm_Toe_1_Ctrl.r" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Middle_Arm_Toe_1_Ctrl.ro" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Middle_Arm_Toe_1_Ctrl.s" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Middle_Arm_Toe_1_Ctrl.pm" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.w0" "Left_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_Jnt.s" "Left_Middle_Arm_MidFinger1_IK_Jnt.is"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctx" "Left_Middle_Arm_MidFinger1_IK_Jnt.tx"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cty" "Left_Middle_Arm_MidFinger1_IK_Jnt.ty"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctz" "Left_Middle_Arm_MidFinger1_IK_Jnt.tz"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crx" "Left_Middle_Arm_MidFinger1_IK_Jnt.rx"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cry" "Left_Middle_Arm_MidFinger1_IK_Jnt.ry"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crz" "Left_Middle_Arm_MidFinger1_IK_Jnt.rz"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.s" "Left_Middle_Arm_MidFinger2_IK_Jnt.is"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.ro" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.pim" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.rp" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.rpt" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.jo" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.t" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.rp" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.rpt" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.r" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.ro" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.s" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_2_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.pm" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.w0" "Left_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.ctx" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.tx"
		;
connectAttr "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cty" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.ty"
		;
connectAttr "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.ctz" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.tz"
		;
connectAttr "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crx" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.rx"
		;
connectAttr "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cry" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.ry"
		;
connectAttr "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crz" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.rz"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.ro" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.pim" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.rp" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.rpt" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.jo" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.t" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.rp" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.rpt" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.r" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.ro" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.s" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Middle_Arm_IK_Master_Ctrl_Grp|Left_Middle_Arm_Wrist_IK_CTRL_Grp|Left_Middle_Arm_Wrist_IK_CTRL|Left_Middle_Arm_Toe_3_Ctrl_Grp|Left_Middle_Arm_Toe_2_Ctrl.pm" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.w0" "Left_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_Jnt.tx" "effector2.tx";
connectAttr "Left_Middle_Arm_Wrist_IK_Jnt.ty" "effector2.ty";
connectAttr "Left_Middle_Arm_Wrist_IK_Jnt.tz" "effector2.tz";
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.ro" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.pim" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.rp" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.rpt" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.jo" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_CTRL.t" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_CTRL.rp" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_CTRL.rpt" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_CTRL.r" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_CTRL.ro" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_CTRL.s" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_CTRL.pm" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.w0" "Left_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.ctx" "Left_Back_Arm_Shoulder_IK_Jnt.tx"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cty" "Left_Back_Arm_Shoulder_IK_Jnt.ty"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.ctz" "Left_Back_Arm_Shoulder_IK_Jnt.tz"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crx" "Left_Back_Arm_Shoulder_IK_Jnt.rx"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cry" "Left_Back_Arm_Shoulder_IK_Jnt.ry"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crz" "Left_Back_Arm_Shoulder_IK_Jnt.rz"
		;
connectAttr "Root_Jnt.s" "Left_Back_Arm_Shoulder_IK_Jnt.is";
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.s" "Left_Back_Arm_Elbow_IK_Jnt.is";
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.s" "Left_Back_Arm_Wrist_IK_Jnt.is";
connectAttr "Left_Back_Arm_Wrist_IK_Jnt.s" "Left_Back_Arm_Thumb1_IK_Jnt.is";
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.ctx" "Left_Back_Arm_Thumb1_IK_Jnt.tx"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cty" "Left_Back_Arm_Thumb1_IK_Jnt.ty"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.ctz" "Left_Back_Arm_Thumb1_IK_Jnt.tz"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crx" "Left_Back_Arm_Thumb1_IK_Jnt.rx"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cry" "Left_Back_Arm_Thumb1_IK_Jnt.ry"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crz" "Left_Back_Arm_Thumb1_IK_Jnt.rz"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.s" "Left_Back_Arm_Thumb2_IK_Jnt.is";
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.ro" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.pim" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.rp" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.rpt" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.jo" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Left_Back_Arm_Toe_1_Ctrl.t" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_Toe_1_Ctrl.rp" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_Toe_1_Ctrl.rpt" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_Toe_1_Ctrl.r" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Back_Arm_Toe_1_Ctrl.ro" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Back_Arm_Toe_1_Ctrl.s" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Back_Arm_Toe_1_Ctrl.pm" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.w0" "Left_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Wrist_IK_Jnt.s" "Left_Back_Arm_MidFinger1_IK_Jnt.is";
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctx" "Left_Back_Arm_MidFinger1_IK_Jnt.tx"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cty" "Left_Back_Arm_MidFinger1_IK_Jnt.ty"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctz" "Left_Back_Arm_MidFinger1_IK_Jnt.tz"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crx" "Left_Back_Arm_MidFinger1_IK_Jnt.rx"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cry" "Left_Back_Arm_MidFinger1_IK_Jnt.ry"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crz" "Left_Back_Arm_MidFinger1_IK_Jnt.rz"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.s" "Left_Back_Arm_MidFinger2_IK_Jnt.is"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.ro" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.pim" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.rp" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.rpt" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.jo" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.t" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.rp" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.rpt" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.r" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.ro" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.s" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_2_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.pm" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.w0" "Left_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Wrist_IK_Jnt.s" "Left_Back_Arm_Pinky1_IK_Jnt.is";
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.ctx" "Left_Back_Arm_Pinky1_IK_Jnt.tx"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cty" "Left_Back_Arm_Pinky1_IK_Jnt.ty"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.ctz" "Left_Back_Arm_Pinky1_IK_Jnt.tz"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crx" "Left_Back_Arm_Pinky1_IK_Jnt.rx"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cry" "Left_Back_Arm_Pinky1_IK_Jnt.ry"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crz" "Left_Back_Arm_Pinky1_IK_Jnt.rz"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.s" "Left_Back_Arm_Pinky1_IK_Jnt1.is";
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.ro" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.pim" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.rp" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.rpt" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.jo" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.t" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.rp" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.rpt" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.r" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.ro" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.s" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Back_Arm_IK_Master_Ctrl_Grp|Left_Back_Arm_Wrist_IK_CTRL_Grp|Left_Back_Arm_Wrist_IK_CTRL|Left_Back_Arm_Toe_3_Ctrl_Grp|Left_Back_Arm_Toe_2_Ctrl.pm" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.w0" "Left_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Wrist_IK_Jnt.tx" "effector3.tx";
connectAttr "Left_Back_Arm_Wrist_IK_Jnt.ty" "effector3.ty";
connectAttr "Left_Back_Arm_Wrist_IK_Jnt.tz" "effector3.tz";
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.ro" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.pim" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.rp" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.rpt" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.jo" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_CTRL.t" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_CTRL.rp" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_CTRL.rpt" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_CTRL.r" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_CTRL.ro" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_CTRL.s" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_CTRL.pm" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.w0" "Left_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.ctx" "Left_Front_Arm_Shoulder_IK_Jnt1.tx"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cty" "Left_Front_Arm_Shoulder_IK_Jnt1.ty"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.ctz" "Left_Front_Arm_Shoulder_IK_Jnt1.tz"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crx" "Left_Front_Arm_Shoulder_IK_Jnt1.rx"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cry" "Left_Front_Arm_Shoulder_IK_Jnt1.ry"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crz" "Left_Front_Arm_Shoulder_IK_Jnt1.rz"
		;
connectAttr "Root_Jnt.s" "Left_Front_Arm_Shoulder_IK_Jnt1.is";
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.s" "Left_Front_Arm_Elbow_IK_Jnt.is"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.s" "Left_Front_Arm_Wrist_IK_Jnt.is";
connectAttr "Left_Front_Arm_Wrist_IK_Jnt.s" "Left_Front_Arm_Thumb1_IK_Jnt.is";
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.ctx" "Left_Front_Arm_Thumb1_IK_Jnt.tx"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cty" "Left_Front_Arm_Thumb1_IK_Jnt.ty"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.ctz" "Left_Front_Arm_Thumb1_IK_Jnt.tz"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crx" "Left_Front_Arm_Thumb1_IK_Jnt.rx"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cry" "Left_Front_Arm_Thumb1_IK_Jnt.ry"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crz" "Left_Front_Arm_Thumb1_IK_Jnt.rz"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.s" "Left_Front_Arm_Thumb2_IK_Jnt.is";
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.ro" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.pim" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.rp" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.rpt" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.jo" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Left_Front_Arm_Toe_1_Ctrl.t" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Front_Arm_Toe_1_Ctrl.rp" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Front_Arm_Toe_1_Ctrl.rpt" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Front_Arm_Toe_1_Ctrl.r" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Front_Arm_Toe_1_Ctrl.ro" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Front_Arm_Toe_1_Ctrl.s" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Front_Arm_Toe_1_Ctrl.pm" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.w0" "Left_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Wrist_IK_Jnt.s" "Left_Front_Arm_MidFinger1_IK_Jnt.is"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctx" "Left_Front_Arm_MidFinger1_IK_Jnt.tx"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cty" "Left_Front_Arm_MidFinger1_IK_Jnt.ty"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctz" "Left_Front_Arm_MidFinger1_IK_Jnt.tz"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crx" "Left_Front_Arm_MidFinger1_IK_Jnt.rx"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cry" "Left_Front_Arm_MidFinger1_IK_Jnt.ry"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crz" "Left_Front_Arm_MidFinger1_IK_Jnt.rz"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.s" "Left_Front_Arm_MidFinger2_IK_Jnt.is"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.ro" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.pim" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.rp" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.rpt" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.jo" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.t" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.rp" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.rpt" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.r" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.ro" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.s" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_2_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.pm" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.w0" "Left_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Wrist_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.ctx" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.tx"
		;
connectAttr "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cty" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.ty"
		;
connectAttr "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.ctz" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.tz"
		;
connectAttr "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crx" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.rx"
		;
connectAttr "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cry" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.ry"
		;
connectAttr "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crz" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.rz"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.ro" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.pim" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.rp" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.rpt" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.jo" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.t" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.rp" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.rpt" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.r" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.ro" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.s" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Left_Front_Arm_IK_Master_Ctrl_Grp|Left_Front_Arm_Wrist_IK_CTRL_Grp|Left_Front_Arm_Wrist_IK_CTRL|Left_Front_Arm_Toe_3_Ctrl_Grp1|Left_Front_Arm_Toe_2_Ctrl.pm" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.w0" "Left_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Wrist_IK_Jnt.tx" "effector1.tx";
connectAttr "Left_Front_Arm_Wrist_IK_Jnt.ty" "effector1.ty";
connectAttr "Left_Front_Arm_Wrist_IK_Jnt.tz" "effector1.tz";
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.ro" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cro"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.pim" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.rp" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crp"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.rpt" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crt"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.jo" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cjo"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_CTRL.t" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_CTRL.rp" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_CTRL.rpt" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_CTRL.r" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_CTRL.ro" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_CTRL.s" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_CTRL.pm" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.w0" "Left_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.ctx" "Right_Middle_Arm_Shoulder_IK_Jnt.tx"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cty" "Right_Middle_Arm_Shoulder_IK_Jnt.ty"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.ctz" "Right_Middle_Arm_Shoulder_IK_Jnt.tz"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crx" "Right_Middle_Arm_Shoulder_IK_Jnt.rx"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cry" "Right_Middle_Arm_Shoulder_IK_Jnt.ry"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crz" "Right_Middle_Arm_Shoulder_IK_Jnt.rz"
		;
connectAttr "Root_Jnt.s" "Right_Middle_Arm_Shoulder_IK_Jnt.is";
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.s" "Right_Middle_Arm_Elbow_IK_Jnt.is"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.s" "Right_Middle_Arm_Wrist_IK_Jnt.is"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_Jnt.s" "Right_Middle_Arm_Thumb1_IK_Jnt.is"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.ctx" "Right_Middle_Arm_Thumb1_IK_Jnt.tx"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cty" "Right_Middle_Arm_Thumb1_IK_Jnt.ty"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.ctz" "Right_Middle_Arm_Thumb1_IK_Jnt.tz"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crx" "Right_Middle_Arm_Thumb1_IK_Jnt.rx"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cry" "Right_Middle_Arm_Thumb1_IK_Jnt.ry"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crz" "Right_Middle_Arm_Thumb1_IK_Jnt.rz"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.s" "Right_Middle_Arm_Thumb2_IK_Jnt.is"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.ro" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.pim" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.rp" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.rpt" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.jo" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Right_Middle_Arm_Toe_1_Ctrl.t" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Middle_Arm_Toe_1_Ctrl.rp" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Middle_Arm_Toe_1_Ctrl.rpt" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Middle_Arm_Toe_1_Ctrl.r" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Middle_Arm_Toe_1_Ctrl.ro" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Middle_Arm_Toe_1_Ctrl.s" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Middle_Arm_Toe_1_Ctrl.pm" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.w0" "Right_Middle_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_Jnt.s" "Right_Middle_Arm_MidFinger1_IK_Jnt.is"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctx" "Right_Middle_Arm_MidFinger1_IK_Jnt.tx"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cty" "Right_Middle_Arm_MidFinger1_IK_Jnt.ty"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctz" "Right_Middle_Arm_MidFinger1_IK_Jnt.tz"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crx" "Right_Middle_Arm_MidFinger1_IK_Jnt.rx"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cry" "Right_Middle_Arm_MidFinger1_IK_Jnt.ry"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crz" "Right_Middle_Arm_MidFinger1_IK_Jnt.rz"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.s" "Right_Middle_Arm_MidFinger2_IK_Jnt.is"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.ro" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.pim" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.rp" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.rpt" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.jo" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.t" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.rp" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.rpt" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.r" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.ro" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.s" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_2_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.pm" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.w0" "Right_Middle_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.ctx" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.tx"
		;
connectAttr "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cty" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.ty"
		;
connectAttr "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.ctz" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.tz"
		;
connectAttr "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crx" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.rx"
		;
connectAttr "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cry" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.ry"
		;
connectAttr "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crz" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.rz"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.ro" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.pim" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.rp" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.rpt" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.jo" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.t" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.rp" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.rpt" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.r" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.ro" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.s" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Middle_Arm_IK_Master_Ctrl_Grp|Right_Middle_Arm_Wrist_IK_CTRL_Grp|Right_Middle_Arm_Wrist_IK_CTRL|Right_Middle_Arm_Toe_3_Ctrl_Grp|Right_Middle_Arm_Toe_2_Ctrl.pm" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.w0" "Right_Middle_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_Jnt.tx" "effector5.tx";
connectAttr "Right_Middle_Arm_Wrist_IK_Jnt.ty" "effector5.ty";
connectAttr "Right_Middle_Arm_Wrist_IK_Jnt.tz" "effector5.tz";
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.ro" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.pim" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.rp" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.rpt" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.jo" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_CTRL.t" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_CTRL.rp" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_CTRL.rpt" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_CTRL.r" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_CTRL.ro" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_CTRL.s" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_CTRL.pm" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.w0" "Right_Middle_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.ctx" "Right_Back_Arm_Shoulder_IK_Jnt.tx"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cty" "Right_Back_Arm_Shoulder_IK_Jnt.ty"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.ctz" "Right_Back_Arm_Shoulder_IK_Jnt.tz"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crx" "Right_Back_Arm_Shoulder_IK_Jnt.rx"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cry" "Right_Back_Arm_Shoulder_IK_Jnt.ry"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crz" "Right_Back_Arm_Shoulder_IK_Jnt.rz"
		;
connectAttr "Root_Jnt.s" "Right_Back_Arm_Shoulder_IK_Jnt.is";
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.s" "Right_Back_Arm_Elbow_IK_Jnt.is";
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.s" "Right_Back_Arm_Wrist_IK_Jnt.is";
connectAttr "Right_Back_Arm_Wrist_IK_Jnt.s" "Right_Back_Arm_Thumb1_IK_Jnt.is";
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.ctx" "Right_Back_Arm_Thumb1_IK_Jnt.tx"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cty" "Right_Back_Arm_Thumb1_IK_Jnt.ty"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.ctz" "Right_Back_Arm_Thumb1_IK_Jnt.tz"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crx" "Right_Back_Arm_Thumb1_IK_Jnt.rx"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cry" "Right_Back_Arm_Thumb1_IK_Jnt.ry"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crz" "Right_Back_Arm_Thumb1_IK_Jnt.rz"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.s" "Right_Back_Arm_Thumb2_IK_Jnt.is";
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.ro" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.pim" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.rp" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.rpt" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.jo" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Right_Back_Arm_Toe_1_Ctrl.t" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_Toe_1_Ctrl.rp" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_Toe_1_Ctrl.rpt" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_Toe_1_Ctrl.r" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Back_Arm_Toe_1_Ctrl.ro" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Back_Arm_Toe_1_Ctrl.s" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Back_Arm_Toe_1_Ctrl.pm" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.w0" "Right_Back_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Wrist_IK_Jnt.s" "Right_Back_Arm_MidFinger1_IK_Jnt.is"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctx" "Right_Back_Arm_MidFinger1_IK_Jnt.tx"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cty" "Right_Back_Arm_MidFinger1_IK_Jnt.ty"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctz" "Right_Back_Arm_MidFinger1_IK_Jnt.tz"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crx" "Right_Back_Arm_MidFinger1_IK_Jnt.rx"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cry" "Right_Back_Arm_MidFinger1_IK_Jnt.ry"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crz" "Right_Back_Arm_MidFinger1_IK_Jnt.rz"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.s" "Right_Back_Arm_MidFinger2_IK_Jnt.is"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.ro" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.pim" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.rp" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.rpt" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.jo" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.t" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.rp" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.rpt" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.r" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.ro" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.s" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_2_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.pm" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.w0" "Right_Back_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Wrist_IK_Jnt.s" "Right_Back_Arm_Pinky1_IK_Jnt.is";
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.ctx" "Right_Back_Arm_Pinky1_IK_Jnt.tx"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cty" "Right_Back_Arm_Pinky1_IK_Jnt.ty"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.ctz" "Right_Back_Arm_Pinky1_IK_Jnt.tz"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crx" "Right_Back_Arm_Pinky1_IK_Jnt.rx"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cry" "Right_Back_Arm_Pinky1_IK_Jnt.ry"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crz" "Right_Back_Arm_Pinky1_IK_Jnt.rz"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.s" "Right_Back_Arm_Pinky1_IK_Jnt1.is";
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.ro" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.pim" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.rp" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.rpt" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.jo" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.t" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.rp" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.rpt" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.r" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.ro" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.s" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Back_Arm_IK_Master_Ctrl_Grp|Right_Back_Arm_Wrist_IK_CTRL_Grp|Right_Back_Arm_Wrist_IK_CTRL|Right_Back_Arm_Toe_3_Ctrl_Grp|Right_Back_Arm_Toe_2_Ctrl.pm" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.w0" "Right_Back_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Wrist_IK_Jnt.tx" "effector4.tx";
connectAttr "Right_Back_Arm_Wrist_IK_Jnt.ty" "effector4.ty";
connectAttr "Right_Back_Arm_Wrist_IK_Jnt.tz" "effector4.tz";
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.ro" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.pim" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.rp" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.rpt" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.jo" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_CTRL.t" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_CTRL.rp" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_CTRL.rpt" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_CTRL.r" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_CTRL.ro" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_CTRL.s" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_CTRL.pm" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.w0" "Right_Back_Arm_Shoulder_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.ctx" "Right_Front_Arm_Shoulder_IK_Jnt1.tx"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cty" "Right_Front_Arm_Shoulder_IK_Jnt1.ty"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.ctz" "Right_Front_Arm_Shoulder_IK_Jnt1.tz"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crx" "Right_Front_Arm_Shoulder_IK_Jnt1.rx"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cry" "Right_Front_Arm_Shoulder_IK_Jnt1.ry"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crz" "Right_Front_Arm_Shoulder_IK_Jnt1.rz"
		;
connectAttr "Root_Jnt.s" "Right_Front_Arm_Shoulder_IK_Jnt1.is";
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.s" "Right_Front_Arm_Elbow_IK_Jnt.is"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.s" "Right_Front_Arm_Wrist_IK_Jnt.is";
connectAttr "Right_Front_Arm_Wrist_IK_Jnt.s" "Right_Front_Arm_Thumb1_IK_Jnt.is";
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.ctx" "Right_Front_Arm_Thumb1_IK_Jnt.tx"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cty" "Right_Front_Arm_Thumb1_IK_Jnt.ty"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.ctz" "Right_Front_Arm_Thumb1_IK_Jnt.tz"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crx" "Right_Front_Arm_Thumb1_IK_Jnt.rx"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cry" "Right_Front_Arm_Thumb1_IK_Jnt.ry"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crz" "Right_Front_Arm_Thumb1_IK_Jnt.rz"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.s" "Right_Front_Arm_Thumb2_IK_Jnt.is"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.ro" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.pim" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.rp" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.rpt" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.jo" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "Right_Front_Arm_Toe_1_Ctrl.t" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Front_Arm_Toe_1_Ctrl.rp" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Front_Arm_Toe_1_Ctrl.rpt" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Front_Arm_Toe_1_Ctrl.r" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Front_Arm_Toe_1_Ctrl.ro" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Front_Arm_Toe_1_Ctrl.s" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Front_Arm_Toe_1_Ctrl.pm" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.w0" "Right_Front_Arm_Thumb1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Wrist_IK_Jnt.s" "Right_Front_Arm_MidFinger1_IK_Jnt.is"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctx" "Right_Front_Arm_MidFinger1_IK_Jnt.tx"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cty" "Right_Front_Arm_MidFinger1_IK_Jnt.ty"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.ctz" "Right_Front_Arm_MidFinger1_IK_Jnt.tz"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crx" "Right_Front_Arm_MidFinger1_IK_Jnt.rx"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cry" "Right_Front_Arm_MidFinger1_IK_Jnt.ry"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crz" "Right_Front_Arm_MidFinger1_IK_Jnt.rz"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.s" "Right_Front_Arm_MidFinger2_IK_Jnt.is"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.ro" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.pim" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.rp" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.rpt" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.jo" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.t" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.rp" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.rpt" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.r" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.ro" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.s" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_2_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.pm" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.w0" "Right_Front_Arm_MidFinger1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Wrist_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.ctx" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.tx"
		;
connectAttr "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cty" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.ty"
		;
connectAttr "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.ctz" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.tz"
		;
connectAttr "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crx" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.rx"
		;
connectAttr "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cry" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.ry"
		;
connectAttr "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crz" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.rz"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.s" "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.is"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.ro" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.pim" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cpim"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.rp" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.rpt" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.jo" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.t" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.rp" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.rpt" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.r" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.ro" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.s" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Wrist_IK_CTRL_Grp|Right_Front_Arm_Wrist_IK_CTRL|Right_Front_Arm_Toe_3_Ctrl_Grp|Right_Front_Arm_Toe_2_Ctrl.pm" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.w0" "Right_Front_Arm_Pinky1_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Wrist_IK_Jnt.tx" "effector6.tx";
connectAttr "Right_Front_Arm_Wrist_IK_Jnt.ty" "effector6.ty";
connectAttr "Right_Front_Arm_Wrist_IK_Jnt.tz" "effector6.tz";
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.ro" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cro"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.pim" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.rp" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crp"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.rpt" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.crt"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.jo" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.cjo"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL.t" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL.rp" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL.rpt" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL.r" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL.ro" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL.s" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL.pm" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.w0" "Right_Front_Arm_Shoulder_IK_Jnt1_parentConstraint1.tg[0].tw"
		;
connectAttr "Root_Jnt.ro" "Root_Jnt_parentConstraint1.cro";
connectAttr "Root_Jnt.pim" "Root_Jnt_parentConstraint1.cpim";
connectAttr "Root_Jnt.rp" "Root_Jnt_parentConstraint1.crp";
connectAttr "Root_Jnt.rpt" "Root_Jnt_parentConstraint1.crt";
connectAttr "Root_Jnt.jo" "Root_Jnt_parentConstraint1.cjo";
connectAttr "Root_Ctrl.t" "Root_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Root_Ctrl.rp" "Root_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Root_Ctrl.rpt" "Root_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Root_Ctrl.r" "Root_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Root_Ctrl.ro" "Root_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Root_Ctrl.s" "Root_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Root_Ctrl.pm" "Root_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Root_Jnt_parentConstraint1.w0" "Root_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Master_Jnt.ro" "Master_Jnt_parentConstraint1.cro";
connectAttr "Master_Jnt.pim" "Master_Jnt_parentConstraint1.cpim";
connectAttr "Master_Jnt.rp" "Master_Jnt_parentConstraint1.crp";
connectAttr "Master_Jnt.rpt" "Master_Jnt_parentConstraint1.crt";
connectAttr "Master_Jnt.jo" "Master_Jnt_parentConstraint1.cjo";
connectAttr "Master_Ctrl.t" "Master_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Master_Ctrl.rp" "Master_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Master_Ctrl.rpt" "Master_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Master_Ctrl.r" "Master_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Master_Ctrl.ro" "Master_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Master_Ctrl.s" "Master_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Master_Ctrl.pm" "Master_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Master_Jnt_parentConstraint1.w0" "Master_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_parentConstraint1.ctx" "Body.tx";
connectAttr "Body_parentConstraint1.cty" "Body.ty";
connectAttr "Body_parentConstraint1.ctz" "Body.tz";
connectAttr "Body_parentConstraint1.crx" "Body.rx";
connectAttr "Body_parentConstraint1.cry" "Body.ry";
connectAttr "Body_parentConstraint1.crz" "Body.rz";
connectAttr "groupParts1.og" "polySurfaceShape20.i";
connectAttr "groupId245.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape17.i";
connectAttr "groupId254.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts4.og" "polySurfaceShape19.i";
connectAttr "groupId248.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape18.i";
connectAttr "groupId251.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "Body.ro" "Body_parentConstraint1.cro";
connectAttr "Body.pim" "Body_parentConstraint1.cpim";
connectAttr "Body.rp" "Body_parentConstraint1.crp";
connectAttr "Body.rpt" "Body_parentConstraint1.crt";
connectAttr "Root_Jnt.t" "Body_parentConstraint1.tg[0].tt";
connectAttr "Root_Jnt.rp" "Body_parentConstraint1.tg[0].trp";
connectAttr "Root_Jnt.rpt" "Body_parentConstraint1.tg[0].trt";
connectAttr "Root_Jnt.r" "Body_parentConstraint1.tg[0].tr";
connectAttr "Root_Jnt.ro" "Body_parentConstraint1.tg[0].tro";
connectAttr "Root_Jnt.s" "Body_parentConstraint1.tg[0].ts";
connectAttr "Root_Jnt.pm" "Body_parentConstraint1.tg[0].tpm";
connectAttr "Root_Jnt.jo" "Body_parentConstraint1.tg[0].tjo";
connectAttr "Root_Jnt.ssc" "Body_parentConstraint1.tg[0].tsc";
connectAttr "Root_Jnt.is" "Body_parentConstraint1.tg[0].tis";
connectAttr "Body_parentConstraint1.w0" "Body_parentConstraint1.tg[0].tw";
connectAttr "Left_Front_Upper_Arm_Geo_parentConstraint1.ctx" "Left_Front_Upper_Arm_Geo.tx"
		;
connectAttr "Left_Front_Upper_Arm_Geo_parentConstraint1.cty" "Left_Front_Upper_Arm_Geo.ty"
		;
connectAttr "Left_Front_Upper_Arm_Geo_parentConstraint1.ctz" "Left_Front_Upper_Arm_Geo.tz"
		;
connectAttr "Left_Front_Upper_Arm_Geo_parentConstraint1.crx" "Left_Front_Upper_Arm_Geo.rx"
		;
connectAttr "Left_Front_Upper_Arm_Geo_parentConstraint1.cry" "Left_Front_Upper_Arm_Geo.ry"
		;
connectAttr "Left_Front_Upper_Arm_Geo_parentConstraint1.crz" "Left_Front_Upper_Arm_Geo.rz"
		;
connectAttr "groupParts19.og" "Left_Front_Arm_Knee_GeoShape.i";
connectAttr "groupId263.id" "Left_Front_Arm_Knee_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Knee_GeoShape.iog.og[0].gco";
connectAttr "groupId129.id" "Left_Front_Arm_Thigh_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Thigh_GeoShape.iog.og[0].gco";
connectAttr "Left_Front_Upper_Arm_Geo.ro" "Left_Front_Upper_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Front_Upper_Arm_Geo.pim" "Left_Front_Upper_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Upper_Arm_Geo.rp" "Left_Front_Upper_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Front_Upper_Arm_Geo.rpt" "Left_Front_Upper_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.t" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.rp" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.rpt" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.r" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.ro" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.s" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.pm" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.jo" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.ssc" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.is" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Front_Upper_Arm_Geo_parentConstraint1.w0" "Left_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Fore_Arm_Geo_parentConstraint1.ctx" "Left_Front_Fore_Arm_Geo.tx"
		;
connectAttr "Left_Front_Fore_Arm_Geo_parentConstraint1.cty" "Left_Front_Fore_Arm_Geo.ty"
		;
connectAttr "Left_Front_Fore_Arm_Geo_parentConstraint1.ctz" "Left_Front_Fore_Arm_Geo.tz"
		;
connectAttr "Left_Front_Fore_Arm_Geo_parentConstraint1.crx" "Left_Front_Fore_Arm_Geo.rx"
		;
connectAttr "Left_Front_Fore_Arm_Geo_parentConstraint1.cry" "Left_Front_Fore_Arm_Geo.ry"
		;
connectAttr "Left_Front_Fore_Arm_Geo_parentConstraint1.crz" "Left_Front_Fore_Arm_Geo.rz"
		;
connectAttr "groupId130.id" "Left_Front_Arm_Ankle_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Ankle_GeoShape.iog.og[0].gco";
connectAttr "groupId131.id" "Left_Front_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts82.og" "Left_Front_Arm_Heel_GeoShape.i";
connectAttr "groupId326.id" "Left_Front_Arm_Heel_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Heel_GeoShape.iog.og[0].gco";
connectAttr "groupId133.id" "Left_Front_Arm_Calf_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Calf_GeoShape.iog.og[0].gco";
connectAttr "groupId134.id" "Left_Front_Arm_Shin_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Shin_GeoShape.iog.og[0].gco";
connectAttr "Left_Front_Fore_Arm_Geo.ro" "Left_Front_Fore_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Front_Fore_Arm_Geo.pim" "Left_Front_Fore_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Fore_Arm_Geo.rp" "Left_Front_Fore_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Front_Fore_Arm_Geo.rpt" "Left_Front_Fore_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.t" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.rp" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.rpt" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.r" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.ro" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.s" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.pm" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.jo" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.ssc" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Front_Arm_Elbow_IK_Jnt.is" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Front_Fore_Arm_Geo_parentConstraint1.w0" "Left_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo_parentConstraint1.ctx" "Left_Front_Arm_Toe_1_Geo.tx"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo_parentConstraint1.cty" "Left_Front_Arm_Toe_1_Geo.ty"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo_parentConstraint1.ctz" "Left_Front_Arm_Toe_1_Geo.tz"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo_parentConstraint1.crx" "Left_Front_Arm_Toe_1_Geo.rx"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo_parentConstraint1.cry" "Left_Front_Arm_Toe_1_Geo.ry"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo_parentConstraint1.crz" "Left_Front_Arm_Toe_1_Geo.rz"
		;
connectAttr "groupParts25.og" "Left_Front_Arm_Heel_to_Toe_Tip1_GeoShape.i";
connectAttr "groupId269.id" "Left_Front_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts52.og" "Left_Front_Arm_Toe_Tip1_GeoShape.i";
connectAttr "groupId296.id" "Left_Front_Arm_Toe_Tip1_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Toe_Tip1_GeoShape.iog.og[0].gco";
connectAttr "Left_Front_Arm_Toe_1_Geo.ro" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo.pim" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo.rp" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo.rpt" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.t" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.rp" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.rpt" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.r" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.ro" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.s" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.pm" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.jo" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.ssc" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Front_Arm_Thumb1_IK_Jnt.is" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Front_Arm_Toe_1_Geo_parentConstraint1.w0" "Left_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo_parentConstraint1.ctx" "Left_Front_Arm_Toe_2_Geo.tx"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo_parentConstraint1.cty" "Left_Front_Arm_Toe_2_Geo.ty"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo_parentConstraint1.ctz" "Left_Front_Arm_Toe_2_Geo.tz"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo_parentConstraint1.crx" "Left_Front_Arm_Toe_2_Geo.rx"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo_parentConstraint1.cry" "Left_Front_Arm_Toe_2_Geo.ry"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo_parentConstraint1.crz" "Left_Front_Arm_Toe_2_Geo.rz"
		;
connectAttr "groupParts22.og" "Left_Front_Arm_Heel_to_Toe_Tip2_GeoShape.i";
connectAttr "groupId266.id" "Left_Front_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts49.og" "Left_Front_Arm_Toe_Tip2_GeoShape.i";
connectAttr "groupId293.id" "Left_Front_Arm_Toe_Tip2_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Toe_Tip2_GeoShape.iog.og[0].gco";
connectAttr "Left_Front_Arm_Toe_2_Geo.ro" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo.pim" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo.rp" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo.rpt" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.t" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.rp" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.rpt" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.r" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.ro" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.s" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.pm" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.jo" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.ssc" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Front_Arm_MidFinger1_IK_Jnt.is" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Front_Arm_Toe_2_Geo_parentConstraint1.w0" "Left_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo_parentConstraint1.ctx" "Left_Front_Arm_Toe_3_Geo.tx"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo_parentConstraint1.cty" "Left_Front_Arm_Toe_3_Geo.ty"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo_parentConstraint1.ctz" "Left_Front_Arm_Toe_3_Geo.tz"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo_parentConstraint1.crx" "Left_Front_Arm_Toe_3_Geo.rx"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo_parentConstraint1.cry" "Left_Front_Arm_Toe_3_Geo.ry"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo_parentConstraint1.crz" "Left_Front_Arm_Toe_3_Geo.rz"
		;
connectAttr "groupParts28.og" "Left_Front_Arm_Heel_to_Toe_Tip3_GeoShape.i";
connectAttr "groupId272.id" "Left_Front_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts55.og" "Left_Front_Arm_Toe_Tip3_GeoShape.i";
connectAttr "groupId299.id" "Left_Front_Arm_Toe_Tip3_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Front_Arm_Toe_Tip3_GeoShape.iog.og[0].gco";
connectAttr "Left_Front_Arm_Toe_3_Geo.ro" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo.pim" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo.rp" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo.rpt" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.t" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.rp" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.rpt" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.r" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.ro" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.s" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.pm" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.jo" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.ssc" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Front_Arm_Shoulder_IK_Jnt1|Left_Front_Arm_Elbow_IK_Jnt|Left_Front_Arm_Wrist_IK_Jnt|Left_Front_Arm_Pinky1_IK_Jnt.is" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Front_Arm_Toe_3_Geo_parentConstraint1.w0" "Left_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Upper_Arm_Geo_parentConstraint1.ctx" "Left_Middle_Upper_Arm_Geo.tx"
		;
connectAttr "Left_Middle_Upper_Arm_Geo_parentConstraint1.cty" "Left_Middle_Upper_Arm_Geo.ty"
		;
connectAttr "Left_Middle_Upper_Arm_Geo_parentConstraint1.ctz" "Left_Middle_Upper_Arm_Geo.tz"
		;
connectAttr "Left_Middle_Upper_Arm_Geo_parentConstraint1.crx" "Left_Middle_Upper_Arm_Geo.rx"
		;
connectAttr "Left_Middle_Upper_Arm_Geo_parentConstraint1.cry" "Left_Middle_Upper_Arm_Geo.ry"
		;
connectAttr "Left_Middle_Upper_Arm_Geo_parentConstraint1.crz" "Left_Middle_Upper_Arm_Geo.rz"
		;
connectAttr "groupParts16.og" "Left_Middle_Arm_Knee_GeoShape.i";
connectAttr "groupId260.id" "Left_Middle_Arm_Knee_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Knee_GeoShape.iog.og[0].gco";
connectAttr "groupId142.id" "Left_Middle_Arm_Thigh_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Thigh_GeoShape.iog.og[0].gco";
connectAttr "Left_Middle_Upper_Arm_Geo.ro" "Left_Middle_Upper_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Upper_Arm_Geo.pim" "Left_Middle_Upper_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Upper_Arm_Geo.rp" "Left_Middle_Upper_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Upper_Arm_Geo.rpt" "Left_Middle_Upper_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.t" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.rp" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.rpt" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.r" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.ro" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.s" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.pm" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.jo" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.ssc" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.is" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Middle_Upper_Arm_Geo_parentConstraint1.w0" "Left_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Fore_Arm_Geo_parentConstraint1.ctx" "Left_Middle_Fore_Arm_Geo.tx"
		;
connectAttr "Left_Middle_Fore_Arm_Geo_parentConstraint1.cty" "Left_Middle_Fore_Arm_Geo.ty"
		;
connectAttr "Left_Middle_Fore_Arm_Geo_parentConstraint1.ctz" "Left_Middle_Fore_Arm_Geo.tz"
		;
connectAttr "Left_Middle_Fore_Arm_Geo_parentConstraint1.crx" "Left_Middle_Fore_Arm_Geo.rx"
		;
connectAttr "Left_Middle_Fore_Arm_Geo_parentConstraint1.cry" "Left_Middle_Fore_Arm_Geo.ry"
		;
connectAttr "Left_Middle_Fore_Arm_Geo_parentConstraint1.crz" "Left_Middle_Fore_Arm_Geo.rz"
		;
connectAttr "groupId143.id" "Left_Middle_Arm_Ankle_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Ankle_GeoShape.iog.og[0].gco";
connectAttr "groupId144.id" "Left_Middle_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts79.og" "Left_Middle_Arm_Heel_GeoShape.i";
connectAttr "groupId323.id" "Left_Middle_Arm_Heel_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Heel_GeoShape.iog.og[0].gco";
connectAttr "groupId146.id" "Left_Middle_Arm_Calf_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Calf_GeoShape.iog.og[0].gco";
connectAttr "groupId147.id" "|Spider_Rig|SpiderBot_Geo|Left_Middle_Arm_Geo|Left_Middle_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo|Left_Middle_Arm_Shin_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "|Spider_Rig|SpiderBot_Geo|Left_Middle_Arm_Geo|Left_Middle_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo|Left_Middle_Arm_Shin_GeoShape.iog.og[0].gco"
		;
connectAttr "Left_Middle_Fore_Arm_Geo.ro" "Left_Middle_Fore_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Fore_Arm_Geo.pim" "Left_Middle_Fore_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Fore_Arm_Geo.rp" "Left_Middle_Fore_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Fore_Arm_Geo.rpt" "Left_Middle_Fore_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.t" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.rp" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.rpt" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.r" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.ro" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.s" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.pm" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.jo" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.ssc" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_Jnt.is" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Middle_Fore_Arm_Geo_parentConstraint1.w0" "Left_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.ctx" "Left_Middle_Arm_Toe_1_Geo.tx"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.cty" "Left_Middle_Arm_Toe_1_Geo.ty"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.ctz" "Left_Middle_Arm_Toe_1_Geo.tz"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.crx" "Left_Middle_Arm_Toe_1_Geo.rx"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.cry" "Left_Middle_Arm_Toe_1_Geo.ry"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.crz" "Left_Middle_Arm_Toe_1_Geo.rz"
		;
connectAttr "groupParts31.og" "Left_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.i";
connectAttr "groupId275.id" "Left_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts58.og" "Left_Middle_Arm_Toe_Tip1_GeoShape.i";
connectAttr "groupId302.id" "Left_Middle_Arm_Toe_Tip1_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo.ro" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo.pim" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo.rp" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo.rpt" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.t" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.rp" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.rpt" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.r" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.ro" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.s" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.pm" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.jo" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.ssc" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Middle_Arm_Thumb1_IK_Jnt.is" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.w0" "Left_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.ctx" "Left_Middle_Arm_Toe_2_Geo.tx"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.cty" "Left_Middle_Arm_Toe_2_Geo.ty"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.ctz" "Left_Middle_Arm_Toe_2_Geo.tz"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.crx" "Left_Middle_Arm_Toe_2_Geo.rx"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.cry" "Left_Middle_Arm_Toe_2_Geo.ry"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.crz" "Left_Middle_Arm_Toe_2_Geo.rz"
		;
connectAttr "groupParts34.og" "Left_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.i";
connectAttr "groupId278.id" "Left_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts64.og" "Left_Middle_Arm_Toe_Tip2_GeoShape.i";
connectAttr "groupId308.id" "Left_Middle_Arm_Toe_Tip2_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo.ro" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo.pim" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo.rp" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo.rpt" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.t" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.rp" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.rpt" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.r" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.ro" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.s" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.pm" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.jo" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.ssc" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Middle_Arm_MidFinger1_IK_Jnt.is" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.w0" "Left_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.ctx" "Left_Middle_Arm_Toe_3_Geo.tx"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.cty" "Left_Middle_Arm_Toe_3_Geo.ty"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.ctz" "Left_Middle_Arm_Toe_3_Geo.tz"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.crx" "Left_Middle_Arm_Toe_3_Geo.rx"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.cry" "Left_Middle_Arm_Toe_3_Geo.ry"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.crz" "Left_Middle_Arm_Toe_3_Geo.rz"
		;
connectAttr "groupParts37.og" "Left_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.i";
connectAttr "groupId281.id" "Left_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts61.og" "Left_Middle_Arm_Toe_Tip3_GeoShape.i";
connectAttr "groupId305.id" "Left_Middle_Arm_Toe_Tip3_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Middle_Arm_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo.ro" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo.pim" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo.rp" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo.rpt" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.t" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.rp" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.rpt" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.r" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.ro" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.s" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.pm" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.jo" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.ssc" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Left_Middle_Arm_Shoulder_IK_Jnt|Left_Middle_Arm_Elbow_IK_Jnt|Left_Middle_Arm_Wrist_IK_Jnt|Left_Middle_Arm_Pinky1_IK_Jnt.is" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.w0" "Left_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Upper_Arm_Geo_parentConstraint1.ctx" "Left_Back_Upper_Arm_Geo.tx"
		;
connectAttr "Left_Back_Upper_Arm_Geo_parentConstraint1.cty" "Left_Back_Upper_Arm_Geo.ty"
		;
connectAttr "Left_Back_Upper_Arm_Geo_parentConstraint1.ctz" "Left_Back_Upper_Arm_Geo.tz"
		;
connectAttr "Left_Back_Upper_Arm_Geo_parentConstraint1.crx" "Left_Back_Upper_Arm_Geo.rx"
		;
connectAttr "Left_Back_Upper_Arm_Geo_parentConstraint1.cry" "Left_Back_Upper_Arm_Geo.ry"
		;
connectAttr "Left_Back_Upper_Arm_Geo_parentConstraint1.crz" "Left_Back_Upper_Arm_Geo.rz"
		;
connectAttr "groupParts13.og" "Left_Back_Arm_Knee_GeoShape.i";
connectAttr "groupId257.id" "Left_Back_Arm_Knee_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Knee_GeoShape.iog.og[0].gco";
connectAttr "groupId155.id" "Left_Back_Arm_Thigh_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Thigh_GeoShape.iog.og[0].gco";
connectAttr "Left_Back_Upper_Arm_Geo.ro" "Left_Back_Upper_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Back_Upper_Arm_Geo.pim" "Left_Back_Upper_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Upper_Arm_Geo.rp" "Left_Back_Upper_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Back_Upper_Arm_Geo.rpt" "Left_Back_Upper_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.t" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.rp" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.rpt" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.r" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.ro" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.s" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.pm" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.jo" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.ssc" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.is" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Back_Upper_Arm_Geo_parentConstraint1.w0" "Left_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Fore_Arm_Geo_parentConstraint1.ctx" "Left_Back_Fore_Arm_Geo.tx"
		;
connectAttr "Left_Back_Fore_Arm_Geo_parentConstraint1.cty" "Left_Back_Fore_Arm_Geo.ty"
		;
connectAttr "Left_Back_Fore_Arm_Geo_parentConstraint1.ctz" "Left_Back_Fore_Arm_Geo.tz"
		;
connectAttr "Left_Back_Fore_Arm_Geo_parentConstraint1.crx" "Left_Back_Fore_Arm_Geo.rx"
		;
connectAttr "Left_Back_Fore_Arm_Geo_parentConstraint1.cry" "Left_Back_Fore_Arm_Geo.ry"
		;
connectAttr "Left_Back_Fore_Arm_Geo_parentConstraint1.crz" "Left_Back_Fore_Arm_Geo.rz"
		;
connectAttr "groupId156.id" "Left_Back_Arm_Ankle_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Ankle_GeoShape.iog.og[0].gco";
connectAttr "groupId157.id" "Left_Back_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts76.og" "Left_Back_Arm_Heel_GeoShape.i";
connectAttr "groupId320.id" "Left_Back_Arm_Heel_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Heel_GeoShape.iog.og[0].gco";
connectAttr "groupId159.id" "Left_Back_Arm_Calf_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Calf_GeoShape.iog.og[0].gco";
connectAttr "groupId160.id" "|Spider_Rig|SpiderBot_Geo|Left_Back_Arm_Geo|Left_Back_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo|Left_Middle_Arm_Shin_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "|Spider_Rig|SpiderBot_Geo|Left_Back_Arm_Geo|Left_Back_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo|Left_Middle_Arm_Shin_GeoShape.iog.og[0].gco"
		;
connectAttr "Left_Back_Fore_Arm_Geo.ro" "Left_Back_Fore_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Back_Fore_Arm_Geo.pim" "Left_Back_Fore_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Fore_Arm_Geo.rp" "Left_Back_Fore_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Back_Fore_Arm_Geo.rpt" "Left_Back_Fore_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.t" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.rp" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.rpt" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.r" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.ro" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.s" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.pm" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.jo" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.ssc" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Back_Arm_Elbow_IK_Jnt.is" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Back_Fore_Arm_Geo_parentConstraint1.w0" "Left_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo_parentConstraint1.ctx" "Left_Back_Arm_Toe_1_Geo.tx"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo_parentConstraint1.cty" "Left_Back_Arm_Toe_1_Geo.ty"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo_parentConstraint1.ctz" "Left_Back_Arm_Toe_1_Geo.tz"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo_parentConstraint1.crx" "Left_Back_Arm_Toe_1_Geo.rx"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo_parentConstraint1.cry" "Left_Back_Arm_Toe_1_Geo.ry"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo_parentConstraint1.crz" "Left_Back_Arm_Toe_1_Geo.rz"
		;
connectAttr "groupParts40.og" "Left_Back_Arm_Heel_to_Toe_Tip1_GeoShape.i";
connectAttr "groupId284.id" "Left_Back_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts70.og" "Left_Back_Arm_Toe_Tip1_GeoShape.i";
connectAttr "groupId314.id" "Left_Back_Arm_Toe_Tip1_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Toe_Tip1_GeoShape.iog.og[0].gco";
connectAttr "Left_Back_Arm_Toe_1_Geo.ro" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo.pim" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo.rp" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo.rpt" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.t" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.rp" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.rpt" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.r" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.ro" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.s" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.pm" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.jo" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.ssc" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Back_Arm_Thumb1_IK_Jnt.is" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Back_Arm_Toe_1_Geo_parentConstraint1.w0" "Left_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo_parentConstraint1.ctx" "Left_Back_Arm_Toe_2_Geo.tx"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo_parentConstraint1.cty" "Left_Back_Arm_Toe_2_Geo.ty"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo_parentConstraint1.ctz" "Left_Back_Arm_Toe_2_Geo.tz"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo_parentConstraint1.crx" "Left_Back_Arm_Toe_2_Geo.rx"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo_parentConstraint1.cry" "Left_Back_Arm_Toe_2_Geo.ry"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo_parentConstraint1.crz" "Left_Back_Arm_Toe_2_Geo.rz"
		;
connectAttr "groupParts46.og" "Left_Back_Arm_Heel_to_Toe_Tip2_GeoShape.i";
connectAttr "groupId290.id" "Left_Back_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts67.og" "Left_Back_Arm_Toe_Tip2_GeoShape.i";
connectAttr "groupId311.id" "Left_Back_Arm_Toe_Tip2_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Toe_Tip2_GeoShape.iog.og[0].gco";
connectAttr "Left_Back_Arm_Toe_2_Geo.ro" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo.pim" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo.rp" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo.rpt" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.t" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.rp" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.rpt" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.r" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.ro" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.s" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.pm" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.jo" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.ssc" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Back_Arm_MidFinger1_IK_Jnt.is" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Back_Arm_Toe_2_Geo_parentConstraint1.w0" "Left_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo_parentConstraint1.ctx" "Left_Back_Arm_Toe_3_Geo.tx"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo_parentConstraint1.cty" "Left_Back_Arm_Toe_3_Geo.ty"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo_parentConstraint1.ctz" "Left_Back_Arm_Toe_3_Geo.tz"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo_parentConstraint1.crx" "Left_Back_Arm_Toe_3_Geo.rx"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo_parentConstraint1.cry" "Left_Back_Arm_Toe_3_Geo.ry"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo_parentConstraint1.crz" "Left_Back_Arm_Toe_3_Geo.rz"
		;
connectAttr "groupParts43.og" "Left_Back_Arm_Heel_to_Toe_Tip3_GeoShape.i";
connectAttr "groupId287.id" "Left_Back_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts73.og" "Left_Back_Arm_Toe_Tip3_GeoShape.i";
connectAttr "groupId317.id" "Left_Back_Arm_Toe_Tip3_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Left_Back_Arm_Toe_Tip3_GeoShape.iog.og[0].gco";
connectAttr "Left_Back_Arm_Toe_3_Geo.ro" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo.pim" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo.rp" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo.rpt" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.crt"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.t" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.rp" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.rpt" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.r" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.ro" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.s" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.pm" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.jo" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.ssc" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Left_Back_Arm_Pinky1_IK_Jnt.is" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Left_Back_Arm_Toe_3_Geo_parentConstraint1.w0" "Left_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Upper_Arm_Geo_parentConstraint1.ctx" "Right_Back_Upper_Arm_Geo.tx"
		;
connectAttr "Right_Back_Upper_Arm_Geo_parentConstraint1.cty" "Right_Back_Upper_Arm_Geo.ty"
		;
connectAttr "Right_Back_Upper_Arm_Geo_parentConstraint1.ctz" "Right_Back_Upper_Arm_Geo.tz"
		;
connectAttr "Right_Back_Upper_Arm_Geo_parentConstraint1.crx" "Right_Back_Upper_Arm_Geo.rx"
		;
connectAttr "Right_Back_Upper_Arm_Geo_parentConstraint1.cry" "Right_Back_Upper_Arm_Geo.ry"
		;
connectAttr "Right_Back_Upper_Arm_Geo_parentConstraint1.crz" "Right_Back_Upper_Arm_Geo.rz"
		;
connectAttr "groupParts85.og" "Right_Back_Arm_Knee_GeoShape.i";
connectAttr "groupId329.id" "Right_Back_Arm_Knee_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Knee_GeoShape.iog.og[0].gco";
connectAttr "groupId207.id" "Right_Back_Arm_Thigh_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Thigh_GeoShape.iog.og[0].gco";
connectAttr "Right_Back_Upper_Arm_Geo.ro" "Right_Back_Upper_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Back_Upper_Arm_Geo.pim" "Right_Back_Upper_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Upper_Arm_Geo.rp" "Right_Back_Upper_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Back_Upper_Arm_Geo.rpt" "Right_Back_Upper_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.t" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.rp" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.rpt" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.r" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.ro" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.s" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.pm" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.jo" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.ssc" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.is" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Back_Upper_Arm_Geo_parentConstraint1.w0" "Right_Back_Upper_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Fore_Arm_Geo_parentConstraint1.ctx" "Right_Back_Fore_Arm_Geo.tx"
		;
connectAttr "Right_Back_Fore_Arm_Geo_parentConstraint1.cty" "Right_Back_Fore_Arm_Geo.ty"
		;
connectAttr "Right_Back_Fore_Arm_Geo_parentConstraint1.ctz" "Right_Back_Fore_Arm_Geo.tz"
		;
connectAttr "Right_Back_Fore_Arm_Geo_parentConstraint1.crx" "Right_Back_Fore_Arm_Geo.rx"
		;
connectAttr "Right_Back_Fore_Arm_Geo_parentConstraint1.cry" "Right_Back_Fore_Arm_Geo.ry"
		;
connectAttr "Right_Back_Fore_Arm_Geo_parentConstraint1.crz" "Right_Back_Fore_Arm_Geo.rz"
		;
connectAttr "groupId208.id" "Right_Back_Arm_Ankle_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Ankle_GeoShape.iog.og[0].gco";
connectAttr "groupId209.id" "Right_Back_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts100.og" "Right_Back_Arm_Heel_GeoShape.i";
connectAttr "groupId344.id" "Right_Back_Arm_Heel_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Heel_GeoShape.iog.og[0].gco";
connectAttr "groupId211.id" "Right_Back_Arm_Calf_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Calf_GeoShape.iog.og[0].gco";
connectAttr "groupId212.id" "|Spider_Rig|SpiderBot_Geo|Right_Back_Arm_Geo|Right_Back_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo|Right_Middle_Arm_Shin_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "|Spider_Rig|SpiderBot_Geo|Right_Back_Arm_Geo|Right_Back_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo|Right_Middle_Arm_Shin_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Back_Fore_Arm_Geo.ro" "Right_Back_Fore_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Back_Fore_Arm_Geo.pim" "Right_Back_Fore_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Fore_Arm_Geo.rp" "Right_Back_Fore_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Back_Fore_Arm_Geo.rpt" "Right_Back_Fore_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.t" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.rp" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.rpt" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.r" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.ro" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.s" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.pm" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.jo" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.ssc" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Back_Arm_Elbow_IK_Jnt.is" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Back_Fore_Arm_Geo_parentConstraint1.w0" "Right_Back_Fore_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo_parentConstraint1.ctx" "Right_Back_Arm_Toe_1_Geo.tx"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo_parentConstraint1.cty" "Right_Back_Arm_Toe_1_Geo.ty"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo_parentConstraint1.ctz" "Right_Back_Arm_Toe_1_Geo.tz"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo_parentConstraint1.crx" "Right_Back_Arm_Toe_1_Geo.rx"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo_parentConstraint1.cry" "Right_Back_Arm_Toe_1_Geo.ry"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo_parentConstraint1.crz" "Right_Back_Arm_Toe_1_Geo.rz"
		;
connectAttr "groupParts124.og" "Right_Back_Arm_Heel_to_Toe_Tip1_GeoShape.i";
connectAttr "groupId368.id" "Right_Back_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts136.og" "Right_Back_Arm_Toe_Tip1_GeoShape.i";
connectAttr "groupId380.id" "Right_Back_Arm_Toe_Tip1_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Toe_Tip1_GeoShape.iog.og[0].gco";
connectAttr "Right_Back_Arm_Toe_1_Geo.ro" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo.pim" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo.rp" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo.rpt" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.t" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.rp" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.rpt" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.r" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.ro" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.s" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.pm" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.jo" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.ssc" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Back_Arm_Thumb1_IK_Jnt.is" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Back_Arm_Toe_1_Geo_parentConstraint1.w0" "Right_Back_Arm_Toe_1_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo_parentConstraint1.ctx" "Right_Back_Arm_Toe_2_Geo.tx"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo_parentConstraint1.cty" "Right_Back_Arm_Toe_2_Geo.ty"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo_parentConstraint1.ctz" "Right_Back_Arm_Toe_2_Geo.tz"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo_parentConstraint1.crx" "Right_Back_Arm_Toe_2_Geo.rx"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo_parentConstraint1.cry" "Right_Back_Arm_Toe_2_Geo.ry"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo_parentConstraint1.crz" "Right_Back_Arm_Toe_2_Geo.rz"
		;
connectAttr "groupParts127.og" "Right_Back_Arm_Heel_to_Toe_Tip2_GeoShape.i";
connectAttr "groupId371.id" "Right_Back_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts130.og" "Right_Back_Arm_Toe_Tip2_GeoShape.i";
connectAttr "groupId374.id" "Right_Back_Arm_Toe_Tip2_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Toe_Tip2_GeoShape.iog.og[0].gco";
connectAttr "Right_Back_Arm_Toe_2_Geo.ro" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo.pim" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo.rp" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo.rpt" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.t" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.rp" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.rpt" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.r" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.ro" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.s" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.pm" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.jo" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.ssc" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Back_Arm_MidFinger1_IK_Jnt.is" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Back_Arm_Toe_2_Geo_parentConstraint1.w0" "Right_Back_Arm_Toe_2_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo_parentConstraint1.ctx" "Right_Back_Arm_Toe_3_Geo.tx"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo_parentConstraint1.cty" "Right_Back_Arm_Toe_3_Geo.ty"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo_parentConstraint1.ctz" "Right_Back_Arm_Toe_3_Geo.tz"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo_parentConstraint1.crx" "Right_Back_Arm_Toe_3_Geo.rx"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo_parentConstraint1.cry" "Right_Back_Arm_Toe_3_Geo.ry"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo_parentConstraint1.crz" "Right_Back_Arm_Toe_3_Geo.rz"
		;
connectAttr "groupParts121.og" "Right_Back_Arm_Heel_to_Toe_Tip3_GeoShape.i";
connectAttr "groupId365.id" "Right_Back_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts133.og" "Right_Back_Arm_Toe_Tip3_GeoShape.i";
connectAttr "groupId377.id" "Right_Back_Arm_Toe_Tip3_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Back_Arm_Toe_Tip3_GeoShape.iog.og[0].gco";
connectAttr "Right_Back_Arm_Toe_3_Geo.ro" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo.pim" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo.rp" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo.rpt" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.t" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.rp" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.rpt" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.r" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.ro" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.s" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.pm" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.jo" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.ssc" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Back_Arm_Pinky1_IK_Jnt.is" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Back_Arm_Toe_3_Geo_parentConstraint1.w0" "Right_Back_Arm_Toe_3_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Upper_Arm_Geo_parentConstraint1.ctx" "Right_Middle_Upper_Arm_Geo.tx"
		;
connectAttr "Right_Middle_Upper_Arm_Geo_parentConstraint1.cty" "Right_Middle_Upper_Arm_Geo.ty"
		;
connectAttr "Right_Middle_Upper_Arm_Geo_parentConstraint1.ctz" "Right_Middle_Upper_Arm_Geo.tz"
		;
connectAttr "Right_Middle_Upper_Arm_Geo_parentConstraint1.crx" "Right_Middle_Upper_Arm_Geo.rx"
		;
connectAttr "Right_Middle_Upper_Arm_Geo_parentConstraint1.cry" "Right_Middle_Upper_Arm_Geo.ry"
		;
connectAttr "Right_Middle_Upper_Arm_Geo_parentConstraint1.crz" "Right_Middle_Upper_Arm_Geo.rz"
		;
connectAttr "groupParts88.og" "Right_Middle_Arm_Knee_GeoShape.i";
connectAttr "groupId332.id" "Right_Middle_Arm_Knee_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Knee_GeoShape.iog.og[0].gco";
connectAttr "groupId220.id" "Right_Middle_Arm_Thigh_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Thigh_GeoShape.iog.og[0].gco";
connectAttr "Right_Middle_Upper_Arm_Geo.ro" "Right_Middle_Upper_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Upper_Arm_Geo.pim" "Right_Middle_Upper_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Upper_Arm_Geo.rp" "Right_Middle_Upper_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Upper_Arm_Geo.rpt" "Right_Middle_Upper_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.t" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.rp" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.rpt" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.r" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.ro" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.s" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.pm" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.jo" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.ssc" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.is" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Middle_Upper_Arm_Geo_parentConstraint1.w0" "Right_Middle_Upper_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Fore_Arm_Geo_parentConstraint1.ctx" "Right_Middle_Fore_Arm_Geo.tx"
		;
connectAttr "Right_Middle_Fore_Arm_Geo_parentConstraint1.cty" "Right_Middle_Fore_Arm_Geo.ty"
		;
connectAttr "Right_Middle_Fore_Arm_Geo_parentConstraint1.ctz" "Right_Middle_Fore_Arm_Geo.tz"
		;
connectAttr "Right_Middle_Fore_Arm_Geo_parentConstraint1.crx" "Right_Middle_Fore_Arm_Geo.rx"
		;
connectAttr "Right_Middle_Fore_Arm_Geo_parentConstraint1.cry" "Right_Middle_Fore_Arm_Geo.ry"
		;
connectAttr "Right_Middle_Fore_Arm_Geo_parentConstraint1.crz" "Right_Middle_Fore_Arm_Geo.rz"
		;
connectAttr "groupId221.id" "Right_Middle_Arm_Ankle_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Ankle_GeoShape.iog.og[0].gco";
connectAttr "groupId222.id" "Right_Middle_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts97.og" "Right_Middle_Arm_Heel_GeoShape.i";
connectAttr "groupId341.id" "Right_Middle_Arm_Heel_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Heel_GeoShape.iog.og[0].gco";
connectAttr "groupId224.id" "Right_Middle_Arm_Calf_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Calf_GeoShape.iog.og[0].gco";
connectAttr "groupId225.id" "|Spider_Rig|SpiderBot_Geo|Right_Middle_Arm_Geo|Right_Middle_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo|Right_Middle_Arm_Shin_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "|Spider_Rig|SpiderBot_Geo|Right_Middle_Arm_Geo|Right_Middle_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo|Right_Middle_Arm_Shin_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Middle_Fore_Arm_Geo.ro" "Right_Middle_Fore_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Fore_Arm_Geo.pim" "Right_Middle_Fore_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Fore_Arm_Geo.rp" "Right_Middle_Fore_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Fore_Arm_Geo.rpt" "Right_Middle_Fore_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.t" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.rp" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.rpt" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.r" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.ro" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.s" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.pm" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.jo" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.ssc" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_Jnt.is" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Middle_Fore_Arm_Geo_parentConstraint1.w0" "Right_Middle_Fore_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.ctx" "Right_Middle_Arm_Toe_1_Geo.tx"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.cty" "Right_Middle_Arm_Toe_1_Geo.ty"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.ctz" "Right_Middle_Arm_Toe_1_Geo.tz"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.crx" "Right_Middle_Arm_Toe_1_Geo.rx"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.cry" "Right_Middle_Arm_Toe_1_Geo.ry"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.crz" "Right_Middle_Arm_Toe_1_Geo.rz"
		;
connectAttr "groupParts112.og" "Right_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.i";
connectAttr "groupId356.id" "Right_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts148.og" "Right_Middle_Arm_Toe_Tip1_GeoShape.i";
connectAttr "groupId392.id" "Right_Middle_Arm_Toe_Tip1_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo.ro" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo.pim" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo.rp" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo.rpt" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.t" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.rp" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.rpt" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.r" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.ro" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.s" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.pm" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.jo" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.ssc" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Middle_Arm_Thumb1_IK_Jnt.is" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.w0" "Right_Middle_Arm_Toe_1_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.ctx" "Right_Middle_Arm_Toe_2_Geo.tx"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.cty" "Right_Middle_Arm_Toe_2_Geo.ty"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.ctz" "Right_Middle_Arm_Toe_2_Geo.tz"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.crx" "Right_Middle_Arm_Toe_2_Geo.rx"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.cry" "Right_Middle_Arm_Toe_2_Geo.ry"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.crz" "Right_Middle_Arm_Toe_2_Geo.rz"
		;
connectAttr "groupParts118.og" "Right_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.i";
connectAttr "groupId362.id" "Right_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts142.og" "Right_Middle_Arm_Toe_Tip2_GeoShape.i";
connectAttr "groupId386.id" "Right_Middle_Arm_Toe_Tip2_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo.ro" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo.pim" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo.rp" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo.rpt" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.t" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.rp" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.rpt" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.r" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.ro" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.s" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.pm" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.jo" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.ssc" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Middle_Arm_MidFinger1_IK_Jnt.is" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.w0" "Right_Middle_Arm_Toe_2_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.ctx" "Right_Middle_Arm_Toe_3_Geo.tx"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.cty" "Right_Middle_Arm_Toe_3_Geo.ty"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.ctz" "Right_Middle_Arm_Toe_3_Geo.tz"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.crx" "Right_Middle_Arm_Toe_3_Geo.rx"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.cry" "Right_Middle_Arm_Toe_3_Geo.ry"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.crz" "Right_Middle_Arm_Toe_3_Geo.rz"
		;
connectAttr "groupParts115.og" "Right_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.i";
connectAttr "groupId359.id" "Right_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts139.og" "Right_Middle_Arm_Toe_Tip3_GeoShape.i";
connectAttr "groupId383.id" "Right_Middle_Arm_Toe_Tip3_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Middle_Arm_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo.ro" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo.pim" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo.rp" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo.rpt" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.t" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.rp" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.rpt" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.r" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.ro" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.s" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.pm" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.jo" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.ssc" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Middle_Arm_Shoulder_IK_Jnt|Right_Middle_Arm_Elbow_IK_Jnt|Right_Middle_Arm_Wrist_IK_Jnt|Right_Middle_Arm_Pinky1_IK_Jnt.is" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.w0" "Right_Middle_Arm_Toe_3_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Upper_Arm_Geo_parentConstraint1.ctx" "Right_Front_Upper_Arm_Geo.tx"
		;
connectAttr "Right_Front_Upper_Arm_Geo_parentConstraint1.cty" "Right_Front_Upper_Arm_Geo.ty"
		;
connectAttr "Right_Front_Upper_Arm_Geo_parentConstraint1.ctz" "Right_Front_Upper_Arm_Geo.tz"
		;
connectAttr "Right_Front_Upper_Arm_Geo_parentConstraint1.crx" "Right_Front_Upper_Arm_Geo.rx"
		;
connectAttr "Right_Front_Upper_Arm_Geo_parentConstraint1.cry" "Right_Front_Upper_Arm_Geo.ry"
		;
connectAttr "Right_Front_Upper_Arm_Geo_parentConstraint1.crz" "Right_Front_Upper_Arm_Geo.rz"
		;
connectAttr "groupParts91.og" "Right_Front_Arm_Knee_GeoShape.i";
connectAttr "groupId335.id" "Right_Front_Arm_Knee_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Knee_GeoShape.iog.og[0].gco";
connectAttr "groupId233.id" "Right_Front_Arm_Thigh_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Thigh_GeoShape.iog.og[0].gco";
connectAttr "Right_Front_Upper_Arm_Geo.ro" "Right_Front_Upper_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Front_Upper_Arm_Geo.pim" "Right_Front_Upper_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Upper_Arm_Geo.rp" "Right_Front_Upper_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Front_Upper_Arm_Geo.rpt" "Right_Front_Upper_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.t" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.rp" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.rpt" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.r" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.ro" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.s" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.pm" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.jo" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.ssc" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.is" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Front_Upper_Arm_Geo_parentConstraint1.w0" "Right_Front_Upper_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Fore_Arm_Geo_parentConstraint1.ctx" "Right_Front_Fore_Arm_Geo.tx"
		;
connectAttr "Right_Front_Fore_Arm_Geo_parentConstraint1.cty" "Right_Front_Fore_Arm_Geo.ty"
		;
connectAttr "Right_Front_Fore_Arm_Geo_parentConstraint1.ctz" "Right_Front_Fore_Arm_Geo.tz"
		;
connectAttr "Right_Front_Fore_Arm_Geo_parentConstraint1.crx" "Right_Front_Fore_Arm_Geo.rx"
		;
connectAttr "Right_Front_Fore_Arm_Geo_parentConstraint1.cry" "Right_Front_Fore_Arm_Geo.ry"
		;
connectAttr "Right_Front_Fore_Arm_Geo_parentConstraint1.crz" "Right_Front_Fore_Arm_Geo.rz"
		;
connectAttr "groupId234.id" "Right_Front_Arm_Ankle_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Ankle_GeoShape.iog.og[0].gco";
connectAttr "groupId235.id" "Right_Front_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Ankle_to_Heel_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts94.og" "Right_Front_Arm_Heel_GeoShape.i";
connectAttr "groupId338.id" "Right_Front_Arm_Heel_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Heel_GeoShape.iog.og[0].gco";
connectAttr "groupId237.id" "Right_Front_Arm_Calf_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Calf_GeoShape.iog.og[0].gco";
connectAttr "groupId238.id" "Right_Front_Arm_Shin_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Shin_GeoShape.iog.og[0].gco";
connectAttr "Right_Front_Fore_Arm_Geo.ro" "Right_Front_Fore_Arm_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Front_Fore_Arm_Geo.pim" "Right_Front_Fore_Arm_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Fore_Arm_Geo.rp" "Right_Front_Fore_Arm_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Front_Fore_Arm_Geo.rpt" "Right_Front_Fore_Arm_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.t" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.rp" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.rpt" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.r" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.ro" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.s" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.pm" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.jo" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.ssc" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Front_Arm_Elbow_IK_Jnt.is" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Front_Fore_Arm_Geo_parentConstraint1.w0" "Right_Front_Fore_Arm_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo_parentConstraint1.ctx" "Right_Front_Arm_Toe_1_Geo.tx"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo_parentConstraint1.cty" "Right_Front_Arm_Toe_1_Geo.ty"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo_parentConstraint1.ctz" "Right_Front_Arm_Toe_1_Geo.tz"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo_parentConstraint1.crx" "Right_Front_Arm_Toe_1_Geo.rx"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo_parentConstraint1.cry" "Right_Front_Arm_Toe_1_Geo.ry"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo_parentConstraint1.crz" "Right_Front_Arm_Toe_1_Geo.rz"
		;
connectAttr "groupParts103.og" "Right_Front_Arm_Heel_to_Toe_Tip1_GeoShape.i";
connectAttr "groupId347.id" "Right_Front_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts154.og" "Right_Front_Arm_Toe_Tip1_GeoShape.i";
connectAttr "groupId398.id" "Right_Front_Arm_Toe_Tip1_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Toe_Tip1_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo.ro" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo.pim" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo.rp" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo.rpt" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.t" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.rp" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.rpt" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.r" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.ro" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.s" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.pm" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.jo" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.ssc" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Front_Arm_Thumb1_IK_Jnt.is" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Front_Arm_Toe_1_Geo_parentConstraint1.w0" "Right_Front_Arm_Toe_1_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo_parentConstraint1.ctx" "Right_Front_Arm_Toe_2_Geo.tx"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo_parentConstraint1.cty" "Right_Front_Arm_Toe_2_Geo.ty"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo_parentConstraint1.ctz" "Right_Front_Arm_Toe_2_Geo.tz"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo_parentConstraint1.crx" "Right_Front_Arm_Toe_2_Geo.rx"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo_parentConstraint1.cry" "Right_Front_Arm_Toe_2_Geo.ry"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo_parentConstraint1.crz" "Right_Front_Arm_Toe_2_Geo.rz"
		;
connectAttr "groupParts106.og" "Right_Front_Arm_Heel_to_Toe_Tip2_GeoShape.i";
connectAttr "groupId350.id" "Right_Front_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts145.og" "Right_Front_Arm_Toe_Tip2_GeoShape.i";
connectAttr "groupId389.id" "Right_Front_Arm_Toe_Tip2_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Toe_Tip2_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo.ro" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo.pim" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo.rp" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo.rpt" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.crt"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.t" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.rp" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.rpt" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.r" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.ro" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.s" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.pm" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.jo" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.ssc" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "Right_Front_Arm_MidFinger1_IK_Jnt.is" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Front_Arm_Toe_2_Geo_parentConstraint1.w0" "Right_Front_Arm_Toe_2_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo_parentConstraint1.ctx" "Right_Front_Arm_Toe_3_Geo.tx"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo_parentConstraint1.cty" "Right_Front_Arm_Toe_3_Geo.ty"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo_parentConstraint1.ctz" "Right_Front_Arm_Toe_3_Geo.tz"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo_parentConstraint1.crx" "Right_Front_Arm_Toe_3_Geo.rx"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo_parentConstraint1.cry" "Right_Front_Arm_Toe_3_Geo.ry"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo_parentConstraint1.crz" "Right_Front_Arm_Toe_3_Geo.rz"
		;
connectAttr "groupParts109.og" "Right_Front_Arm_Heel_to_Toe_Tip3_GeoShape.i";
connectAttr "groupId353.id" "Right_Front_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gid"
		;
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "groupParts151.og" "Right_Front_Arm_Toe_Tip3_GeoShape.i";
connectAttr "groupId395.id" "Right_Front_Arm_Toe_Tip3_GeoShape.iog.og[0].gid";
connectAttr "SpiderBot_SG.mwc" "Right_Front_Arm_Toe_Tip3_GeoShape.iog.og[0].gco"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo.ro" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.cro"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo.pim" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo.rp" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.crp"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo.rpt" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.crt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.t" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.rp" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.rpt" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.r" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.ro" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.s" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.pm" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.jo" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tjo"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.ssc" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tsc"
		;
connectAttr "|Spider_Rig|Master_Jnt|Root_Jnt|Right_Front_Arm_Shoulder_IK_Jnt1|Right_Front_Arm_Elbow_IK_Jnt|Right_Front_Arm_Wrist_IK_Jnt|Right_Front_Arm_Pinky1_IK_Jnt.is" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tis"
		;
connectAttr "Right_Front_Arm_Toe_3_Geo_parentConstraint1.w0" "Right_Front_Arm_Toe_3_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle3.oc" "Master_CtrlShape.cr";
connectAttr "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.ctx" "Right_Back_Arm_Wrist_IK_CTRL.tx"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cty" "Right_Back_Arm_Wrist_IK_CTRL.ty"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.ctz" "Right_Back_Arm_Wrist_IK_CTRL.tz"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crx" "Right_Back_Arm_Wrist_IK_CTRL.rx"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cry" "Right_Back_Arm_Wrist_IK_CTRL.ry"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crz" "Right_Back_Arm_Wrist_IK_CTRL.rz"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.msg" "Right_Back_Arm_IK_Handle.hsj";
connectAttr "effector4.hp" "Right_Back_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Right_Back_Arm_IK_Handle.hsv";
connectAttr "Right_Back_Arm_IK_Handle_poleVectorConstraint1.ctx" "Right_Back_Arm_IK_Handle.pvx"
		;
connectAttr "Right_Back_Arm_IK_Handle_poleVectorConstraint1.cty" "Right_Back_Arm_IK_Handle.pvy"
		;
connectAttr "Right_Back_Arm_IK_Handle_poleVectorConstraint1.ctz" "Right_Back_Arm_IK_Handle.pvz"
		;
connectAttr "Right_Back_Arm_IK_Handle.pim" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.pm" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "Right_Back_Arm_Shoulder_IK_Jnt.t" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Elbow_IK_CTRL.t" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Right_Back_Arm_Elbow_IK_CTRL.rp" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Right_Back_Arm_Elbow_IK_CTRL.rpt" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Right_Back_Arm_Elbow_IK_CTRL.pm" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_IK_Handle_poleVectorConstraint1.w0" "Right_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL.ro" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cro"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL.pim" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cpim"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL.rp" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crp"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL.rpt" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crt"
		;
connectAttr "AllFeet_Ctrl.t" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tt"
		;
connectAttr "AllFeet_Ctrl.rp" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trp"
		;
connectAttr "AllFeet_Ctrl.rpt" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trt"
		;
connectAttr "AllFeet_Ctrl.r" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tr"
		;
connectAttr "AllFeet_Ctrl.ro" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tro"
		;
connectAttr "AllFeet_Ctrl.s" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].ts"
		;
connectAttr "AllFeet_Ctrl.pm" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.w0" "Right_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.ctx" "Right_Middle_Arm_Wrist_IK_CTRL.tx"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cty" "Right_Middle_Arm_Wrist_IK_CTRL.ty"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.ctz" "Right_Middle_Arm_Wrist_IK_CTRL.tz"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crx" "Right_Middle_Arm_Wrist_IK_CTRL.rx"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cry" "Right_Middle_Arm_Wrist_IK_CTRL.ry"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crz" "Right_Middle_Arm_Wrist_IK_CTRL.rz"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.msg" "Right_Middle_Arm_IK_Handle.hsj"
		;
connectAttr "effector5.hp" "Right_Middle_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Right_Middle_Arm_IK_Handle.hsv";
connectAttr "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.ctx" "Right_Middle_Arm_IK_Handle.pvx"
		;
connectAttr "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.cty" "Right_Middle_Arm_IK_Handle.pvy"
		;
connectAttr "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.ctz" "Right_Middle_Arm_IK_Handle.pvz"
		;
connectAttr "Right_Middle_Arm_IK_Handle.pim" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.pm" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "Right_Middle_Arm_Shoulder_IK_Jnt.t" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_CTRL.t" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_CTRL.rp" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_CTRL.rpt" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Right_Middle_Arm_Elbow_IK_CTRL.pm" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.w0" "Right_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL.ro" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cro"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL.pim" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cpim"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL.rp" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crp"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL.rpt" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crt"
		;
connectAttr "AllFeet_Ctrl.t" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tt"
		;
connectAttr "AllFeet_Ctrl.rp" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trp"
		;
connectAttr "AllFeet_Ctrl.rpt" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trt"
		;
connectAttr "AllFeet_Ctrl.r" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tr"
		;
connectAttr "AllFeet_Ctrl.ro" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tro"
		;
connectAttr "AllFeet_Ctrl.s" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].ts"
		;
connectAttr "AllFeet_Ctrl.pm" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.w0" "Right_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.ctx" "Right_Front_Arm_Wrist_IK_CTRL.tx"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cty" "Right_Front_Arm_Wrist_IK_CTRL.ty"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.ctz" "Right_Front_Arm_Wrist_IK_CTRL.tz"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crx" "Right_Front_Arm_Wrist_IK_CTRL.rx"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cry" "Right_Front_Arm_Wrist_IK_CTRL.ry"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crz" "Right_Front_Arm_Wrist_IK_CTRL.rz"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.msg" "Right_Front_Arm_IK_Handle.hsj"
		;
connectAttr "effector6.hp" "Right_Front_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Right_Front_Arm_IK_Handle.hsv";
connectAttr "Right_Front_Arm_IK_Handle_poleVectorConstraint1.ctx" "Right_Front_Arm_IK_Handle.pvx"
		;
connectAttr "Right_Front_Arm_IK_Handle_poleVectorConstraint1.cty" "Right_Front_Arm_IK_Handle.pvy"
		;
connectAttr "Right_Front_Arm_IK_Handle_poleVectorConstraint1.ctz" "Right_Front_Arm_IK_Handle.pvz"
		;
connectAttr "Right_Front_Arm_IK_Handle.pim" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.pm" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "Right_Front_Arm_Shoulder_IK_Jnt1.t" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Offset_Grp|Right_Front_Arm_Shoulder_IK_CTRL.t" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Offset_Grp|Right_Front_Arm_Shoulder_IK_CTRL.rp" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Offset_Grp|Right_Front_Arm_Shoulder_IK_CTRL.rpt" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "|Spider_Rig|Controls|Master_Ctrl_Grp|Master_Ctrl|Root_Ctrl_Grp|Root_Ctrl|Right_Front_Arm_IK_Master_Ctrl_Grp|Right_Front_Arm_Elbow_IK_Elbow_IK_PV_CTRL_Grp|Right_Front_Arm_Shoulder_IK_CTRL_Offset_Grp|Right_Front_Arm_Shoulder_IK_CTRL.pm" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_IK_Handle_poleVectorConstraint1.w0" "Right_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL.ro" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cro"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL.pim" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cpim"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL.rp" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crp"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL.rpt" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crt"
		;
connectAttr "AllFeet_Ctrl.t" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tt"
		;
connectAttr "AllFeet_Ctrl.rp" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trp"
		;
connectAttr "AllFeet_Ctrl.rpt" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trt"
		;
connectAttr "AllFeet_Ctrl.r" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tr"
		;
connectAttr "AllFeet_Ctrl.ro" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tro"
		;
connectAttr "AllFeet_Ctrl.s" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].ts"
		;
connectAttr "AllFeet_Ctrl.pm" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tpm"
		;
connectAttr "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.w0" "Right_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.ctx" "Left_Back_Arm_Wrist_IK_CTRL.tx"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cty" "Left_Back_Arm_Wrist_IK_CTRL.ty"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.ctz" "Left_Back_Arm_Wrist_IK_CTRL.tz"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crx" "Left_Back_Arm_Wrist_IK_CTRL.rx"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cry" "Left_Back_Arm_Wrist_IK_CTRL.ry"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crz" "Left_Back_Arm_Wrist_IK_CTRL.rz"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.msg" "Left_Back_Arm_IK_Handle.hsj";
connectAttr "effector3.hp" "Left_Back_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Left_Back_Arm_IK_Handle.hsv";
connectAttr "Left_Back_Arm_IK_Handle_poleVectorConstraint1.ctx" "Left_Back_Arm_IK_Handle.pvx"
		;
connectAttr "Left_Back_Arm_IK_Handle_poleVectorConstraint1.cty" "Left_Back_Arm_IK_Handle.pvy"
		;
connectAttr "Left_Back_Arm_IK_Handle_poleVectorConstraint1.ctz" "Left_Back_Arm_IK_Handle.pvz"
		;
connectAttr "Left_Back_Arm_IK_Handle.pim" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.pm" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "Left_Back_Arm_Shoulder_IK_Jnt.t" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Elbow_IK_CTRL.t" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Left_Back_Arm_Elbow_IK_CTRL.rp" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Left_Back_Arm_Elbow_IK_CTRL.rpt" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Left_Back_Arm_Elbow_IK_CTRL.pm" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_IK_Handle_poleVectorConstraint1.w0" "Left_Back_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL.ro" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cro"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL.pim" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.cpim"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL.rp" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crp"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL.rpt" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.crt"
		;
connectAttr "AllFeet_Ctrl.t" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tt"
		;
connectAttr "AllFeet_Ctrl.rp" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trp"
		;
connectAttr "AllFeet_Ctrl.rpt" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trt"
		;
connectAttr "AllFeet_Ctrl.r" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tr"
		;
connectAttr "AllFeet_Ctrl.ro" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tro"
		;
connectAttr "AllFeet_Ctrl.s" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].ts"
		;
connectAttr "AllFeet_Ctrl.pm" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.w0" "Left_Back_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.ctx" "Left_Middle_Arm_Wrist_IK_CTRL.tx"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cty" "Left_Middle_Arm_Wrist_IK_CTRL.ty"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.ctz" "Left_Middle_Arm_Wrist_IK_CTRL.tz"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crx" "Left_Middle_Arm_Wrist_IK_CTRL.rx"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cry" "Left_Middle_Arm_Wrist_IK_CTRL.ry"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crz" "Left_Middle_Arm_Wrist_IK_CTRL.rz"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.msg" "Left_Middle_Arm_IK_Handle.hsj"
		;
connectAttr "effector2.hp" "Left_Middle_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Left_Middle_Arm_IK_Handle.hsv";
connectAttr "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.ctx" "Left_Middle_Arm_IK_Handle.pvx"
		;
connectAttr "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.cty" "Left_Middle_Arm_IK_Handle.pvy"
		;
connectAttr "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.ctz" "Left_Middle_Arm_IK_Handle.pvz"
		;
connectAttr "Left_Middle_Arm_IK_Handle.pim" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.pm" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "Left_Middle_Arm_Shoulder_IK_Jnt.t" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_CTRL.t" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_CTRL.rp" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_CTRL.rpt" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Left_Middle_Arm_Elbow_IK_CTRL.pm" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.w0" "Left_Middle_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL.ro" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cro"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL.pim" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.cpim"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL.rp" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crp"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL.rpt" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.crt"
		;
connectAttr "AllFeet_Ctrl.t" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tt"
		;
connectAttr "AllFeet_Ctrl.rp" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trp"
		;
connectAttr "AllFeet_Ctrl.rpt" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trt"
		;
connectAttr "AllFeet_Ctrl.r" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tr"
		;
connectAttr "AllFeet_Ctrl.ro" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tro"
		;
connectAttr "AllFeet_Ctrl.s" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].ts"
		;
connectAttr "AllFeet_Ctrl.pm" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.w0" "Left_Middle_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tw"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.ctx" "Left_Front_Arm_Wrist_IK_CTRL.tx"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cty" "Left_Front_Arm_Wrist_IK_CTRL.ty"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.ctz" "Left_Front_Arm_Wrist_IK_CTRL.tz"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crx" "Left_Front_Arm_Wrist_IK_CTRL.rx"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cry" "Left_Front_Arm_Wrist_IK_CTRL.ry"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crz" "Left_Front_Arm_Wrist_IK_CTRL.rz"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.msg" "Left_Front_Arm_IK_Handle.hsj"
		;
connectAttr "effector1.hp" "Left_Front_Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Left_Front_Arm_IK_Handle.hsv";
connectAttr "Left_Front_Arm_IK_Handle_poleVectorConstraint1.ctx" "Left_Front_Arm_IK_Handle.pvx"
		;
connectAttr "Left_Front_Arm_IK_Handle_poleVectorConstraint1.cty" "Left_Front_Arm_IK_Handle.pvy"
		;
connectAttr "Left_Front_Arm_IK_Handle_poleVectorConstraint1.ctz" "Left_Front_Arm_IK_Handle.pvz"
		;
connectAttr "Left_Front_Arm_IK_Handle.pim" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.pm" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.ps"
		;
connectAttr "Left_Front_Arm_Shoulder_IK_Jnt1.t" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.crp"
		;
connectAttr "Left_Front_Arm_Elbow_IK_PV_CTRL.t" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Left_Front_Arm_Elbow_IK_PV_CTRL.rp" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Left_Front_Arm_Elbow_IK_PV_CTRL.rpt" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Left_Front_Arm_Elbow_IK_PV_CTRL.pm" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_IK_Handle_poleVectorConstraint1.w0" "Left_Front_Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle2.oc" "Left_Front_Arm_Toe_1_CtrlShape.cr";
connectAttr "Left_Front_Arm_Wrist_IK_CTRL.ro" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cro"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL.pim" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.cpim"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL.rp" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crp"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL.rpt" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.crt"
		;
connectAttr "AllFeet_Ctrl.t" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tt"
		;
connectAttr "AllFeet_Ctrl.rp" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trp"
		;
connectAttr "AllFeet_Ctrl.rpt" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].trt"
		;
connectAttr "AllFeet_Ctrl.r" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tr"
		;
connectAttr "AllFeet_Ctrl.ro" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tro"
		;
connectAttr "AllFeet_Ctrl.s" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].ts"
		;
connectAttr "AllFeet_Ctrl.pm" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tpm"
		;
connectAttr "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.w0" "Left_Front_Arm_Wrist_IK_CTRL_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle1.oc" "Left_Front_Arm_Shoulder_IK_CTRLShape.cr";
connectAttr "SpiderBot_Shader.oc" "SpiderBot_SG.ss";
connectAttr "groupId129.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId130.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId131.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId133.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId134.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId142.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId143.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId144.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId146.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId147.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId155.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId156.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId157.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId159.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId160.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId207.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId208.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId209.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId211.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId212.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId220.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId221.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId222.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId224.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId225.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId233.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId234.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId235.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId237.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId238.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId245.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId248.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId251.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId254.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId257.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId260.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId263.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId266.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId269.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId272.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId275.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId278.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId281.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId284.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId287.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId290.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId293.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId296.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId299.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId302.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId305.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId308.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId311.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId314.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId317.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId320.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId323.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId326.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId329.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId332.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId335.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId338.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId341.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId344.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId347.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId350.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId353.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId356.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId359.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId362.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId365.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId368.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId371.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId374.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId377.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId380.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId383.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId386.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId389.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId392.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId395.msg" "SpiderBot_SG.gn" -na;
connectAttr "groupId398.msg" "SpiderBot_SG.gn" -na;
connectAttr "Left_Front_Arm_Thigh_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Ankle_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Ankle_to_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Front_Arm_Calf_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Shin_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Middle_Arm_Thigh_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Middle_Arm_Ankle_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Middle_Arm_Ankle_to_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Middle_Arm_Calf_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "|Spider_Rig|SpiderBot_Geo|Left_Middle_Arm_Geo|Left_Middle_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo|Left_Middle_Arm_Shin_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Back_Arm_Thigh_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Back_Arm_Ankle_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Back_Arm_Ankle_to_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" 
		-na;
connectAttr "Left_Back_Arm_Calf_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "|Spider_Rig|SpiderBot_Geo|Left_Back_Arm_Geo|Left_Back_Fore_Arm_Geo|Left_Middle_Arm_Shin_Geo|Left_Middle_Arm_Shin_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Back_Arm_Thigh_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Back_Arm_Ankle_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Back_Arm_Ankle_to_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Back_Arm_Calf_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "|Spider_Rig|SpiderBot_Geo|Right_Back_Arm_Geo|Right_Back_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo|Right_Middle_Arm_Shin_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Middle_Arm_Thigh_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Middle_Arm_Ankle_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Middle_Arm_Ankle_to_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Middle_Arm_Calf_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "|Spider_Rig|SpiderBot_Geo|Right_Middle_Arm_Geo|Right_Middle_Fore_Arm_Geo|Right_Middle_Arm_Shin_Geo|Right_Middle_Arm_Shin_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Front_Arm_Thigh_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Front_Arm_Ankle_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Front_Arm_Ankle_to_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Front_Arm_Calf_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Front_Arm_Shin_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Back_Arm_Knee_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Middle_Arm_Knee_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Knee_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Front_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Front_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Back_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Back_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Back_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Left_Front_Arm_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Middle_Arm_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Left_Middle_Arm_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Left_Middle_Arm_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Left_Back_Arm_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Back_Arm_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Back_Arm_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Back_Arm_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Middle_Arm_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Left_Front_Arm_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Back_Arm_Knee_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Middle_Arm_Knee_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Front_Arm_Knee_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Front_Arm_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Middle_Arm_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Back_Arm_Heel_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Front_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Front_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Front_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Middle_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Middle_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Middle_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Back_Arm_Heel_to_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Back_Arm_Heel_to_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Back_Arm_Heel_to_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm"
		 -na;
connectAttr "Right_Back_Arm_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Back_Arm_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Back_Arm_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na;
connectAttr "Right_Middle_Arm_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Right_Middle_Arm_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Right_Front_Arm_Toe_Tip2_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Right_Middle_Arm_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Right_Front_Arm_Toe_Tip3_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "Right_Front_Arm_Toe_Tip1_GeoShape.iog.og[0]" "SpiderBot_SG.dsm" -na
		;
connectAttr "SpiderBot_SG.msg" "materialInfo1.sg";
connectAttr "SpiderBot_Shader.msg" "materialInfo1.m";
connectAttr "SpiderBot1F.msg" "materialInfo1.t" -na;
connectAttr "SpiderBot1F.oc" "SpiderBot_Shader.c";
connectAttr "SpiderBot_P2D.c" "SpiderBot1F.c";
connectAttr "SpiderBot_P2D.tf" "SpiderBot1F.tf";
connectAttr "SpiderBot_P2D.rf" "SpiderBot1F.rf";
connectAttr "SpiderBot_P2D.s" "SpiderBot1F.s";
connectAttr "SpiderBot_P2D.wu" "SpiderBot1F.wu";
connectAttr "SpiderBot_P2D.wv" "SpiderBot1F.wv";
connectAttr "SpiderBot_P2D.re" "SpiderBot1F.re";
connectAttr "SpiderBot_P2D.of" "SpiderBot1F.of";
connectAttr "SpiderBot_P2D.r" "SpiderBot1F.ro";
connectAttr "SpiderBot_P2D.o" "SpiderBot1F.uv";
connectAttr "SpiderBot_P2D.ofs" "SpiderBot1F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "SpiderBot1F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "SpiderBot1F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "SpiderBot1F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "SpiderBot1F.ws";
relationship "link" ":lightLinker1" "SpiderBot_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SpiderBot_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "SpiderBot_P2D.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "SpiderBot1F.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "SpiderBot_SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "SpiderBot_Shader.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "polySurfaceShape20Orig.w" "groupParts1.ig";
connectAttr "groupId245.id" "groupParts1.gi";
connectAttr "polySurfaceShape19Orig.w" "groupParts4.ig";
connectAttr "groupId248.id" "groupParts4.gi";
connectAttr "polySurfaceShape18Orig.w" "groupParts7.ig";
connectAttr "groupId251.id" "groupParts7.gi";
connectAttr "polySurfaceShape17Orig.w" "groupParts10.ig";
connectAttr "groupId254.id" "groupParts10.gi";
connectAttr "Left_Back_Arm_Knee_GeoShapeOrig.w" "groupParts13.ig";
connectAttr "groupId257.id" "groupParts13.gi";
connectAttr "Left_Middle_Arm_Knee_GeoShapeOrig.w" "groupParts16.ig";
connectAttr "groupId260.id" "groupParts16.gi";
connectAttr "Left_Front_Arm_Knee_GeoShapeOrig.w" "groupParts19.ig";
connectAttr "groupId263.id" "groupParts19.gi";
connectAttr "Left_Front_Arm_Heel_to_Toe_Tip2_GeoShapeOrig.w" "groupParts22.ig";
connectAttr "groupId266.id" "groupParts22.gi";
connectAttr "Left_Front_Arm_Heel_to_Toe_Tip1_GeoShapeOrig.w" "groupParts25.ig";
connectAttr "groupId269.id" "groupParts25.gi";
connectAttr "Left_Front_Arm_Heel_to_Toe_Tip3_GeoShapeOrig.w" "groupParts28.ig";
connectAttr "groupId272.id" "groupParts28.gi";
connectAttr "Left_Middle_Arm_Heel_to_Toe_Tip1_GeoShapeOrig.w" "groupParts31.ig";
connectAttr "groupId275.id" "groupParts31.gi";
connectAttr "Left_Middle_Arm_Heel_to_Toe_Tip2_GeoShapeOrig.w" "groupParts34.ig";
connectAttr "groupId278.id" "groupParts34.gi";
connectAttr "Left_Middle_Arm_Heel_to_Toe_Tip3_GeoShapeOrig.w" "groupParts37.ig";
connectAttr "groupId281.id" "groupParts37.gi";
connectAttr "Left_Back_Arm_Heel_to_Toe_Tip1_GeoShapeOrig.w" "groupParts40.ig";
connectAttr "groupId284.id" "groupParts40.gi";
connectAttr "Left_Back_Arm_Heel_to_Toe_Tip3_GeoShapeOrig.w" "groupParts43.ig";
connectAttr "groupId287.id" "groupParts43.gi";
connectAttr "Left_Back_Arm_Heel_to_Toe_Tip2_GeoShapeOrig.w" "groupParts46.ig";
connectAttr "groupId290.id" "groupParts46.gi";
connectAttr "Left_Front_Arm_Toe_Tip2_GeoShapeOrig.w" "groupParts49.ig";
connectAttr "groupId293.id" "groupParts49.gi";
connectAttr "Left_Front_Arm_Toe_Tip1_GeoShapeOrig.w" "groupParts52.ig";
connectAttr "groupId296.id" "groupParts52.gi";
connectAttr "Left_Front_Arm_Toe_Tip3_GeoShapeOrig.w" "groupParts55.ig";
connectAttr "groupId299.id" "groupParts55.gi";
connectAttr "Left_Middle_Arm_Toe_Tip1_GeoShapeOrig.w" "groupParts58.ig";
connectAttr "groupId302.id" "groupParts58.gi";
connectAttr "Left_Middle_Arm_Toe_Tip3_GeoShapeOrig.w" "groupParts61.ig";
connectAttr "groupId305.id" "groupParts61.gi";
connectAttr "Left_Middle_Arm_Toe_Tip2_GeoShapeOrig.w" "groupParts64.ig";
connectAttr "groupId308.id" "groupParts64.gi";
connectAttr "Left_Back_Arm_Toe_Tip2_GeoShapeOrig.w" "groupParts67.ig";
connectAttr "groupId311.id" "groupParts67.gi";
connectAttr "Left_Back_Arm_Toe_Tip1_GeoShapeOrig.w" "groupParts70.ig";
connectAttr "groupId314.id" "groupParts70.gi";
connectAttr "Left_Back_Arm_Toe_Tip3_GeoShapeOrig.w" "groupParts73.ig";
connectAttr "groupId317.id" "groupParts73.gi";
connectAttr "Left_Back_Arm_Heel_GeoShapeOrig.w" "groupParts76.ig";
connectAttr "groupId320.id" "groupParts76.gi";
connectAttr "Left_Middle_Arm_Heel_GeoShapeOrig.w" "groupParts79.ig";
connectAttr "groupId323.id" "groupParts79.gi";
connectAttr "Left_Front_Arm_Heel_GeoShapeOrig.w" "groupParts82.ig";
connectAttr "groupId326.id" "groupParts82.gi";
connectAttr "Right_Back_Arm_Knee_GeoShapeOrig.w" "groupParts85.ig";
connectAttr "groupId329.id" "groupParts85.gi";
connectAttr "Right_Middle_Arm_Knee_GeoShapeOrig.w" "groupParts88.ig";
connectAttr "groupId332.id" "groupParts88.gi";
connectAttr "Right_Front_Arm_Knee_GeoShapeOrig.w" "groupParts91.ig";
connectAttr "groupId335.id" "groupParts91.gi";
connectAttr "Right_Front_Arm_Heel_GeoShapeOrig.w" "groupParts94.ig";
connectAttr "groupId338.id" "groupParts94.gi";
connectAttr "Right_Middle_Arm_Heel_GeoShapeOrig.w" "groupParts97.ig";
connectAttr "groupId341.id" "groupParts97.gi";
connectAttr "Right_Back_Arm_Heel_GeoShapeOrig.w" "groupParts100.ig";
connectAttr "groupId344.id" "groupParts100.gi";
connectAttr "Right_Front_Arm_Heel_to_Toe_Tip1_GeoShapeOrig.w" "groupParts103.ig"
		;
connectAttr "groupId347.id" "groupParts103.gi";
connectAttr "Right_Front_Arm_Heel_to_Toe_Tip2_GeoShapeOrig.w" "groupParts106.ig"
		;
connectAttr "groupId350.id" "groupParts106.gi";
connectAttr "Right_Front_Arm_Heel_to_Toe_Tip3_GeoShapeOrig.w" "groupParts109.ig"
		;
connectAttr "groupId353.id" "groupParts109.gi";
connectAttr "Right_Middle_Arm_Heel_to_Toe_Tip1_GeoShapeOrig.w" "groupParts112.ig"
		;
connectAttr "groupId356.id" "groupParts112.gi";
connectAttr "Right_Middle_Arm_Heel_to_Toe_Tip3_GeoShapeOrig.w" "groupParts115.ig"
		;
connectAttr "groupId359.id" "groupParts115.gi";
connectAttr "Right_Middle_Arm_Heel_to_Toe_Tip2_GeoShapeOrig.w" "groupParts118.ig"
		;
connectAttr "groupId362.id" "groupParts118.gi";
connectAttr "Right_Back_Arm_Heel_to_Toe_Tip3_GeoShapeOrig.w" "groupParts121.ig";
connectAttr "groupId365.id" "groupParts121.gi";
connectAttr "Right_Back_Arm_Heel_to_Toe_Tip1_GeoShapeOrig.w" "groupParts124.ig";
connectAttr "groupId368.id" "groupParts124.gi";
connectAttr "Right_Back_Arm_Heel_to_Toe_Tip2_GeoShapeOrig.w" "groupParts127.ig";
connectAttr "groupId371.id" "groupParts127.gi";
connectAttr "Right_Back_Arm_Toe_Tip2_GeoShapeOrig.w" "groupParts130.ig";
connectAttr "groupId374.id" "groupParts130.gi";
connectAttr "Right_Back_Arm_Toe_Tip3_GeoShapeOrig.w" "groupParts133.ig";
connectAttr "groupId377.id" "groupParts133.gi";
connectAttr "Right_Back_Arm_Toe_Tip1_GeoShapeOrig.w" "groupParts136.ig";
connectAttr "groupId380.id" "groupParts136.gi";
connectAttr "Right_Middle_Arm_Toe_Tip3_GeoShapeOrig.w" "groupParts139.ig";
connectAttr "groupId383.id" "groupParts139.gi";
connectAttr "Right_Middle_Arm_Toe_Tip2_GeoShapeOrig.w" "groupParts142.ig";
connectAttr "groupId386.id" "groupParts142.gi";
connectAttr "Right_Front_Arm_Toe_Tip2_GeoShapeOrig.w" "groupParts145.ig";
connectAttr "groupId389.id" "groupParts145.gi";
connectAttr "Right_Middle_Arm_Toe_Tip1_GeoShapeOrig.w" "groupParts148.ig";
connectAttr "groupId392.id" "groupParts148.gi";
connectAttr "Right_Front_Arm_Toe_Tip3_GeoShapeOrig.w" "groupParts151.ig";
connectAttr "groupId395.id" "groupParts151.gi";
connectAttr "Right_Front_Arm_Toe_Tip1_GeoShapeOrig.w" "groupParts154.ig";
connectAttr "groupId398.id" "groupParts154.gi";
connectAttr "SpiderBot_SG.pa" ":renderPartition.st" -na;
connectAttr "SpiderBot_Shader.msg" ":defaultShaderList1.s" -na;
connectAttr "SpiderBot_P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SpiderBot1F.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of SpiderBot.ma
