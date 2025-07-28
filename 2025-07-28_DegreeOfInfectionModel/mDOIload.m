% Implemented by Rafael Muñoz-Tamayo 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Loading the data 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


global data_mDOI_1 data_mDOI_2 data_mDOI_3 data_mDOI_4 data_mDOI_5 data_mDOI_6 data_mDOI_7 data_mDOI_8...
    data_mDOI_9 data_mDOI_10 data_mDOI_11 data_mDOI_12 data_mDOI_13  data_mDOI_14 data_mDOI_15  

Ny= 1; 

load d2314802943_pp2_v3.mat  
load d2314802616_pp3_v3.mat  
load d2314802799_pp3_v3.mat  
load d2314802806_pp4_v3.mat
load d2314802868_pp3_v3.mat
load d2314802882_pp3_v3.mat  
load d2314802891_pp5_v3.mat  
load d2314802944_pp3_v3.mat 
load d2314802949_pp1_v3.mat  
load d3060201016_pp3_v3.mat  
load d3060201016_pp4_v3.mat  
load d3238200807_pp4_v3.mat  
load d3962401682_pp5_v3.mat
load d3979700930_pp4_v3.mat  
load d10000000014_pp2_v3.mat

% Transforming the data in absolute SCC and scaling

maxSCC = 1.9428e+07; % from plotRawData

d2314802943_pp2_v3(:,2)  = (10.^(log(d2314802943_pp2_v3(:,2))))/maxSCC; 
d2314802616_pp3_v3(:,2)  = (10.^(log(d2314802616_pp3_v3(:,2))))/maxSCC; 
d2314802799_pp3_v3(:,2)  = (10.^(log(d2314802799_pp3_v3(:,2))))/maxSCC; 
d2314802806_pp4_v3(:,2)  = (10.^(log(d2314802806_pp4_v3(:,2))))/maxSCC; 
d2314802868_pp3_v3(:,2)  = (10.^(log(d2314802868_pp3_v3(:,2))))/maxSCC; 
d2314802882_pp3_v3(:,2)  = (10.^(log(d2314802882_pp3_v3(:,2))))/maxSCC; 
d2314802891_pp5_v3(:,2)  = (10.^(log(d2314802891_pp5_v3(:,2))))/maxSCC; 
d2314802944_pp3_v3(:,2)  = (10.^(log(d2314802944_pp3_v3(:,2))))/maxSCC; 
d2314802949_pp1_v3(:,2)  = (10.^(log(d2314802949_pp1_v3(:,2))))/maxSCC; 
d3060201016_pp3_v3(:,2)  = (10.^(log(d3060201016_pp3_v3(:,2))))/maxSCC; 
d3060201016_pp4_v3(:,2)  = (10.^(log(d3060201016_pp4_v3(:,2))))/maxSCC; 
d3238200807_pp4_v3(:,2)  = (10.^(log(d3238200807_pp4_v3(:,2))))/maxSCC; 
d3962401682_pp5_v3(:,2)  = (10.^(log(d3962401682_pp5_v3(:,2))))/maxSCC; 
d3979700930_pp4_v3(:,2)  = (10.^(log(d3979700930_pp4_v3(:,2))))/maxSCC;
d10000000014_pp2_v3(:,2) = (10.^(log(d10000000014_pp2_v3(:,2))))/maxSCC;


data_mDOI_1  = d2314802943_pp2_v3(2:end,1:2); 
data_mDOI_2  = d2314802616_pp3_v3(2:end,1:2);  
data_mDOI_3  = d2314802799_pp3_v3(2:end,1:2);
data_mDOI_4  = d2314802806_pp4_v3(4:end,1:2);
data_mDOI_5  = d2314802868_pp3_v3(2:end,1:2); 
data_mDOI_6  = d2314802882_pp3_v3(8:end,1:2);
data_mDOI_7  = d2314802891_pp5_v3(1:end,1:2);
data_mDOI_8  = d2314802944_pp3_v3(12:end,1:2);
data_mDOI_9  = d2314802949_pp1_v3(1:end,1:2);
data_mDOI_10 = d3060201016_pp3_v3(4:end,1:2);
data_mDOI_11 = d3060201016_pp4_v3(2:end-14,1:2);
data_mDOI_12 = d3238200807_pp4_v3(2:end-6,1:2);
data_mDOI_13 = d3962401682_pp5_v3(1:end,1:2);
data_mDOI_14 = d3979700930_pp4_v3(1:end,1:2);
data_mDOI_15 = d10000000014_pp2_v3(2:end,1:2);

data_mDOI_1(:,1) = data_mDOI_1(:,1) - data_mDOI_1(1,1);
data_mDOI_2(:,1) = data_mDOI_2(:,1) - data_mDOI_2(1,1);
data_mDOI_3(:,1) = data_mDOI_3(:,1) - data_mDOI_3(1,1);
data_mDOI_4(:,1) = data_mDOI_4(:,1) - data_mDOI_4(1,1);
data_mDOI_5(:,1) = data_mDOI_5(:,1) - data_mDOI_5(1,1);
data_mDOI_6(:,1) = data_mDOI_6(:,1) - data_mDOI_6(1,1);
data_mDOI_7(:,1) = data_mDOI_7(:,1) - data_mDOI_7(1,1);
data_mDOI_8(:,1) = data_mDOI_8(:,1) - data_mDOI_8(1,1);
data_mDOI_9(:,1) = data_mDOI_9(:,1) - data_mDOI_9(1,1);
data_mDOI_10(:,1) = data_mDOI_10(:,1) - data_mDOI_10(1,1);
data_mDOI_11(:,1) = data_mDOI_11(:,1) - data_mDOI_11(1,1);
data_mDOI_12(:,1) = data_mDOI_12(:,1) - data_mDOI_12(1,1);
data_mDOI_13(:,1) = data_mDOI_13(:,1) - data_mDOI_13(1,1);
data_mDOI_14(:,1) = data_mDOI_14(:,1) - data_mDOI_14(1,1);
data_mDOI_15(:,1) = data_mDOI_15(:,1) - data_mDOI_15(1,1);



