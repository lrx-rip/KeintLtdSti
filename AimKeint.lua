local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\162\230","\60\140\200\99\164"),function(v42) if (v9(v42,5 -3 )==81) then local v94=0;while true do if (v94==0) then v30=v8(v11(v42,1,1));return "";end end else local v95=0;local v96;while true do if (v95==0) then v96=v10(v8(v42,16));if v30 then local v120=0;local v121;while true do if (v120==1) then return v121;end if (v120==0) then v121=v13(v96,v30);v30=nil;v120=1;end end else return v96;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v97=0;local v98;while true do if (v97==0) then v98=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v98-(v98%1) ;end end else local v99=0;local v100;while true do if (v99==0) then v100=2^(v44-(2 -1)) ;return (((v43%(v100 + v100))>=v100) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (1==v46) then return v47;end if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51=0;local v52;local v53;local v54;local v55;while true do if (v51==1) then return (v55 * 16777216) + (v54 * 65536) + (v53 * 256) + v52 ;end if (v51==0) then v52,v53,v54,v55=v9(v27,v29,v29 + (5 -2) );v29=v29 + 4 ;v51=1;end end end local function v35() local v56=0;local v57;local v58;local v59;local v60;local v61;local v62;while true do if (v56==1) then v59=1;v60=(v31(v58,1,51 -31 ) * (2^32)) + v57 ;v56=2;end if (0==v56) then v57=v34();v58=v34();v56=1;end if (3==v56) then if (v61==0) then if (v60==0) then return v62 * 0 ;else v61=1;v59=0;end elseif (v61==2047) then return ((v60==0) and (v62 * (1/0))) or (v62 * NaN) ;end return v16(v62,v61-1023 ) * (v59 + (v60/(2^(671 -(555 + 64))))) ;end if (v56==2) then v61=v31(v58,21,31);v62=((v31(v58,32)==1) and  -1) or 1 ;v56=3;end end end local function v36(v63) local v64=0;local v65;local v66;while true do if (1==v64) then v65=v11(v27,v29,(v29 + v63) -1 );v29=v29 + v63 ;v64=2;end if (v64==0) then v65=nil;if  not v63 then v63=v34();if (v63==0) then return "";end end v64=1;end if (v64==3) then return v14(v66);end if (v64==2) then v66={};for v105=1, #v65 do v66[v105]=v10(v9(v11(v65,v105,v105)));end v64=3;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v67=0;local v68;local v69;local v70;local v71;local v72;local v73;while true do if (v67==1) then v72=v34();v73={};for v107=1,v72 do local v108=0;local v109;local v110;while true do if (v108==1) then if (v109==1) then v110=v32()~=0 ;elseif (v109==2) then v110=v35();elseif (v109==3) then v110=v36();end v73[v107]=v110;break;end if (v108==0) then v109=v32();v110=nil;v108=1;end end end v71[3]=v32();v67=2;end if (2==v67) then for v111=1,v34() do local v112=0;local v113;while true do if (0==v112) then v113=v32();if (v31(v113,1,1)==0) then local v123=v31(v113,2,3);local v124=v31(v113,4,6);local v125={v33(),v33(),nil,nil};if (v123==(568 -(367 + 201))) then local v127=0;while true do if (v127==0) then v125[3]=v33();v125[931 -(214 + 713) ]=v33();break;end end elseif (v123==1) then v125[1 + 2 ]=v34();elseif (v123==2) then v125[3]=v34() -(2^16) ;elseif (v123==3) then local v490=0;while true do if (0==v490) then v125[3]=v34() -(2^16) ;v125[4]=v33();break;end end end if (v31(v124,1,1)==1) then v125[2]=v73[v125[1 + 1 ]];end if (v31(v124,2,2)==1) then v125[3]=v73[v125[3]];end if (v31(v124,3,3)==1) then v125[4]=v73[v125[4]];end v68[v111]=v125;end break;end end end for v114=878 -(282 + 595) ,v34() do v69[v114-1 ]=v39();end return v71;end if (v67==0) then v68={};v69={};v70={};v71={v68,v69,nil,v70};v67=1;end end end local function v40(v74,v75,v76) local v77=v74[1];local v78=v74[2];local v79=v74[3];return function(...) local v80=v77;local v81=v78;local v82=v79;local v83=v38;local v84=1;local v85= -1;local v86={};local v87={...};local v88=v20("#",...) -(1638 -(1523 + 114)) ;local v89={};local v90={};for v101=0,v88 do if (v101>=v82) then v86[v101-v82 ]=v87[v101 + 1 ];else v90[v101]=v87[v101 + 1 ];end end local v91=(v88-v82) + 1 ;local v92;local v93;while true do v92=v80[v84];v93=v92[1];if (v93<=23) then if (v93<=11) then if (v93<=5) then if (v93<=2) then if (v93<=0) then do return v90[v92[2]]();end elseif (v93>1) then v90[v92[2]]= #v90[v92[3]];else v90[v92[2 + 0 ]]=v76[v92[3 -0 ]];end elseif (v93<=(1068 -(68 + 997))) then v84=v92[3];elseif (v93==4) then local v204=v92[2];v90[v204](v21(v90,v204 + 1 ,v92[3]));else v90[v92[2]]=v92[3];end elseif (v93<=(1278 -(226 + 1044))) then if (v93<=6) then local v135=0;local v136;local v137;local v138;local v139;local v140;while true do if (v135==9) then v84=v84 + 1 ;v92=v80[v84];v140=v92[3 -1 ];v90[v140]=v90[v140](v21(v90,v140 + 1 ,v85));v135=10;end if (2==v135) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[120 -(32 + 85) ]]=v92[4];v84=v84 + 1 ;v135=3;end if (v135==3) then v92=v80[v84];v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v92=v80[v84];v135=4;end if (v135==0) then v136=nil;v137,v138=nil;v139=nil;v140=nil;v135=1;end if (v135==8) then v137,v138=v83(v90[v140](v21(v90,v140 + 1 ,v92[960 -(892 + 65) ])));v85=(v138 + v140) -1 ;v136=0;for v468=v140,v85 do local v469=0;while true do if (0==v469) then v136=v136 + (2 -1) ;v90[v468]=v137[v136];break;end end end v135=9;end if (v135==4) then v140=v92[2];v139=v90[v92[3]];v90[v140 + 1 + 0 ]=v139;v90[v140]=v139[v92[4]];v135=5;end if (v135==10) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v135=11;end if (12==v135) then v90[v140]=v139[v92[4]];break;end if (5==v135) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[1 + 2 ]];v84=v84 + 1 ;v135=6;end if (1==v135) then v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v76[v92[12 -9 ]];v135=2;end if (v135==7) then v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v140=v92[2];v135=8;end if (6==v135) then v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v135=7;end if (v135==11) then v92=v80[v84];v140=v92[3 -1 ];v139=v90[v92[3]];v90[v140 + (351 -(87 + 263)) ]=v139;v135=12;end end elseif (v93>7) then v90[v92[182 -(67 + 113) ]]={};else v90[v92[2]][v92[3]]=v92[4];end elseif (v93<=9) then local v141=0;local v142;local v143;local v144;local v145;while true do if (v141==3) then v90[v92[2]]=v90[v92[11 -8 ]] + v92[4] ;v84=v84 + 1 ;v92=v80[v84];v145=v92[2];v143,v144=v83(v90[v145](v21(v90,v145 + 1 ,v92[3])));v85=(v144 + v145) -1 ;v142=0;for v470=v145,v85 do v142=v142 + 1 ;v90[v470]=v143[v142];end v141=4;end if (v141==8) then v92=v80[v84];v90[v92[2]]=v90[v92[3]] + v92[4] ;v84=v84 + 1 ;v92=v80[v84];v145=v92[2];v143,v144=v83(v90[v145](v21(v90,v145 + 1 ,v92[3])));v85=(v144 + v145) -1 ;v142=0;v141=9;end if (v141==9) then for v473=v145,v85 do local v474=0;while true do if (v474==0) then v142=v142 + 1 ;v90[v473]=v143[v142];break;end end end v84=v84 + 1 ;v92=v80[v84];v145=v92[2];v143,v144=v83(v90[v145](v21(v90,v145 + 1 ,v85)));v85=(v144 + v145) -1 ;v142=0;for v475=v145,v85 do local v476=0;while true do if (v476==0) then v142=v142 + 1 ;v90[v475]=v143[v142];break;end end end v141=10;end if (v141==1) then v92=v80[v84];v90[v92[2]]=v75[v92[7 -4 ]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3 + 0 ]];v141=2;end if (v141==6) then v84=v84 + (953 -(802 + 150)) ;v92=v80[v84];v90[v92[5 -3 ]]=v90[v92[3]]%v90[v92[4]] ;v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3] + v90[v92[4]] ;v84=v84 + (1 -0) ;v92=v80[v84];v141=7;end if (v141==12) then v145=v92[2];v90[v145](v21(v90,v145 + 1 ,v85));break;end if (v141==0) then v142=nil;v143,v144=nil;v145=nil;v90[v92[2]]=v90[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3 + 0 ]];v84=v84 + 1 ;v141=1;end if (v141==2) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]];v84=v84 + 1 ;v92=v80[v84];v141=3;end if (v141==5) then v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]= #v90[v92[3]];v141=6;end if (10==v141) then v84=v84 + 1 ;v92=v80[v84];v145=v92[2];v90[v145]=v90[v145](v21(v90,v145 + 1 + 0 ,v85));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]]%v92[4] ;v84=v84 + 1 ;v141=11;end if (v141==4) then v84=v84 + 1 ;v92=v80[v84];v145=v92[2];v90[v145]=v90[v145](v21(v90,v145 + 1 ,v85));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v141=5;end if (v141==7) then v90[v92[2]]= #v90[v92[3]];v84=v84 + 1 + 0 ;v92=v80[v84];v90[v92[999 -(915 + 82) ]]=v90[v92[3]]%v90[v92[4]] ;v84=v84 + 1 ;v92=v80[v84];v90[v92[5 -3 ]]=v92[3] + v90[v92[4]] ;v84=v84 + 1 ;v141=8;end if (11==v141) then v92=v80[v84];v145=v92[2];v143,v144=v83(v90[v145](v90[v145 + 1 ]));v85=(v144 + v145) -1 ;v142=0;for v477=v145,v85 do local v478=0;while true do if (v478==0) then v142=v142 + 1 ;v90[v477]=v143[v142];break;end end end v84=v84 + 1 ;v92=v80[v84];v141=12;end end elseif (v93>10) then do return;end else v90[v92[2 -0 ]]=v90[v92[3]] + v92[4] ;end elseif (v93<=17) then if (v93<=14) then if (v93<=12) then v90[v92[2]]=v75[v92[3]];elseif (v93>13) then for v369=v92[1189 -(1069 + 118) ],v92[3] do v90[v369]=nil;end else local v211=0;local v212;local v213;while true do if (v211==0) then v212=v92[2];v213=v90[v92[3]];v211=1;end if (v211==1) then v90[v212 + (2 -1) ]=v213;v90[v212]=v213[v92[4]];break;end end end elseif (v93<=15) then v90[v92[3 -1 ]]=v90[v92[3]];elseif (v93>16) then local v214=v92[2];local v215=v90[v214 + 2 ];local v216=v90[v214] + v215 ;v90[v214]=v216;if (v215>0) then if (v216<=v90[v214 + 1 ]) then local v584=0;while true do if (v584==0) then v84=v92[3];v90[v214 + 3 ]=v216;break;end end end elseif (v216>=v90[v214 + 1 ]) then local v585=0;while true do if (v585==0) then v84=v92[3];v90[v214 + 3 ]=v216;break;end end end else local v218=0;local v219;while true do if (v218==0) then v219=v92[2];v90[v219]=v90[v219](v21(v90,v219 + 1 ,v92[3]));break;end end end elseif (v93<=20) then if (v93<=18) then local v150=0;local v151;local v152;local v153;local v154;while true do if (v150==7) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v150=8;end if (v150==0) then v151=nil;v152,v153=nil;v154=nil;v90[v92[2]]=v75[v92[1 + 2 ]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[4 -1 ]][v92[4]];v84=v84 + 1 ;v150=1;end if (v150==2) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v76[v92[3]];v84=v84 + (3 -2) ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v150=3;end if (v150==10) then v152,v153=v83(v90[v154](v21(v90,v154 + 1 ,v92[3])));v85=(v153 + v154) -1 ;v151=0;for v479=v154,v85 do local v480=0;while true do if (v480==0) then v151=v151 + 1 ;v90[v479]=v152[v151];break;end end end v84=v84 + (431 -(44 + 386)) ;v92=v80[v84];v154=v92[1488 -(998 + 488) ];v90[v154]=v90[v154](v21(v90,v154 + 1 ,v85));v150=11;end if (6==v150) then v92=v80[v84];v90[v92[444 -(416 + 26) ]]=v90[v92[3]][v92[4]];v84=v84 + (3 -2) ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v150=7;end if (v150==14) then v90[v154]=v90[v154](v21(v90,v154 + 1 ,v92[3]));v84=v84 + (773 -(201 + 571)) ;v92=v80[v84];v90[v92[2]][v92[1141 -(116 + 1022) ]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[8 -6 ]]=v75[v92[3]];v84=v84 + 1 ;v150=15;end if (v150==8) then v90[v92[2]]=v76[v92[3]];v84=v84 + 1 + 0 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[3 -1 ]]=v75[v92[441 -(145 + 293) ]];v84=v84 + 1 ;v150=9;end if (v150==3) then v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v150=4;end if (v150==4) then v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v154=v92[20 -(10 + 8) ];v90[v154]=v90[v154](v21(v90,v154 + 1 ,v92[3]));v84=v84 + (3 -2) ;v92=v80[v84];v150=5;end if (v150==11) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v150=12;end if (v150==17) then v90[v92[2]]=v90[v92[862 -(814 + 45) ]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];do return;end break;end if (v150==16) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v150=17;end if (13==v150) then v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v154=v92[2];v150=14;end if (v150==5) then v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v150=6;end if (v150==12) then v90[v92[2]]=v90[v92[3]][v92[2 + 2 ]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 + 0 ;v150=13;end if (v150==15) then v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2 + 0 ]]=v90[v92[3]][v92[4]];v84=v84 + (3 -2) ;v92=v80[v84];v90[v92[2]][v92[10 -7 ]]=v92[4];v150=16;end if (v150==9) then v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v154=v92[2];v150=10;end if (v150==1) then v92=v80[v84];v90[v92[2]]=v90[v92[3 + 0 ]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[794 -(368 + 423) ]][v92[4]];v150=2;end end elseif (v93==19) then local v220=0;local v221;local v222;local v223;while true do if (v220==1) then v223=0;for v586=v221,v92[4] do v223=v223 + 1 ;v90[v586]=v222[v223];end break;end if (0==v220) then v221=v92[2];v222={v90[v221](v90[v221 + 1 ])};v220=1;end end else local v224=v92[1 + 1 ];do return v90[v224](v21(v90,v224 + 1 ,v92[3]));end end elseif (v93<=21) then local v155=0;local v156;while true do if (v155==0) then v156=v92[2];v90[v156]=v90[v156](v21(v90,v156 + 1 ,v85));break;end end elseif (v93==22) then local v225=0;local v226;local v227;local v228;while true do if (v225==1) then v228=v90[v226 + 2 ];if (v228>0) then if (v227>v90[v226 + 1 ]) then v84=v92[3];else v90[v226 + 3 ]=v227;end elseif (v227<v90[v226 + 1 ]) then v84=v92[3];else v90[v226 + 3 ]=v227;end break;end if (v225==0) then v226=v92[2];v227=v90[v226];v225=1;end end elseif (v90[v92[2]]==v92[4]) then v84=v84 + 1 ;else v84=v92[3];end elseif (v93<=(13 + 22)) then if (v93<=29) then if (v93<=26) then if (v93<=24) then v90[v92[2]]=v90[v92[3]][v92[4]];elseif (v93>25) then if (v90[v92[2]]~=v90[v92[4]]) then v84=v84 + 1 ;else v84=v92[3];end elseif v90[v92[2]] then v84=v84 + (886 -(261 + 624)) ;else v84=v92[4 -1 ];end elseif (v93<=27) then local v159=0;local v160;local v161;while true do if (v159==0) then v160=v92[2];v161=v90[v160];v159=1;end if (v159==1) then for v484=v160 + 1 ,v85 do v15(v161,v90[v484]);end break;end end elseif (v93>28) then local v229=0;local v230;local v231;local v232;while true do if (v229==1) then v232={};v231=v18({},{[v7("\184\203\13\40\166\130\236","\194\231\148\100\70")]=function(v589,v590) local v591=0;local v592;while true do if (0==v591) then v592=v232[v590];return v592[1][v592[1425 -(630 + 793) ]];end end end,[v7("\121\115\207\166\225\193\72\72\196\187","\168\38\44\161\195\150")]=function(v593,v594,v595) local v596=v232[v594];v596[1][v596[2]]=v595;end});v229=2;end if (v229==2) then for v598=1,v92[4] do v84=v84 + 1 ;local v599=v80[v84];if (v599[1]==15) then v232[v598-1 ]={v90,v599[14 -11 ]};else v232[v598-1 ]={v75,v599[3]};end v89[ #v89 + 1 ]=v232;end v90[v92[2]]=v40(v230,v231,v76);break;end if (v229==0) then v230=v81[v92[1083 -(1020 + 60) ]];v231=nil;v229=1;end end else local v233=0;local v234;local v235;local v236;local v237;local v238;while true do if (3==v233) then v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v238=v92[1 + 1 ];v235,v236=v83(v90[v238](v21(v90,v238 + 1 ,v92[3])));v233=4;end if (v233==4) then v85=(v236 + v238) -1 ;v234=0;for v601=v238,v85 do v234=v234 + 1 ;v90[v601]=v235[v234];end v84=v84 + 1 ;v92=v80[v84];v238=v92[2];v233=5;end if (v233==2) then v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v233=3;end if (v233==6) then v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];if (v90[v92[2]]~=v90[v92[4]]) then v84=v84 + 1 ;else v84=v92[9 -6 ];end break;end if (v233==1) then v92=v80[v84];v238=v92[2];v237=v90[v92[3]];v90[v238 + 1 ]=v237;v90[v238]=v237[v92[4]];v84=v84 + 1 ;v233=2;end if (v233==0) then v234=nil;v235,v236=nil;v237=nil;v238=nil;v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v233=1;end if (v233==5) then v90[v238]=v90[v238](v21(v90,v238 + 1 ,v85));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v233=6;end end end elseif (v93<=(1779 -(760 + 987))) then if (v93<=30) then v90[v92[2]]=v92[3] + v90[v92[4]] ;elseif (v93>31) then local v239=0;local v240;while true do if (v239==0) then v240=v92[2];do return v21(v90,v240,v85);end break;end end elseif  not v90[v92[2]] then v84=v84 + 1 ;else v84=v92[3];end elseif (v93<=33) then local v163=0;local v164;while true do if (v163==0) then v164=v92[2];v90[v164](v90[v164 + (1914 -(1789 + 124)) ]);break;end end elseif (v93==(800 -(745 + 21))) then local v241=0;local v242;local v243;local v244;local v245;while true do if (v241==2) then for v604=v242,v85 do local v605=0;while true do if (v605==0) then v245=v245 + 1 ;v90[v604]=v243[v245];break;end end end break;end if (v241==0) then v242=v92[2];v243,v244=v83(v90[v242](v21(v90,v242 + 1 ,v85)));v241=1;end if (1==v241) then v85=(v244 + v242) -(1 + 0) ;v245=0;v241=2;end end else v90[v92[2]]=v90[v92[3]]%v90[v92[4]] ;end elseif (v93<=41) then if (v93<=38) then if (v93<=36) then local v165=v92[2];local v166={};for v190=1, #v89 do local v191=v89[v190];for v247=0, #v191 do local v248=0;local v249;local v250;local v251;while true do if (v248==0) then v249=v191[v247];v250=v249[1];v248=1;end if (v248==1) then v251=v249[2];if ((v250==v90) and (v251>=v165)) then local v623=0;while true do if (v623==0) then v166[v251]=v250[v251];v249[1]=v166;break;end end end break;end end end end elseif (v93==(101 -64)) then local v252;local v253;local v254,v255;local v256;v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]={};v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]];v84=v84 + (3 -2) ;v92=v80[v84];for v462=v92[2],v92[3] do v90[v462]=nil;end v84=v84 + 1 + 0 ;v92=v80[v84];v256=v92[2];v254,v255=v83(v90[v256](v21(v90,v256 + 1 ,v92[3 + 0 ])));v85=(v255 + v256) -(1056 -(87 + 968)) ;v253=0;for v464=v256,v85 do v253=v253 + 1 ;v90[v464]=v254[v253];end v84=v84 + 1 ;v92=v80[v84];v256=v92[2];v252=v90[v256];for v467=v256 + 1 ,v85 do v15(v252,v90[v467]);end else local v263=0;while true do if (v263==4) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v263=5;end if (v263==0) then v90[v92[8 -6 ]]=v76[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4 + 0 ]];v263=1;end if (1==v263) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v263=2;end if (2==v263) then v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[8 -4 ]];v84=v84 + 1 ;v92=v80[v84];v263=3;end if (5==v263) then v92=v80[v84];if  not v90[v92[2]] then v84=v84 + 1 ;else v84=v92[3];end break;end if (v263==3) then v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v263=4;end end end elseif (v93<=39) then local v167;local v168;local v167,v169;local v170;local v171;v90[v92[2]]=v76[v92[3]];v84=v84 + 1 ;v92=v80[v84];v171=v92[2];v170=v90[v92[3]];v90[v171 + 1 ]=v170;v90[v171]=v170[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + (1414 -(447 + 966)) ;v92=v80[v84];v171=v92[2];v167,v169=v83(v90[v171](v21(v90,v171 + 1 ,v92[3])));v85=(v169 + v171) -1 ;v168=0;for v192=v171,v85 do local v193=0;while true do if (v193==0) then v168=v168 + (2 -1) ;v90[v192]=v167[v168];break;end end end v84=v84 + 1 ;v92=v80[v84];v171=v92[2];v90[v171]=v90[v171](v21(v90,v171 + 1 ,v85));v84=v84 + (1818 -(1703 + 114)) ;v92=v80[v84];v171=v92[2];v170=v90[v92[3]];v90[v171 + 1 ]=v170;v90[v171]=v170[v92[4]];v84=v84 + 1 ;v92=v80[v84];v171=v92[2];v167={v90[v171](v90[v171 + 1 ])};v168=0;for v194=v171,v92[4] do local v195=0;while true do if (v195==0) then v168=v168 + 1 ;v90[v194]=v167[v168];break;end end end v84=v84 + 1 ;v92=v80[v84];v84=v92[3];elseif (v93>40) then local v264=0;local v265;local v266;local v267;while true do if (1==v264) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v264=2;end if (v264==2) then v92=v80[v84];v90[v92[2]]= #v90[v92[3]];v84=v84 + 1 ;v92=v80[v84];v264=3;end if (0==v264) then v265=nil;v266=nil;v267=nil;v90[v92[2]]={};v264=1;end if (v264==3) then v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v267=v92[2 -0 ];v264=4;end if (v264==4) then v266=v90[v267];v265=v90[v267 + 2 ];if (v265>0) then if (v266>v90[v267 + 1 ]) then v84=v92[3];else v90[v267 + 3 ]=v266;end elseif (v266<v90[v267 + 1 ]) then v84=v92[3];else v90[v267 + 3 ]=v266;end break;end end else local v268=0;local v269;local v270;local v271;local v272;while true do if (v268==2) then for v606=v269,v85 do local v607=0;while true do if (v607==0) then v272=v272 + 1 ;v90[v606]=v270[v272];break;end end end break;end if (v268==1) then v85=(v271 + v269) -(2 -1) ;v272=0;v268=2;end if (v268==0) then v269=v92[2];v270,v271=v83(v90[v269](v90[v269 + 1 ]));v268=1;end end end elseif (v93<=44) then if (v93<=42) then v90[v92[2]][v92[1 + 2 ]]=v90[v92[8 -4 ]];elseif (v93>43) then local v273=0;local v274;local v275;local v276;local v277;while true do if (v273==1) then v85=(v276 + v274) -1 ;v277=0;v273=2;end if (v273==0) then v274=v92[2];v275,v276=v83(v90[v274](v21(v90,v274 + 1 ,v92[3])));v273=1;end if (v273==2) then for v608=v274,v85 do local v609=0;while true do if (v609==0) then v277=v277 + 1 ;v90[v608]=v275[v277];break;end end end break;end end else local v278=0;local v279;local v280;local v281;local v282;while true do if (v278==6) then if (v90[v92[2]]==v92[4]) then v84=v84 + 1 ;else v84=v92[3];end break;end if (v278==3) then v92=v80[v84];v282=v92[2];v280,v281=v83(v90[v282](v21(v90,v282 + 1 ,v92[3])));v85=(v281 + v282) -1 ;v278=4;end if (v278==5) then v282=v92[378 -(85 + 291) ];v90[v282]=v90[v282](v21(v90,v282 + 1 ,v85));v84=v84 + 1 ;v92=v80[v84];v278=6;end if (v278==2) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + (15 -(9 + 5)) ;v278=3;end if (v278==0) then v279=nil;v280,v281=nil;v282=nil;v90[v92[2]]=v92[3];v278=1;end if (v278==1) then v84=v84 + 1 ;v92=v80[v84];v282=v92[2];v90[v282]=v90[v282](v21(v90,v282 + 1 ,v92[3]));v278=2;end if (v278==4) then v279=0;for v610=v282,v85 do local v611=0;while true do if (v611==0) then v279=v279 + 1 ;v90[v610]=v280[v279];break;end end end v84=v84 + 1 ;v92=v80[v84];v278=5;end end end elseif (v93<=45) then local v184=v92[2];local v185=v92[4];local v186=v184 + 2 ;local v187={v90[v184](v90[v184 + 1 ],v90[v186])};for v196=1,v185 do v90[v186 + v196 ]=v187[v196];end local v188=v187[1];if v188 then local v283=0;while true do if (v283==0) then v90[v186]=v188;v84=v92[3];break;end end else v84=v84 + 1 ;end elseif (v93==46) then local v284=0;local v285;while true do if (v284==0) then v285=v92[2];v90[v285](v21(v90,v285 + 1 ,v85));break;end end else v90[v92[2]]=v90[v92[3]]%v92[1269 -(243 + 1022) ] ;end v84=v84 + (3 -2) ;end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012263Q00013Q00206Q000200122Q000100013Q00202Q00010001000300122Q000200013Q00202Q00020002000400122Q000300053Q00062Q0003000A000100010004033Q000A0001001201000300063Q002018000400030007001201000500083Q002018000500050009001201000600083Q00201800060006000A00061D00073Q000100062Q000F3Q00064Q000F8Q000F3Q00044Q000F3Q00014Q000F3Q00024Q000F3Q00053Q001201000800013Q00201800080008000B0012010009000C3Q001201000A000D3Q00061D000B0001000100052Q000F3Q00074Q000F3Q00094Q000F3Q00084Q000F3Q000A4Q000F3Q000B4Q000F000C000B6Q000C00014Q0020000C6Q000B3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q002900025Q00122Q000300016Q00045Q00122Q000500013Q00042Q0003002100012Q000C00076Q0009000800026Q000900016Q000A00026Q000B00036Q000C00046Q000D8Q000E00063Q00202Q000F000600014Q000C000F6Q000B3Q00024Q000C00036Q000D00046Q000E00016Q000F00016Q000F0006000F00102Q000F0001000F4Q001000016Q00100006001000102Q00100001001000202Q0010001000014Q000D00106Q000C8Q000A3Q000200202Q000A000A00024Q0009000A6Q00073Q00010004110003000500012Q000C000300054Q000F000400024Q0014000300044Q002000036Q000B3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00061D5Q000100012Q000C8Q0025000100016Q000200026Q000300026Q00048Q000500036Q00068Q000700076Q000500076Q00043Q000100201800040004000100122B000500026Q00030005000200122Q000400036Q000200046Q00013Q000200262Q00010018000100040004033Q001800012Q000F00016Q000800026Q0014000100024Q002000015Q0004033Q001B00012Q000C000100046Q000100014Q002000016Q000B3Q00013Q00013Q000C3Q0003023Q005F4703083Q004865616453697A65026Q00344003083Q0044697361626C65642Q0103043Q0067616D65030A3Q0047657453657276696365030A3Q00E3D6D516E3A9D117D2C603083Q007EB1A3BB4586DBA7030D3Q0052656E6465725374652Q70656403073Q00636F2Q6E656374026Q00F03F01153Q0006193Q001300013Q0004033Q00130001001201000100013Q00300600010002000300122Q000100013Q00302Q00010004000500122Q000100063Q00202Q0001000100074Q00035Q00122Q000400083Q00122Q000500096Q000300056Q00013Q000200202Q00010001000A00202Q00010001000B00061D00033Q000100012Q000C8Q00040001000300010004033Q0014000100201800013Q000C2Q000B3Q00013Q00013Q000D3Q0003023Q005F4703083Q0044697361626C656403043Q006E65787403043Q0067616D65030A3Q004765745365727669636503073Q0013C12BDCF931DE03053Q009C43AD4AA5030A3Q00476574506C617965727303043Q004E616D6503073Q0004BB480FB9345503073Q002654D72976DC46030B3Q004C6F63616C506C6179657203053Q007063612Q6C00243Q0012013Q00013Q0020185Q00020006193Q002300013Q0004033Q002300010012013Q00033Q001227000100043Q00202Q0001000100054Q00035Q00122Q000400063Q00122Q000500076Q000300056Q00013Q000200202Q0001000100084Q00010002000200044Q0021000100201800050004000900121C000600043Q00202Q0006000600054Q00085Q00122Q0009000A3Q00122Q000A000B6Q0008000A6Q00063Q000200202Q00060006000C00202Q00060006000900062Q00050020000100060004033Q002000010012010005000D3Q00061D00063Q000100022Q000F3Q00044Q000C8Q00210005000200012Q002400035Q00062D3Q000F000100020004033Q000F00012Q000B3Q00013Q00013Q00133Q0003093Q0043686172616374657203043Q004865616403043Q0053697A6503073Q00566563746F72332Q033Q006E657703023Q005F4703083Q004865616453697A65030C3Q005472616E73706172656E6379026Q00F03F030A3Q00427269636B436F6C6F722Q033Q0062132603053Q009E3076427203083Q004D6174657269616C03043Q0085211F3803073Q009BCB44705613C5030A3Q0043616E436F2Q6C696465010003083Q004D612Q736C652Q732Q01002D4Q00127Q00206Q000100206Q000200122Q000100043Q00202Q00010001000500122Q000200063Q00202Q00020002000700122Q000300063Q00202Q00030003000700122Q000400063Q00202Q0004000400074Q00010004000200104Q000300019Q0000206Q000100206Q000200304Q000800099Q0000206Q000100206Q000200122Q0001000A3Q00202Q0001000100054Q000200013Q00122Q0003000B3Q00122Q0004000C6Q000200046Q00013Q000200104Q000A00019Q0000206Q000100206Q00024Q000100013Q00122Q0002000E3Q00122Q0003000F6Q00010003000200104Q000D00019Q0000206Q000100206Q000200304Q001000119Q0000206Q000100206Q000200304Q001200136Q00017Q00",v17(),...);
-- ⚠️ Developed by L R X
