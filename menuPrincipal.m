function [ans] = menuPrincipal ()
printf("\n\nSeleccione la letra correspondiente al tipo de funcion\n\n");
printf("\n\nA: Recta de minimos cuadrados, B: Parábola de minimos cuadrados, C: Aproximacion Exponencial, D: Aproximacion Potencial, E: Aproximacion Hiperbola\n\n");



ans = input ("Que letra desea?", "s");
endfunction