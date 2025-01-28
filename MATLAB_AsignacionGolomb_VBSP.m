%____________________________________________________________________
%
%                    Custom Component for MATLAB
%          Automatically generated from VBSp template
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
% sim_technique ::= 'VBSp'
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
% min_delay_value :: double number
%   minimum delay in the VBS bandwidth expressed in ps
%
% max_delay_value :: double number
%   maximum delay in the VBS bandwidth expressed in ps
%
% - Input signals
%
% CH1 :: double vector [num_samples 1]
%   optical signal CH1 spectrum expressed in mW
%
% CH1_peak_power :: double number
%   optical signal CH1 time domain peak power expressed in mW
%
% CH2 :: double vector [num_samples 1]
%   optical signal CH2 spectrum expressed in mW
%
% CH2_peak_power :: double number
%   optical signal CH2 time domain peak power expressed in mW
%
% CH3 :: double vector [num_samples 1]
%   optical signal CH3 spectrum expressed in mW
%
% CH3_peak_power :: double number
%   optical signal CH3 time domain peak power expressed in mW
%
% CH4 :: double vector [num_samples 1]
%   optical signal CH4 spectrum expressed in mW
%
% CH4_peak_power :: double number
%   optical signal CH4 time domain peak power expressed in mW
%
% CH5 :: double vector [num_samples 1]
%   optical signal CH5 spectrum expressed in mW
%
% CH5_peak_power :: double number
%   optical signal CH5 time domain peak power expressed in mW
%
% CH6 :: double vector [num_samples 1]
%   optical signal CH6 spectrum expressed in mW
%
% CH6_peak_power :: double number
%   optical signal CH6 time domain peak power expressed in mW
%
%
%
% - Output signals
%
% OutMux :: double vector [num_samples 1]
%   optical signal OutMux spectrum expressed in mW
%
% OutMux_peak_power :: double number
%   optical signal OutMux time domain peak power expressed in mW
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

% Inicialización de los parámetros de entrada
n = numeroCanales;          % Número de canales (OptSim: numeroCanales)
espaciado = espaciadoCH;    % Espaciado entre canales en THz (OptSim: espaciadoCH)
frecuenciaCentral = center_frequency; % Frecuencia central en THz (OptSim: center_frequency)

% Inicialización de la señal óptica promedio
opt_signal_data_avg = zeros(num_samples, 1);
opt_peak_power_avg = 0;

% Sumar las señales de entrada dinámicamente
for k = 1:n
    signal_name = sprintf('CH%d', k); % Nombre dinámico de las señales (CH1, CH2, ...)
    peak_power_name = sprintf('CH%d_peak_power', k); % Nombre del pico de potencia (CH1_peak_power, ...)
   
    if exist(signal_name, 'var') && exist(peak_power_name, 'var') % Verificar si la señal existe
        opt_signal_data_avg = opt_signal_data_avg + eval(signal_name); % Sumar señales ópticas
        opt_peak_power_avg = opt_peak_power_avg + eval(peak_power_name); % Sumar potencias pico
    else
        warning('Señal o potencia %s no encontrada.', signal_name);
    end
end

% Asignar la salida multiplexada
OutMux = opt_signal_data_avg;
OutMux_peak_power = opt_peak_power_avg;

%____________________________________________________________________
%
% End of file
%____________________________________________________________________

%____________________________________________________________________
%
% End of file
%____________________________________________________________________
