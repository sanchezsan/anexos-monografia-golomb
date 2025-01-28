%____________________________________________________________________
%
%                    Custom Component for MATLAB
%          Automatically generated from VBS template
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
% sim_technique ::= 'VBS'
%   current simulation technique ('SPT'|'VBSp'|'VBS')
%
% runs :: double vector [runs_num 1]
%   run(s) of the current CCM instance execution
%
% lower_frequency :: double number
%   VBS lower bandwidth frequency expressed in THz
%
% center_frequency :: double number
%   VBS center bandwidth frequency expressed in THz
%
% upper_frequency :: double number
%   VBS upper bandwidth frequency expressed in THz
%
% is_opt_noise :: double number
%   flag indicating if the optical noise is simulated
%
% is_elt_noise :: double number
%   flag indicating if the electrical noise is simulated
%
% polarization_mode :: double number
%   polarization representation of the optical field
%   (1 = signal, 2 = double)
%
% start_valid_samples :: double number
%   instant when a measurement component should start measuring
%   expressed in ps
%
% stop_valid_samples :: double number
%   instant when a measurement component should stop measuring
%   expressed in ps
%
% delt_ps :: double number
%   time sampling step expressed in ps
%
% num_samples :: double number
%   number of signal samples in time domain
%
% time :: double vector [num_samples 1]
%   time sample values expressed in ps
%
% - Input signals
%
% CH1 :: complex vector [num_samples polarization_mode]
%   optical signal CH1 time domain samples
%
% CH2 :: complex vector [num_samples polarization_mode]
%   optical signal CH2 time domain samples
%
% CH3 :: complex vector [num_samples polarization_mode]
%   optical signal CH3 time domain samples
%
% CH4 :: complex vector [num_samples polarization_mode]
%   optical signal CH4 time domain samples
%
% CH5 :: complex vector [num_samples polarization_mode]
%   optical signal CH5 time domain samples
%
% CH6 :: complex vector [num_samples polarization_mode]
%   optical signal CH6 time domain samples
%
%
%
% - Output signals
%
% OutMux :: complex vector [num_samples polarization_mode]
%   optical signal OutMux time domain samples
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
%____________________________________________________________________
%
%                    Custom Component for MATLAB
%____________________________________________________________________

% Par�metros iniciales proporcionados por OptSim
n = numeroCanales;           % N�mero de canales (OptSim: numeroCanales)
espaciado = espaciadoCH;     % Espaciado entre canales en THz (OptSim: espaciadoCH)
frecuenciaCentral = center_frequency; % Frecuencia central en THz (OptSim: center_frequency)
g = zeros(1, n);             % Vector de marcas seg�n regla de Golomb
canales = zeros(1, n);       % Frecuencias asignadas

% Selecci�n de la regla de Golomb
switch n  % Define la regla de Golomb a implementar
    case 1
        g = 0;
    case 2
        g = [0, 1];
    case 3
        g = [0, 1, 3];
    case 4
        g = [0, 1, 4, 6];
    case 5
        g = [0, 1, 4, 9, 11];
    case 6
        g = [0, 1, 4, 10, 12, 17];
    case 7
        g = [0, 1, 4, 10, 18, 23, 25];
    case 8
        g = [0, 1, 4, 9, 15, 22, 32, 34];
    case 9
        g = [0, 1, 5, 12, 25, 27, 35, 41, 44];
    case 10
        g = [0, 1, 6, 10, 23, 26, 34, 41, 53, 55];
    case 11
        g = [0, 1, 4, 13, 28, 33, 47, 54, 64, 70, 72];
    case 12
        g = [0, 2, 6, 24, 29, 40, 43, 55, 68, 75, 76, 85];
    case 13
        g = [0 2 5 25 37 43 59 70 85 89 98 99 106];
    case 14 
        g = [0 4 6 20 35 52 59 77 78 86 89 99 122 127];
    case 15 
        g = [0 4 20 30 57 59 62 76 100 111 123 136 144 145 151];    
    case 16 
        g = [0 1 4 11 26 32 56 68 76 115 117 134 150 163 168 177];
    case 17 
        g = [0 5 7 17 52 56 67 80 81 100 122 138 159 165 168 191 199];
    case 18 
        g = [0 2 10 22 53 56 82 83 89 98 130 148 153 167 188 192 205 216];
    case 19 
        g = [0 1 6 25 32 72 100 108 120 130 153 169 187 190 204 231 233 242 246];
    case 20 
        g = [0 1 8 11 68 77 94 116 121 156 158 179 194 208 212 228 240 253 259 283];
    case 21 
        g = [0 2 24 56 77 82 83 95 129 144 179 186 195 255 265 285 293 296 310 329 333];
    case 22 
        g = [0 1 9 14 43 70 106 122 124 128 159 179 204 223 253 263 270 291 330 341 353 356];    
    case 23 
        g = [0 3 7 17 61 66 91 99 114 159 171 199 200 226 235 246 277 316 329 348 350 366 372];
    case 24 
        g = [0 9 33 37 38 97 122 129 140 142 152 191 205 208 252 278 286 326 332 353 368 384 403 425];
    case 25 
        g = [0 12 29 39 72 91 146 157 160 161 166 191 207 214 258 290 316 354 372 394 396 431 459 467 480];    
    case 26 
        g = [0 1 33 83 104 110 124 163 185 200 203 249 251 258 314 318 343 356 386 430 440 456 464 475 487 492];
    case 27 
        g = [0 3 15 41 66 95 97 106 142 152 220 221 225 242 295 330 338 354 382 388 402 415 486 504 523 546 553];
    case 28   
        g = [0 3 15 41 66 95 97 106 142 152 220 221 225 242 295 330 338 354 382 388 402 415 486 504 523 546 553 585];
end

% Generaci�n del plan de frecuencias
if mod(n, 2) == 0 % Si el n�mero de marcas es par
    newFrec = frecuenciaCentral - g(n/2 + 1) * espaciado;
else % Si el n�mero de marcas es impar
    newFrec = frecuenciaCentral - g(floor(n/2) + 1) * espaciado;
end

for i = 1:n
    canales(i) = newFrec + g(i) * espaciado;
end

% Mostrar frecuencias generadas
disp('Frecuencias generadas:');
disp(canales);

%____________________________________________________________________
%
% Integraci�n con el CCM para OptSim
%____________________________________________________________________

% Inicializar se�al �ptica promedio
opt_signal_data_avg = complex(zeros(num_samples, polarization_mode), ...
    zeros(num_samples, polarization_mode)); % Inicializaci�n en ceros

% Combinar se�ales de entrada din�micamente con las frecuencias asignadas
for k = 1:n
    signal_name = sprintf('CH%d', k);
    if evalin('base', sprintf('exist(''%s'', ''var'')', signal_name))
        signal_data = eval(signal_name); % Obtener la se�al �ptica
        
        % La modulaci�n en frecuencia se realiza multiplicando por un exponencial complejo
        freq_shift = exp(1i * 2 * pi * canales(k) * time); 
        modulated_signal = signal_data .* freq_shift; % Modulaci�n
        
        % Sumar la se�al modulada a la se�al de salida
        opt_signal_data_avg = opt_signal_data_avg + modulated_signal;
    end
end
% Asignar la se�al de salida
OutMux = opt_signal_data_avg; % Salida del multiplexor

%____________________________________________________________________
%
% End of file
%____________________________________________________________________
