% Implemented by Rafael Muñoz-Tamayo 

clear all

global idEs 

mDOIload; 


idEs = input(' Type 1 for estimation with specific k_p for each animal, 2 for estimation with the same k_p for all animals:  '); 

load mDOIparamCase1.mat   % parameters resulting for multi-experiment estimations individual kp. idES = 1. J = -49.78 
load mDOIparamCase2.mat   % parameters resulting for multi-experiment estimations common kp. idES = 2. J = -30.52

%%%%%%%%%%%%%%%%%%%%%%%%%%
%load mDOIparam.mat

mDOIparam = mDOIparamCase1; 
%mDOIparam = mDOIparamCase2; 


% One kp for all 
     if idEs == 2
        id_kp = 1:4:60;
        mDOIparam(id_kp)  = mDOIparam(1)  ;   
      
        end 
 %param = mDOIparam;
 param = round(100*mDOIparam)/100;
            
 param = max(0,param);
  


 param_1  = param(1:4); 
 param_2  = param(5:8);
 param_3  = param(9:12);
 param_4  = param(13:16);
 param_5  = param(17:20);
 param_6  = param(21:24);
 param_7  = param(25:28);
 param_8  = param(29:32);
 param_9  = param(33:36);
 param_10 = param(37:40);
 param_11 = param(41:44);
 param_12 = param(45:48);
 param_13 = param(49:52);
 param_14 = param(53:56);
 param_15 = param(57:60);
 
 Mparam = [ param_1;  param_2;  param_3;  param_4;  param_5;  param_6;  param_7;  param_8;  param_9;  param_10;  param_11;  param_12;  param_13;  param_14;  param_15]; 

 load_outputs; % simulating the model to calculate the error   
     

J = sum(Jc); % cost function 
   
% plotting all the animals 
allplots;


 
 