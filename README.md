# A mathematical model of degree of infection - a case study of mastitis 

Rafael Muñoz-Tamayo, Pauline Martin, Gilles Foucras, Nicolas Friggens 

The folder contains Matlab® files of the implementation of a mathematical model of the degree of infection for a case study of mastitis. The model parameters were estimated using experimental data of individual trajectories of degree of infection of 15 cows obtained from Friggens et al., (2007).

The files of the model implementation are:

mDOIload: file to load the experimental data used for the estimation of the model parameters. The data correspond to the individual trajectories of degree of infection of 15 cows obtained from Friggens et al., (2007) . 

mDOI: function where the ordinary differential equation system is defined.

mDOIcost: function to calculate the cost function to be minimized within the parameter estimation routine. It calls the auxiliary functions load_ouputs and mDOIerror to calculate the error of the model with respect to experimental data.

mDOIoptim: function that performs the optimization of the cost function to find the best parameter estimates of the model. 

mDOIploty: function to run the simulation of the model. It plots the model outputs for all animals for a given parameter vector by calling the auxiliary function load_ouputs.

plotcases: function that plots the response of the model for two cases of model calibration. Case 1 is with a specific individual k_p (proliferation rate constant) for each animal, case 2 uses the same k_p for all animals. 


Friggens, N.C., M.G.G. Chagunda, M. Bjerring, C. Ridder, S. Højsgaard, and T. Larsen. 2007. Estimating Degree of Mastitis from Time-Series Measurements in Milk: A Test of a Model Based on Lactate Dehydrogenase Measurements. Journal of Dairy Science 90:5415–5427. doi:10.3168/JDS.2007-0148.

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](./LICENSE) 
