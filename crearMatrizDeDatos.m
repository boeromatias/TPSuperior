## Copyright (C) 2017 a618078
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} crearMatrizDeDatos (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: a618078 <a618078@MC0XA19C>
## Created: 2017-09-20

function [MatrizDeDatos] = crearMatrizDeDatos (data)
  columns = 6;
  
  rows = length(data);
  matriz = zeros(rows, columns);
  matriz = fillDataToMatriz(data);
  matriz = squareColumn(matriz);
  matriz = xyColumn(matriz);
  dim = size(matriz);
  disp(matriz(2,2,1));
  disp(matriz(2,1,1));
  #printf("tabla(2,2) = [%s\n]", tabla(2,2));
  MatrizDeDatos = matriz;
  
endfunction

function [matrizDeDatos] = fillDataToMatriz (data)
    for i = 1:rows(data)
        matriz(i,1) = data(i,1)   # 1 Columna X
        matriz(i,2) = data(i,2)   # 2 Columna Y  
    endfor
    matrizDeDatos = matriz;
endfunction

function [matrizDeDatos] = squareColumn (matriz)
    for i = 1:rows(matriz)
       matriz(i,3) = matriz(i,1)*matriz(i,1); # 1 Columna X  
     endfor
    matrizDeDatos = matriz;
endfunction

function [matrizDeDatos] = xyColumn (matriz)
    for i = 1:rows(matriz)
       matriz(i,4) = matriz(i,1)*matriz(i,2); # 1 Columna X  
     endfor                                   # 2 Columna Y
    matrizDeDatos = matriz;
endfunction
