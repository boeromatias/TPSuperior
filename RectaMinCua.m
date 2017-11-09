function [ans] = RectaMinCua (matriz)
  printf("\n\nHa seleccionado la recta por minimos cuadrados\n\n");
%Guardo el archivo en Matriz
  %matriz = load('c:\\temp\\amic\\data.txt');
%Extraigo las columnas

  colX=matriz(:,1);
  colY=matriz(:,2);
  minX=min(colX);
  maxX=max(colX);
%Saco las variables de mis funciones  
  n=length(colX);
  sumX=sum(colX);
  sumY=sum(colY);
  x2=colX.^2;
  sumX2=sum(x2);
  XY=colX.*colY;
  sumXY=sum(XY);
%Resuelvo el sistema de ecuaciones 
A = [sumX n;sumX2 sumX];
B = [sumY; sumXY];
X = linsolve(A, B);
valA=X(1);
valB=X(2);
funcA = input ("Desea visualizar la funcion aproximante?\n", "s");
if(funcA=="si" || funcA=="Si" || funcA=="SI") 
disp(['y =' num2str(valA) 'x + ' num2str(valB)]);
else
printf("\nHa optado por no visualizar la funcion\n");
endif
funcB = input ("Desea obtener el detalle del calculo?\n", "s");
if(funcB=="si" || funcB=="Si" || funcB=="SI") 
matriz
n
sumX
sumY
sumX2
sumXY

Funcion1=[num2str(n),"B + ",num2str(sumX),"A = ",num2str(sumY)]
Funcion2=[num2str(sumX),"B + ",num2str(sumX2),"A = ",num2str(sumXY)]
else
printf("\nHa optado por no visualizar el detalle de calculo\n");
endif
%grafico
  %Genero un vector que todos los valores f(x) de la funcion
  %for i = minX:maxX
  %vecRes(i) = (i*valA)+valB;
%endfor
 %Grafico el vector
    %plot(vecRes)
funcC = input ("Desea visualizar el grafico de la funcion?\n", "s");
if(funcB=="si" || funcB=="Si" || funcB=="SI") 
    
  x = linspace(minX,maxX,maxX);
  y = valA.*x + valB;
  plot(x,y)

hold on
%Grafico la nube de puntos
  for i = 1:n
  plot(colX(i),colY(i));
  endfor
else
printf("\nHa optado por no visualizar  el grafico de la funcion\n"); 
endif
 %Error generado
 pX=colX.*valA .+ valB;
 printf("\n\nEl error hayado es el siguiente:\n\n");
 Error=sum((colY.-pX).^2);
 ans=sum((colY.-pX).^2);
endfunction