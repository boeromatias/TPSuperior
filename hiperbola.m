function [ans] = hiperbola (matriz)
  printf("\n\nHa seleccionado la aproximacion por Hyperbola\n\n");

%Guardo el archivo en Matriz
 % matriz = load('c:\\temp\\amic\\data.txt');
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
a=1./X(2);
b=a.*X(1);
%a=X(2)./X(1);
%b=1./X(1);
%disp(['y =(' num2str(a) ' * x)/(x+' num2str(b) ')'])
funcA = input ("Desea visualizar la funcion aproximante?\n", "s");
if(funcA=="si" || funcA=="Si" || funcA=="SI") 
disp(['y =' num2str(b) ' + ' num2str(a) '1/x'])
else
printf("\nHa optado por no visualizar la funcion\n");
endif
funcB = input ("Desea obtener el detalle del calculo?\n", "s");
if(funcB=="si" || funcB=="Si" || funcB=="SI") 

matriz
n
sumX
sumLnY
sumX2
sumLnXY

Funcion1=[num2str(n),"B + ",num2str(sumHipX),"A = ",num2str(sumHipY)]
Funcion2=[num2str(sumHipX),"B + ",num2str(sumHipX2),"A = ",num2str(sumHipXY)]

CalculosAux=["a=1/B", "b=a*A"]
else
printf("\nHa optado por no visualizar el detalle de calculo\n");
endif
%disp(['y =(' num2str(a) ' / x) +' num2str(b) ''])

funcC = input ("Desea visualizar el grafico de la funcion?\n", "s");
if(funcB=="si" || funcB=="Si" || funcB=="SI") 
 

  
  x = linspace(minX,maxX,maxX);
  %y = (a.*x)./(b.+x);
  y = b.+(a./x);
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
 %pX=(valA./colX) .+ valB;
 %pX=(a.*colX)./(colX+ b);
 pX=b.+(a./colX);
 printf("\n\nEl error hayado es el siguiente:\n\n");
 Error=sum((colY.-pX).^2)
 ans=sum((colY.-pX).^2);
 endfunction