
% Implemented by Rafael Muñoz-Tamayo 

clear all

mDOIload; 

% Parameter estimates 

load mDOIparamCase1.mat   % parameters resulting for multi-experiment estimations individual kp. idES = 1. J = -49.78 
load mDOIparamCase2.mat   % parameters resulting for multi-experiment estimations common kp. idES = 2. J = -30.52


 param_1  = mDOIparamCase1(1:4); 
 param_2  = mDOIparamCase1(5:8);
 param_3  = mDOIparamCase1(9:12);
 param_4  = mDOIparamCase1(13:16);
 param_5  = mDOIparamCase1(17:20);
 param_6  = mDOIparamCase1(21:24);
 param_7  = mDOIparamCase1(25:28);
 param_8  = mDOIparamCase1(29:32);
 param_9  = mDOIparamCase1(33:36);
 param_10 = mDOIparamCase1(37:40);
 param_11 = mDOIparamCase1(41:44);
 param_12 = mDOIparamCase1(45:48);
 param_13 = mDOIparamCase1(49:52);
 param_14 = mDOIparamCase1(53:56);
 param_15 = mDOIparamCase1(57:60);
 


id_kp = 1:4:60;
        mDOIparamCase2(id_kp)  = mDOIparamCase2(1)  ;   % settin the value of k_p equal for all animals
        
  paramC2_1  = mDOIparamCase2(1:4); 
  paramC2_2  = mDOIparamCase2(5:8);
  paramC2_3  = mDOIparamCase2(9:12);
  paramC2_4  = mDOIparamCase2(13:16);
  paramC2_5  = mDOIparamCase2(17:20);
  paramC2_6  = mDOIparamCase2(21:24);
  paramC2_7  = mDOIparamCase2(25:28);
  paramC2_8  = mDOIparamCase2(29:32);
  paramC2_9  = mDOIparamCase2(33:36);
  paramC2_10 = mDOIparamCase2(37:40);
  paramC2_11 = mDOIparamCase2(41:44);
  paramC2_12 = mDOIparamCase2(45:48);
  paramC2_13 = mDOIparamCase2(49:52);
  paramC2_14 = mDOIparamCase2(53:56);
  paramC2_15 = mDOIparamCase2(57:60);
  
  
 paramCase1 = [param_1  
 param_2  
 param_3 
 param_4 
 param_5 
 param_6 
 param_7 
 param_8 
 param_9  
 param_10
 param_11 
 param_12 
 param_13 
 param_14 
 param_15 ];

 paramCase2 = [paramC2_1  
 paramC2_2  
 paramC2_3 
 paramC2_4 
 paramC2_5 
 paramC2_6 
 paramC2_7 
 paramC2_8 
 paramC2_9  
 paramC2_10
 paramC2_11 
 paramC2_12 
 paramC2_13 
 paramC2_14 
 paramC2_15 ];

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

 
 % Case 1
 [ti_1,Ym_1]   = ode15s(@mDOI,[st_1(1) st_1(end)],[data_mDOI_1(1,2) ],[],param_1,1);

 [ti_2,Ym_2]   = ode15s(@mDOI,[st_2(1) st_2(end)],[data_mDOI_2(1,2) ],[],param_2,2);
 
 [ti_3,Ym_3]   = ode15s(@mDOI,[st_3(1) st_3(end)],[data_mDOI_3(1,2) ],[],param_3,3);
 
 [ti_4,Ym_4]   = ode15s(@mDOI,[st_4(1) st_4(end)],[data_mDOI_4(1,2) ],[],param_4,4);
 
 [ti_5,Ym_5]   = ode15s(@mDOI,[st_5(1) st_5(end)],[data_mDOI_5(1,2) ],[],param_5,5);
 
 [ti_6,Ym_6]   = ode15s(@mDOI,[st_6(1) st_6(end)],[data_mDOI_6(1,2) ],[],param_6,6);
 
 [ti_7,Ym_7]   = ode15s(@mDOI,[st_7(1) st_7(end)],[data_mDOI_7(1,2) ],[],param_7,7);
 
 [ti_8,Ym_8]   = ode15s(@mDOI,[st_8(1) st_8(end)],[data_mDOI_8(1,2) ],[],param_8,8);
 
 [ti_9,Ym_9]   = ode15s(@mDOI,[st_9(1) st_9(end)],[data_mDOI_9(1,2) ],[],param_9,9);
 
 [ti_10,Ym_10]   = ode15s(@mDOI,[st_10(1) st_10(end)],[data_mDOI_10(1,2) ],[],param_10,10);
 
 [ti_11,Ym_11]   = ode15s(@mDOI,[st_11(1) st_11(end)],[data_mDOI_11(1,2) ],[],param_11,11);
 
 [ti_12,Ym_12]   = ode15s(@mDOI,[st_12(1) st_12(end)],[data_mDOI_12(1,2) ],[],param_12,12);
 
 [ti_13,Ym_13]   = ode15s(@mDOI,[st_13(1) st_13(end)],[data_mDOI_13(1,2) ],[],param_13,13);
 
 [ti_14,Ym_14]   = ode15s(@mDOI,[st_14(1) st_14(end)],[data_mDOI_14(1,2) ],[],param_14,14);

 [ti_15,Ym_15]   = ode15s(@mDOI,[st_15(1) st_15(end)],[data_mDOI_15(1,2) ],[],param_15,15);
 
 % Case 2
 
  [tiC2_1,YmC2_1]   = ode15s(@mDOI,[st_1(1) st_1(end)],[data_mDOI_1(1,2) ],[],paramC2_1,1);

 [tiC2_2,YmC2_2]   = ode15s(@mDOI,[st_2(1) st_2(end)],[data_mDOI_2(1,2) ],[],paramC2_2,2);
 
 [tiC2_3,YmC2_3]   = ode15s(@mDOI,[st_3(1) st_3(end)],[data_mDOI_3(1,2) ],[],paramC2_3,3);
 
 [tiC2_4,YmC2_4]   = ode15s(@mDOI,[st_4(1) st_4(end)],[data_mDOI_4(1,2) ],[],paramC2_4,4);
 
 [tiC2_5,YmC2_5]   = ode15s(@mDOI,[st_5(1) st_5(end)],[data_mDOI_5(1,2) ],[],paramC2_5,5);
 
 [tiC2_6,YmC2_6]   = ode15s(@mDOI,[st_6(1) st_6(end)],[data_mDOI_6(1,2) ],[],paramC2_6,6);
 
 [tiC2_7,YmC2_7]   = ode15s(@mDOI,[st_7(1) st_7(end)],[data_mDOI_7(1,2) ],[],paramC2_7,7);
 
 [tiC2_8,YmC2_8]   = ode15s(@mDOI,[st_8(1) st_8(end)],[data_mDOI_8(1,2) ],[],paramC2_8,8);
 
 [tiC2_9,YmC2_9]   = ode15s(@mDOI,[st_9(1) st_9(end)],[data_mDOI_9(1,2) ],[],paramC2_9,9);
 
 [tiC2_10,YmC2_10]   = ode15s(@mDOI,[st_10(1) st_10(end)],[data_mDOI_10(1,2) ],[],paramC2_10,10);
 
 [tiC2_11,YmC2_11]   = ode15s(@mDOI,[st_11(1) st_11(end)],[data_mDOI_11(1,2) ],[],paramC2_11,11);
 
 [tiC2_12,YmC2_12]   = ode15s(@mDOI,[st_12(1) st_12(end)],[data_mDOI_12(1,2) ],[],paramC2_12,12);
 
 [tiC2_13,YmC2_13]   = ode15s(@mDOI,[st_13(1) st_13(end)],[data_mDOI_13(1,2) ],[],paramC2_13,13);
 
 [tiC2_14,YmC2_14]   = ode15s(@mDOI,[st_14(1) st_14(end)],[data_mDOI_14(1,2) ],[],paramC2_14,14);

 [tiC2_15,YmC2_15]   = ode15s(@mDOI,[st_15(1) st_15(end)],[data_mDOI_15(1,2) ],[],paramC2_15,15);
 
 figure 

subplot(5,3,1), 

plot(ti_1,Ym_1(:,1),st_1,y_1,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on
plot(tiC2_1,YmC2_1(:,1),'r--');

set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802943-p2', 'fontsize',12); 


subplot(5,3,2), 

plot(ti_2,Ym_2(:,1),st_2,y_2,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_2,YmC2_2(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('2314802616-p3', 'fontsize',12); 


subplot(5,3,3), 

plot(ti_3,Ym_3(:,1),st_3,y_3,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_3,YmC2_3(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('2314802799-p3', 'fontsize',12); 


subplot(5,3,4),

plot(ti_4,Ym_4(:,1),st_4,y_4,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_4,YmC2_4(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);


title('2314802806-p4', 'fontsize',12); 

subplot(5,3,5),

plot(ti_5,Ym_5(:,1),st_5,y_5,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_5,YmC2_5(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);


title('2314802868-p3', 'fontsize',12); 


subplot(5,3,6),

plot(ti_6,Ym_6(:,1),st_6,y_6,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_6,YmC2_6(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('2314802882-p3', 'fontsize',12); 


subplot(5,3,7),

plot(ti_7,Ym_7(:,1),st_7,y_7,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_7,YmC2_7(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);


title('2314802891-p5', 'fontsize',12); 


subplot(5,3,8),

plot(ti_8,Ym_8(:,1),st_8,y_8,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_8,YmC2_8(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('2314802944-p3', 'fontsize',12); 


subplot(5,3,9),

plot(ti_9,Ym_9(:,1),st_9,y_9,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_9,YmC2_9(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('2314802949-p1', 'fontsize',12); 


subplot(5,3,10),

plot(ti_10,Ym_10(:,1),st_10,y_10,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_10,YmC2_10(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('3060201016-p3', 'fontsize',12); 

subplot(5,3,11),

plot(ti_11,Ym_11(:,1),st_11,y_11,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_11,YmC2_11(:,1),'r--');
set(gca,'Fontsize',12);
%xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('3060201016-p4', 'fontsize',12); 


subplot(5,3,12),

plot(ti_12,Ym_12(:,1),st_12,y_12,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_12,YmC2_12(:,1),'r--');
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('3238200807-p4', 'fontsize',12); 


subplot(5,3,13),

plot(ti_13,Ym_13(:,1),st_13,y_13,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_13,YmC2_13(:,1),'r--');
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('3962401682-p5', 'fontsize',12); 


subplot(5,3,14),

plot(ti_14,Ym_14(:,1),st_14,y_14,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_14,YmC2_14(:,1),'r--');
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('3979700930-p4', 'fontsize',12);


subplot(5,3,15),

plot(ti_15,Ym_15(:,1),st_15,y_15,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
hold on 
plot(tiC2_15,YmC2_15(:,1),'r--');
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);

title('10000000014-p2', 'fontsize',12); 

