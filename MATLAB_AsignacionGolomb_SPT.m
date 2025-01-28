%____________________________________________________________________
%
%                    Custom Component for MATLAB
%          Automatically generated from SPT template
%
% Name         : MATLAB_AsignacionGolomb
% Author       : PC05 SALA 448
% Cration Date : Sat Nov 23 21:36:01 2024
%
%____________________________________________________________________
%
%                  MATLAB base workspace variables
%
% - Simulation parameters
%
% sim_technique ::= 'SPT'
%   current simulation technique ('SPT'|'VBSp'|'VBS')
%
% runs :: double vector [runs_num 1]
%   run(s) of the current CCM instance execution
%
% lower_frequency :: double number
%   SPT lower bandwidth frequency expressed in THz
%
% center_frequency :: double number
%   SPT center bandwidth frequency expressed in THz
%
% upper_frequency :: double number
%   SPT upper bandwidth frequency expressed in THz
%
% is_opt_noise :: double number
%   flag indicating if the optical noise is simulated
%
% delt_thz :: double number
%   frequency sampling step expressed in THz
% 
% num_samples :: double number
%   number of signal samples in frequency domain
%
% frequency :: double vector [num_samples 1]
%   frequency sample values expressed in THz
%
% - Input signals
%
% CH1 :: double vector [num_samples 1]
%   optical signal CH1 spectrum expressed in mW
%
% CH2 :: double vector [num_samples 1]
%   optical signal CH2 spectrum expressed in mW
%
% CH3 :: double vector [num_samples 1]
%   optical signal CH3 spectrum expressed in mW
%
% CH4 :: double vector [num_samples 1]
%   optical signal CH4 spectrum expressed in mW
%
% CH5 :: double vector [num_samples 1]
%   optical signal CH5 spectrum expressed in mW
%
% CH6 :: double vector [num_samples 1]
%   optical signal CH6 spectrum expressed in mW
%
%
%
% - Output signals
%
% OutMux :: double vector [num_samples 1]
%   optical signal OutMux spectrum expressed in mW
%
%
%
% - Component parameters
%
% numeroCanales :: double number
%   parameter numeroCanales expressed in Unit
%
% espaciadoCH :: double number
%   parameter espaciadoCH expressed in THz
%
%
%____________________________________________________________________

% Write MATLAB code here


% Initializing the average optical signal variable
  opt_signal_data_avg = zeros(num_samples,1);

% Evaluating optical input signals sum
  opt_signal_data_avg = CH1;
  opt_signal_data_avg = opt_signal_data_avg + CH2;
  opt_signal_data_avg = opt_signal_data_avg + CH3;
  opt_signal_data_avg = opt_signal_data_avg + CH4;
  opt_signal_data_avg = opt_signal_data_avg + CH5;
  opt_signal_data_avg = opt_signal_data_avg + CH6;

% Assigning output(s)
  OutMux = opt_signal_data_avg;



%____________________________________________________________________
%
% End of file
%____________________________________________________________________
