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
## @deftypefn {} {@var{retval} =} MultiplicarMatrices (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: a618078 <a618078@MC0XA19C>
## Created: 2017-09-20
function [result] = MultiplicarMatrices (MatrizDeDatos)

  terminosIndependienteA = getTerminoIndependienteA(MatrizDeDatos);
  terminosIndependienteB = getTerminoIndependienteB(MatrizDeDatos);
  MatrizDeTerminosInd = [terminosIndependienteA, terminosIndependienteB];
  MatrizDelSistema = CrearMatrizDelSistema(MatrizDeDatos);
  matrizInversa = inv(MatrizDelSistema);
  result = MatrizDeTerminosInd * matrizInversa;
  
endfunction

function [result] = getTerminoIndependienteA(MatrizDeDatos)
  sum = 0;
  for i = 1:rows(MatrizDeDatos)
    sum = sum + MatrizDeDatos(i,2)   # 2 Columna Y
  endfor
  result = sum;
endfunction 

function [result] = getTerminoIndependienteB(MatrizDeDatos)
  sum = 0;
  for i = 1:rows(MatrizDeDatos)
    sum = sum + MatrizDeDatos(i,4)   # 4 Columna XY
  endfor
  result = sum;
endfunction 

function [matriz] = CrearMatrizDelSistema(MatrizDeDatos)
   sumX = 0;
   sumX2 = 0;

   cantidadFilas = rows(MatrizDeDatos);
   for i = 1:rows(MatrizDeDatos)
     sumX = sumX + MatrizDeDatos(i,1)   # 1 Columna X
     sumX2 = sumX2 + MatrizDeDatos(i,3)   # 1 Columna X^2
   endfor
   matriz = [cantidadFilas, sumX; sumX, sumX2];
endfunction
