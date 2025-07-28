% Implemented by Rafael Muñoz-Tamayo 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculation of the cost function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [J,Ga,Ha] = mDOIcost(parame)

global data_mDOI_1 data_mDOI_2 data_mDOI_3 data_mDOI_4 data_mDOI_5 data_mDOI_6 data_mDOI_7 data_mDOI_8...
    data_mDOI_9 data_mDOI_10 data_mDOI_11 data_mDOI_12 data_mDOI_13  data_mDOI_14 data_mDOI_15  idEs iAn

if idEs == 2
   
        id_kp = 1:4:60;
        clear k 
       parame(id_kp)  = parame(1)  ;          
end
%param = parame; 
param = round(100*parame)/100;
	 
     
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


load_outputs; % simulating the model to calculate the error   
     
J = sum(Jc);
J = round(100*J)/100;
%J = sum(RMSE);
    
     if nargout>1
  [Ga,Ha] = mDOIuncert(param);
	   end  
if nargout>2
  Ha = Ha;
	   end  
