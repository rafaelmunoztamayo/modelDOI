% Implemented by Rafael Muñoz-Tamayo 

function [Fv] = mDOI(t,X,param,cow)

global idEs

p = param(1);
A = param(2);
B = param(3);
T = param(4);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% State Variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xDOI  = X(1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Functions 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

     rho_p = p*xDOI;  % rate of proliferation
     
     x_ac = A*exp(-exp(-B*(t-T))); % aggregated clearance 	
     
     rho_c = x_ac*xDOI;  % rate of clearance       
     rho_c = max(0,rho_c);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% State equations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

     Fv(1,:) = rho_p - rho_c; 
  



