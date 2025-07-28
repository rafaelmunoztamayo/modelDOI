% Implemented by Rafael Muñoz-Tamayo 

function [RMSE,J] = mDOIerror(y, ym)

   nt   = length(y); 
   Err  = sum((y- ym).^2); % square error 
   RMSE = sqrt(sum((y - ym).^2)/length(y)); % root mean square error

   
      J= log(Err);
%     J=length(y)*log(Err)/2; 
  