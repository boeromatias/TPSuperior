function [ans] = menuPrincipal (MatrizDeDatos)
printf("\n\nSeleccione la letra correspondiente al tipo de funcion a la que desea aproximar\n\n");
printf("\n\nA: Recta de minimos cuadrados\n\n");
printf("\n\nB: Parábola de minimos cuadrados\n\n");
printf("\n\nC: Aproximacion Exponencial\n\n");
printf("\n\nD: Aproximacion Potencial\n\n");
printf("\n\nE: Aproximacion Hiperbola\n\n");

ans = input ("Que letra desea?", "s");
endfunction