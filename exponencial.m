function [ans] = exponencial ()
  printf("\n\nHa seleccionado la aproximacion por exponencial\n\n");
%Guardo el archivo en Matriz
  matriz = load('c:\\temp\\amic\\data.txt');
%Extraigo las columnas
  colX=matriz(:,1);
  colY=matriz(:,2);
  minX=min(colX);
  maxX=max(colX);
%Saco las variables de mis funciones  
  n=length(colX);
  sumX=sum(colX);
  sumLnY=sum(log(colY));
  X2=colX.^2;
  sumX2=sum(X2);
  LnXY=colX.*log(colY);
  sumLnXY=sum(LnXY);
%Resuelvo el sistema de ecuaciones 
A = [sumX n;sumX2 sumX];
B = [sumLnY; sumLnXY];
X = linsolve(A, B);
%Cambio de variables
b=exp(X(2));
a=X(1);
disp(['y =' num2str(b) ' * e^' num2str(a)]);

%grafico
  %Genero un vector que todos los valores f(x) de la funcion
  for i = 1:maxX
  vecRes(i) = (exp(a*i))*b;
endfor
 %Grafico el vector
  plot(vecRes)
  
hold on
%Grafico la nube de puntos
for i = 1:n
  filaI=matriz(i,:);
  plot(filaI(1),filaI(2));
  endfor
 
 %Error generado
 pX=(exp(colX.*a)) .+ b;
 printf("\n\nEl error hayado es el siguiente:\n\n");
 Error=sum((colY.-pX).^2)
 ans=sum((colY.-pX).^2);
endfunction