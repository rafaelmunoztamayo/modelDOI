% Implemented by Rafael Muñoz-Tamayo 
 
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
 
figure 

subplot(5,3,1), 

plot(ti_1,Ym_1(:,1),st_1,y_1,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802943-p2', 'fontsize',12); 


subplot(5,3,2), 
plot(ti_2,Ym_2(:,1),st_2,y_2,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802616-p3', 'fontsize',12); 


subplot(5,3,3), 
plot(ti_3,Ym_3(:,1),st_3,y_3,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802799-p3', 'fontsize',12); 


subplot(5,3,4),
plot(ti_4,Ym_4(:,1),st_4,y_4,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802806-p4', 'fontsize',12); 

subplot(5,3,5),
plot(ti_5,Ym_5(:,1),st_5,y_5,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802868-p3', 'fontsize',12); 


subplot(5,3,6),
plot(ti_6,Ym_6(:,1),st_6,y_6,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802882-p3', 'fontsize',12); 

subplot(5,3,7),
plot(ti_7,Ym_7(:,1),st_7,y_7,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802891-p5', 'fontsize',12); 

subplot(5,3,8),
plot(ti_8,Ym_8(:,1),st_8,y_8,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802944-p3', 'fontsize',12); 


subplot(5,3,9),
plot(ti_9,Ym_9(:,1),st_9,y_9,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('2314802949-p1', 'fontsize',12); 


subplot(5,3,10),
plot(ti_10,Ym_10(:,1),st_10,y_10,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('3060201016-p3', 'fontsize',12); 

subplot(5,3,11),
plot(ti_11,Ym_11(:,1),st_11,y_11,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('3060201016-p4', 'fontsize',12); 


subplot(5,3,12),
plot(ti_12,Ym_12(:,1),st_12,y_12,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('3238200807-p4', 'fontsize',12); 


subplot(5,3,13),
plot(ti_13,Ym_13(:,1),st_13,y_13,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('3962401682-p5', 'fontsize',12); 


subplot(5,3,14),
plot(ti_14,Ym_14(:,1),st_14,y_14,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('3979700930-p4', 'fontsize',12);


subplot(5,3,15),
plot(ti_15,Ym_15(:,1),st_15,y_15,'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',4);
set(gca,'Fontsize',12);
xlabel(' Time (d) ','fontsize',12);
ylabel(' x_{DOI}  ','fontsize',12);
title('10000000014-p2', 'fontsize',12); 

