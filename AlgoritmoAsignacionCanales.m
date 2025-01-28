% Limpieza de variables anteriores
clear;
clc;

% Parámetros iniciales
n = 6;                    % Número total de canales                  
frecuenciaCentral = 193.1;% Frecuencia en THz
espaciado = 0.1; %Ghz     % Espaciado Frecuencias [THz]
g = zeros(1,n);           % Marcas Regla de Golomb
canales = zeros(1,n);     % Frecuencia de Canales
canalesV1 = zeros(1,n);   % Frecuencia de Canales

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

%Creación del plan de Frecuencias con Espaciado Desigual
if mod(n, 2) == 0 %Si el número de marcas es par
    newFrec = frecuenciaCentral - g((n/2)+1)*espaciado;
    for i = 1:n
        canales(i) = newFrec + g(i)*espaciado;
    end  
else %Si el número de marcas es impar
    newFrec = frecuenciaCentral - g((n/2)+1.5)*espaciado;
    for i = 1:n
        canales(i) = newFrec + g(i)*espaciado;
    end 
end
% Mostrar las frecuencias ordenadas
disp('Frecuencias asignadas (ordenadas de menor a mayor):');
disp(canales);

% Mostrar las frecuencias generadas
%disp('Frecuencias asignadas V1:');
%disp(canalesV1);

% Mostrar las frecuencias generadas
%disp('Frecuencias asignadas:');
%disp(canales);

% Ordenar el vector de frecuencias de menor a mayor
%canales_ordenados = sort(canales);


% Cálculo de frecuencias FWM generadas
cont = 1;
frecuenciasFWM = []; % Vector para frecuencias FWM
for i = 1:n
    for j = 1:n
        for k = 1:n
            if i ~= k && j ~= k && i ~= j
                frecuenciasFWM(cont) = canales(i) + canales(j) - canales(k);
                cont = cont + 1;
            end
        end
    end
end
% Comparación de coincidencias entre frecuencias asignadas y FWM
coincidencias = ismember(frecuenciasFWM, canales);
% Mostrar coincidencias
disp('Coincidencias entre las frecuencias asignadas y FWM:');
disp(coincidencias);
% Graficar las frecuencias asignadas y las FWM
figure;
hold on;
stem(canales, ones(1, length(canales)), 'r', 'LineWidth', 2);  % Frecuencias asignadas
stem(frecuenciasFWM, ones(1, length(frecuenciasFWM)), 'b--');  % Frecuencias generadas por FWM
title('Frecuencias Golomb vs Frecuencias FWM');
xlabel('Frecuencia (THz)');
ylabel('Magnitud');
legend('Frecuencias Golomb', 'Frecuencias FWM');
grid on;
hold off;

disp('Frecuencias asignadas V1:');
disp(size(frecuenciasFWM));

% Mostrar coincidencias encontradas
disp('Coincidencias encontradas entre frecuencias asignadas y FWM:');
for i = 1:length(canales)
    if ismember(canales(i), frecuenciasFWM)
        fprintf('Coincidencia en la frecuencia: %.2f THz\n', canales(i));
    end
end