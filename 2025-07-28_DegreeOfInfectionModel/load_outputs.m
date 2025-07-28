% Implemented by Rafael Muñoz-Tamayo 

st_1 =data_mDOI_1(1:end,1);
Ys_1 =data_mDOI_1(1:end,2);
y_1 = Ys_1; 

st_2 =data_mDOI_2(1:end,1);
Ys_2 =data_mDOI_2(1:end,2);
y_2 = Ys_2; 

st_3=data_mDOI_3(1:end,1);
Ys_3=data_mDOI_3(1:end,2);
y_3= Ys_3; 

st_4=data_mDOI_4(1:end,1);
Ys_4=data_mDOI_4(1:end,2);
y_4= Ys_4; 

st_5=data_mDOI_5(1:end,1);
Ys_5=data_mDOI_5(1:end,2);
y_5= Ys_5; 

st_6=data_mDOI_6(1:end,1);
Ys_6=data_mDOI_6(1:end,2);
y_6= Ys_6; 

st_7=data_mDOI_7(1:end,1);
Ys_7=data_mDOI_7(1:end,2);
y_7= Ys_7; 

st_8=data_mDOI_8(1:end,1);
Ys_8=data_mDOI_8(1:end,2);
y_8= Ys_8; 

st_9=data_mDOI_9(1:end,1);
Ys_9=data_mDOI_9(1:end,2);
y_9= Ys_9; 

st_10=data_mDOI_10(1:end,1);
Ys_10=data_mDOI_10(1:end,2);
y_10= Ys_10; 

st_11=data_mDOI_11(1:end,1);
Ys_11=data_mDOI_11(1:end,2);
y_11= Ys_11; 

st_12=data_mDOI_12(1:end,1);
Ys_12=data_mDOI_12(1:end,2);
y_12= Ys_12; 

st_13=data_mDOI_13(1:end,1);
Ys_13=data_mDOI_13(1:end,2);
y_13= Ys_13; 

st_14=data_mDOI_14(1:end,1);
Ys_14=data_mDOI_14(1:end,2);
y_14= Ys_14; 

st_15=data_mDOI_15(1:end,1);
Ys_15=data_mDOI_15(1:end,2);
y_15= Ys_15; 

% Initial conditions 
Y0 = [y_1(1) y_2(1) y_3(1) y_4(1) y_5(1) y_6(1) y_7(1) y_8(1) y_9(1) y_10(1) y_11(1) y_12(1) y_13(1) y_14(1) y_15(1)]; 
l_stt = [length(st_1) length(st_2) length(st_3) length(st_4) length(st_5) length(st_6) length(st_7) length(st_8) length(st_9) length(st_10) length(st_11) length(st_12) length(st_13) length(st_14) length(st_15) ];
stt = zeros(max(l_stt),15); 
stt(1:length(st_1),1) = st_1;
stt(1:length(st_2),2) = st_2;
stt(1:length(st_3),3) = st_3;
stt(1:length(st_4),4) = st_4;
stt(1:length(st_5),5) = st_5;
stt(1:length(st_6),6) = st_6;
stt(1:length(st_7),7) = st_7;
stt(1:length(st_8),8) = st_8;
stt(1:length(st_9),9) = st_9;
stt(1:length(st_10),10) = st_10;
stt(1:length(st_11),11) = st_11;
stt(1:length(st_12),12) = st_12;
stt(1:length(st_13),13) = st_13;
stt(1:length(st_14),14) = st_14;
stt(1:length(st_15),15) = st_15;

l_yt = [length(y_1) length(y_2) length(y_3) length(y_4) length(y_5) length(y_6) length(y_7) length(y_8) length(y_9) length(y_10) length(y_11) length(y_12) length(y_13) length(y_14) length(y_15) ];
yt = zeros(max(l_yt),15); 
yt(1:length(y_1),1) = y_1;
yt(1:length(y_2),2) = y_2;
yt(1:length(y_3),3) = y_3;
yt(1:length(y_4),4) = y_4;
yt(1:length(y_5),5) = y_5;
yt(1:length(y_6),6) = y_6;
yt(1:length(y_7),7) = y_7;
yt(1:length(y_8),8) = y_8;
yt(1:length(y_9),9) = y_9;
yt(1:length(y_10),10) = y_10;
yt(1:length(y_11),11) = y_11;
yt(1:length(y_12),12) = y_12;
yt(1:length(y_13),13) = y_13;
yt(1:length(y_14),14) = y_14;
yt(1:length(y_15),15) = y_15;

 
 
 [ti_1,Ym_1]   = ode15s(@mDOI,[st_1(1) st_1(end)],[data_mDOI_1(1,2) ],[],param_1,1);
 [tir_1,Ymr_1] = ode15s(@mDOI,[st_1],[data_mDOI_1(1,2) ],[],param_1,1);
 
 [ti_2,Ym_2]   = ode15s(@mDOI,[st_2(1) st_2(end)],[data_mDOI_2(1,2) ],[],param_2,2);
 [tir_2,Ymr_2] = ode15s(@mDOI,[st_2],[data_mDOI_2(1,2) ],[],param_2,2);
 
 [ti_3,Ym_3]   = ode15s(@mDOI,[st_3(1) st_3(end)],[data_mDOI_3(1,2) ],[],param_3,3);
 [tir_3,Ymr_3] = ode15s(@mDOI,[st_3],[data_mDOI_3(1,2) ],[],param_3,3);
 
 [ti_4,Ym_4]   = ode15s(@mDOI,[st_4(1) st_4(end)],[data_mDOI_4(1,2) ],[],param_4,4);
 [tir_4,Ymr_4] = ode15s(@mDOI,[st_4],[data_mDOI_4(1,2) ],[],param_4,4);
 
 [ti_5,Ym_5]   = ode15s(@mDOI,[st_5(1) st_5(end)],[data_mDOI_5(1,2) ],[],param_5,5);
 [tir_5,Ymr_5] = ode15s(@mDOI,[st_5],[data_mDOI_5(1,2) ],[],param_5,5);
 
 [ti_6,Ym_6]   = ode15s(@mDOI,[st_6(1) st_6(end)],[data_mDOI_6(1,2) ],[],param_6,6);
 [tir_6,Ymr_6] = ode15s(@mDOI,[st_6],[data_mDOI_6(1,2) ],[],param_6,6);
 
 [ti_7,Ym_7]   = ode15s(@mDOI,[st_7(1) st_7(end)],[data_mDOI_7(1,2) ],[],param_7,7);
 [tir_7,Ymr_7] = ode15s(@mDOI,[st_7],[data_mDOI_7(1,2) ],[],param_7,7);
 
 [ti_8,Ym_8]   = ode15s(@mDOI,[st_8(1) st_8(end)],[data_mDOI_8(1,2) ],[],param_8,8);
 [tir_8,Ymr_8] = ode15s(@mDOI,[st_8],[data_mDOI_8(1,2) ],[],param_8,8);
 
 [ti_9,Ym_9]   = ode15s(@mDOI,[st_9(1) st_9(end)],[data_mDOI_9(1,2) ],[],param_9,9);
 [tir_9,Ymr_9] = ode15s(@mDOI,[st_9],[data_mDOI_9(1,2) ],[],param_9,9);
 
 [ti_10,Ym_10]   = ode15s(@mDOI,[st_10(1) st_10(end)],[data_mDOI_10(1,2) ],[],param_10,10);
 [tir_10,Ymr_10] = ode15s(@mDOI,[st_10],[data_mDOI_10(1,2) ],[],param_10,10);
 
 [ti_11,Ym_11]   = ode15s(@mDOI,[st_11(1) st_11(end)],[data_mDOI_11(1,2) ],[],param_11,11);
 [tir_11,Ymr_11] = ode15s(@mDOI,[st_11],[data_mDOI_11(1,2) ],[],param_11,11);
 
 [ti_12,Ym_12]   = ode15s(@mDOI,[st_12(1) st_12(end)],[data_mDOI_12(1,2) ],[],param_12,12);
 [tir_12,Ymr_12] = ode15s(@mDOI,[st_12],[data_mDOI_12(1,2) ],[],param_12,12);
 
 [ti_13,Ym_13]   = ode15s(@mDOI,[st_13(1) st_13(end)],[data_mDOI_13(1,2) ],[],param_13,13);
 [tir_13,Ymr_13] = ode15s(@mDOI,[st_13],[data_mDOI_13(1,2) ],[],param_13,13);
 
 [ti_14,Ym_14]   = ode15s(@mDOI,[st_14(1) st_14(end)],[data_mDOI_14(1,2) ],[],param_14,14);
 [tir_14,Ymr_14] = ode15s(@mDOI,[st_14],[data_mDOI_14(1,2) ],[],param_14,14);
 
 [ti_15,Ym_15]   = ode15s(@mDOI,[st_15(1) st_15(end)],[data_mDOI_15(1,2) ],[],param_15,15);
 [tir_15,Ymr_15] = ode15s(@mDOI,[st_15],[data_mDOI_15(1,2) ],[],param_15,15);
 
     [RMSE(1),Jc(1)] = mDOIerror(y_1,Ymr_1(:,1));
     [RMSE(2),Jc(2)] = mDOIerror(y_2,Ymr_2(:,1));
     [RMSE(3),Jc(3)] = mDOIerror(y_3,Ymr_3(:,1));
     [RMSE(4),Jc(4)] = mDOIerror(y_4,Ymr_4(:,1));
     [RMSE(5),Jc(5)] = mDOIerror(y_5,Ymr_5(:,1));
     [RMSE(6),Jc(6)] = mDOIerror(y_6,Ymr_6(:,1));
     [RMSE(7),Jc(7)] = mDOIerror(y_7,Ymr_7(:,1));
     [RMSE(8),Jc(8)] = mDOIerror(y_8,Ymr_8(:,1));
     [RMSE(9),Jc(9)] = mDOIerror(y_9,Ymr_9(:,1));
     [RMSE(10),Jc(10)] = mDOIerror(y_10,Ymr_10(:,1));
     [RMSE(11),Jc(11)] = mDOIerror(y_11,Ymr_11(:,1));
     [RMSE(12),Jc(12)] = mDOIerror(y_12,Ymr_12(:,1));
     [RMSE(13),Jc(13)] = mDOIerror(y_13,Ymr_13(:,1));
     [RMSE(14),Jc(14)] = mDOIerror(y_14,Ymr_14(:,1));
     [RMSE(15),Jc(15)] = mDOIerror(y_15,Ymr_15(:,1));
