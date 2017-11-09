function [ans] = parabola (matriz)
  printf("\n\nHa seleccionado la aproximacion por parabola\n\n");

%Guardo el archivo en Matriz
 % matriz = load('c:\\temp\\amic\\data.txt');
%Extraigo las columnas
  colX=matriz(:,1);
  colY=matriz(:,2);
  minX=min(colX);
  maxX=max(colX);
  colXSquare=matriz(:,1).^2;
  colXCube=matriz(:,1).^3;
  colX2Quarter=matriz(:,1).^4;
  colXY=matriz(:,1).*matriz(:,2);
  colX2Y=colXSquare.*colY;
  count=length(colX);
  sumColX=sum(colX);
  sumColY=sum(colY);
  sumColXSquare=sum(colXSquare);
  sumColXY=sum(colXY);
  sumColXCube=sum(colXCube);
  sumColX2Quarter=sum(colX2Quarter);
  sumColX2Y=sum(colX2Y);
  
  %Resuelvo el sistema de ecuaciones
  A = [count, sumColX, sumColXSquare; 
        sumColX, sumColXSquare, sumColXCube;
        sumColXSquare, sumColXCube, sumColX2Quarter];
  B = [sumColY; sumColXY; sumColX2Y];
  X = linsolve(A, B);
  
valC=X(1);
valB=X(2);
valA=X(3);
funcA = input ("Desea visualizar la funcion aproximante?\n", "s");
if(funcA=="si" || funcA=="Si" || funcA=="SI") 
disp(['y =' num2str(valA) 'x^2 + ' num2str(valB) 'x + ' num2str(valC)])
else
printf("\nHa optado por no visualizar la funcion\n");
endif
funcB = input ("Desea obtener el detalle del calculo?\n", "s");
if(funcB=="si" || funcB=="Si" || funcB=="SI") 
matriz
count
sumColX
sumColY
sumColXSquare
sumColXCube
sumColX2Quarter
sumColX2Y


Funcion1=[num2str(count),"C + ",num2str(sumColX),"B + ",num2str(sumColXSquare),"A = ",num2str(sumColY)]
Funcion2=[num2str(sumColX),"C + ",num2str(sumColXSquare),"B + ",num2str(sumColXCube),"A = ",num2str(sumColXY)]
Funcion3=[num2str(sumColXSquare),"C + ",num2str(sumColXCube),"B + ",num2str(sumColX2Quarter),"A = ",num2str(sumColX2Y)]
else
printf("\nHa optado por no visualizar el detalle de calculo\n");
endif

%grafico
  %Genero un vector que todos los valores f(x) de la funcion
 % for i = 1:maxX
 % vecRes(i) = (i^2)*valA)+(i*valB)+valC;
%endfor
 %Grafico el vector
  %plot(vecRes)
funcC = input ("Desea visualizar el grafico de la funcion?\n", "s");
if(funcB=="si" || funcB=="Si" || funcB=="SI") 
    
 x = linspace(minX,maxX, maxX);
 y = valA.*x.*x + valB.*x + valC;
plot(x,y)
hold on
%Grafico la nube de puntos
  for i = 1:count
  plot(colX(i),colY(i));
  endfor
else
printf("\nHa optado por no visualizar  el grafico de la funcion\n"); 
endif
 %Error generado
 pX=((colX.^2).*valA) .+ (colX.*valB) + valC;
 printf("\n\nEl error hayado es el siguiente:\n\n");
 Error=sum((colY.-pX).^2);
 ans=sum((colY.-pX).^2);
endfunction
