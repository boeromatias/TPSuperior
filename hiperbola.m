%Guardo el archivo en Matriz
  matriz = load('c:\\temp\\amic\\data.txt');
%Extraigo las columnas
  colX=matriz(:,1);
  colY=matriz(:,2);
  minX=min(colX);
  maxX=max(colX);
%Saco las variables de mis funciones  
  n=length(colX);
  sumHipX=sum(1./colX);
  sumHipY=sum(1./colY);
  HipX2=(1./colX).^2;
  sumHipX2=sum(HipX2);
  HipXY=(1./colX).*(1./colY);
  sumHipXY=sum(HipXY);
%Resuelvo el sistema de ecuaciones 
A = [sumHipX n;sumHipX2 sumHipX];
B = [sumHipY; sumHipXY];
X = linsolve(A, B);
%Cambio de variables
%a=1./X(2);
%b=a.*X(1);
a=X(1)./X(2);
b=1./X(1);
%disp(['y =(' num2str(a) ' * x)/(x+' num2str(b) ')'])
disp(['y =' num2str(a) ' * x +' num2str(b) ''])

%grafico
  %Genero un vector que todos los valores f(x) de la funcion
  for i = 1:maxX
  %vecRes(i) = (i*a)/(b+i);
  vecRes(i) = b+(a*i);
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