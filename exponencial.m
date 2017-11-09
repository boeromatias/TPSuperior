function [ans] = exponencial (matriz)
  printf("\n\nHa seleccionado la aproximacion por exponencial\n\n");
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
funcA = input ("Desea visualizar la funcion aproximante?\n", "s");
if(funcA=="si" || funcA=="Si" || funcA=="SI") 
disp(['y =' num2str(b) ' * e^' num2str(a)]);
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

Funcion1=[num2str(n),"B + ",num2str(sumX),"A = ",num2str(sumLnY)]
Funcion2=[num2str(sumX),"B + ",num2str(sumX2),"A = ",num2str(sumLnXY)]

CalculosAux=["b=e^B", "a=A"]
else
printf("\nHa optado por no visualizar el detalle de calculo\n");
endif
%grafico
  %Genero un vector que todos los valores f(x) de la funcion
  %for i = 1:maxX
  %vecRes(i) = (exp(a*i))*b;
%endfor
 %Grafico el vector
  %plot(vecRes)
funcC = input ("Desea visualizar el grafico de la funcion?\n", "s");
if(funcB=="si" || funcB=="Si" || funcB=="SI") 
   
  x = linspace(minX,maxX,maxX);
  y = (exp(a.*x)).*b;
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
 pX=(exp(colX.*a)) .+ b;
 printf("\n\nEl error hayado es el siguiente:\n\n");
 Error=sum((colY.-pX).^2);
 ans=sum((colY.-pX).^2);
endfunction