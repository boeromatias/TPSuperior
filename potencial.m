function [ans] = potencial ()
  printf("\n\nHa seleccionado la aproximacion por potencial\n\n");

%Guardo el archivo en Matriz
  matriz = load('c:\\temp\\amic\\data.txt');
%Extraigo las columnas
  colX=matriz(:,1);
  colY=matriz(:,2);
  minX=min(colX);
  maxX=max(colX);
%Saco las variables de mis funciones  
  n=length(colX);
  sumLnX=sum(log(colX));
  sumLnY=sum(log(colY));
  LnX2=log(colX).^2;
  sumLnX2=sum(LnX2);
  LnXY=log(colX).*log(colY);
  sumLnXY=sum(LnXY);
%Resuelvo el sistema de ecuaciones 
A = [sumLnX n;sumLnX2 sumLnX];
B = [sumLnY; sumLnXY];
X = linsolve(A, B);
%Cambio de variables
b=exp(X(2));
a=X(1);
disp(['y =' num2str(b) ' * x^' num2str(a)]);

%grafico
  %Genero un vector que todos los valores f(x) de la funcion
  for i = 1:maxX
  vecRes(i) = (i.^a)*b;
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
 pX=(colX.^valA).* valB;
  printf("\n\nEl error hayado es el siguiente:\n\n");
 Error=sum((colY.-pX).^2)
 ans=sum((colY.-pX).^2);
 endfunction