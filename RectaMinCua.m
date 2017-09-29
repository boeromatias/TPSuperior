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
  sumY=sum(colY);
  x2=filaX.^2;
  sumX2=sum(x2);
  XY=colX.*colY;
  sumXY=sum(XY);
%Resuelvo el sistema de ecuaciones 
A = [sumX n;sumX2 sumX];
B = [sumY; sumXY];
X = linsolve(A, B);
valA=X(1);
valB=X(2);
%Asigno 2 valores en funcion de mi funcion para graficar
val1=(1*valA)+valB;
val2=(1*valA)+valB;
matGraf=[val1;val2];
%grafico
plot(matGraf)
hold on
%Grafico la nube de puntos
for i = 1:n
  filaI=matriz(i,:);
  plot(filaI(1),filaI(2));
  endfor
  