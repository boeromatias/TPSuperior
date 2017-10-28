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
disp(['y =' num2str(valB) ' + x' num2str(valA)]);

%grafico
  %Genero un vector que todos los valores f(x) de la funcion
  for i = 1:maxX
  vecRes(i) = (i*valA)+valB;
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
 pX=colX.*valA .+ valB;
 EREcta=sum((colY.-pX).^2)
