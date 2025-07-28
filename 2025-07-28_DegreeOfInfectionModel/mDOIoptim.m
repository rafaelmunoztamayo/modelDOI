% Implemented by Rafael Muñoz-Tamayo 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Optimization 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all

global idEs 
idEs = input(' Type 1 for estimation with specific k_p for each animal, 2 for estimation with the same k_p for all animals:  '); 
 
mDOIload; 

	 Np= 6;  
	 Ny= 1; 
metod= 2; 
alt_optim= 1; 


load mDOIparamOLD.mat
load mDOIparam.mat

load mDOIparamCase1.mat   % parameters resulting for multi-experiment estimations individual kp. idES = 1. J = -49.78 
load mDOIparamCase2.mat   % parameters resulting for multi-experiment estimations common kp. idES = 2. J = -30.52


disp('                                       ');
disp('           *********************************** ');
disp('            the parameters to be estimated are: ');
 disp('           *********************************** ');
disp('                                       ');
disp(' 	  p 	  A 	  B 	  T 	 t_i');
disp('                                       ');

%	 disp('   Insert the intial values of the parameters in the  order above, in []: '); 
	 %paramMi = input('    '); 
   % paramMi = log(paramMi); 
 

   
    paramMi = mDOIparam;  
    %paramMi = mDOIparamOLD;  
    
    %paramMi = mDOIparamCase1;
    %paramMi = mDOIparamCase2;
    
  
     
tic;
disp('                                       ');
	 % disp('   Type 1 i you are using normal scale, or 2 if it is in log scale : '); 
	 % olog = input('    '); 
	 olog = 1; 

clc ; 
	 if olog==1
	 LBp = paramMi*0.9;
	 UBp = paramMi*1.1;
	 else 
	 LBp = log(exp(paramMi*0.8));
	 UBp = log(exp(paramMi*1.2));
	 end 

	 N = 1; % Number of runs of the optimization algorithm 
	 options1 = optimset('LargeScale','off', 'Display','iter', 'Diagnostics','on','MaxIter', 50);
	 options2 = optimset('LargeScale','on', 'GradObj','on','Hessian', 'on', 'Display','iter', 'Diagnostics','on');

	 if alt_optim ==1 
	 options = options1; 
	 else 
	 options = options2; 
	 end 
	 clear i; 
disp('                                       ');
disp('           *********************************** ');
disp('                  Finding the estimates');
disp('           *********************************** ');
	 for i = 1:N 
		  %aleat = rand(1,Np);
 		  if i==1
 		  paramo(1,:) = paramMi; 
 		  else 
 		   for j=1:Np  
 		    paramo(i,j) = LBp(j)+aleat(j)*(UBp(j)-LBp(j));  
 		  end
          %paramo(i,1:4) = paramMi(1:4); 
                   
 		  end 
 	 %[x(i,:),fval(i), exitflag(i), output,grad,hessian] = fminunc(@mDOIcost,paramo(i,:),options);
	 [x(i,:),fval(i), exitflag(i), output] = fminsearch(@mDOIcost,paramo(i,:),options);
disp('                                       ');
	 fvalues(i) = fval(i);
	 estimates(i,:) = x(i,:);
		  end 
 
	 F = sort(fvalues);
	 minfval = min(fvalues); 
	 indexfval = find(fvalues==minfval); 
	 teta = estimates(indexfval,:);
     %teta(5) =  52.0946; % setting the initial time 
	 Jc = minfval; 
	 teta_estimates = teta;
     %teta_estimates = exp(teta); % For the case of change in the parameterization 
	 
	 J_cost = Jc; 

tiempo = toc;
mDOIparamOLD = paramMi; 
mDOIparam = teta_estimates; 

save mDOIparam.mat mDOIparam
save mDOIparamOLD.mat mDOIparamOLD



