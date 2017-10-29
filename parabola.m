function [ans] = parabola ()
  printf("\n\nHa seleccionado la aproximacion por parabola\n\n");

%Guardo el archivo en Matriz
  matriz = load('c:\\temp\\amic\\data.txt');
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
  
valA=X(1);
valB=X(2);
valC=X(3);
disp(['+ y =' num2str(valA) 'x^2 + x' num2str(valB) '+' num2str(valC)])


%grafico
  %Genero un vector que todos los valores f(x) de la funcion
  for i = 1:maxX
  vecRes(i) = ((i^2)*valA)+(i*valB)+valC;
endfor
 %Grafico el vector
  plot(vecRes)
  
hold on
%Grafico la nube de puntos
for i = 1:count
  filaI=matriz(i,:);
  plot(filaI(1),filaI(2));
  endfor
 
 %Error generado
 pX=((colX.^2).*valA) .+ (colX.*valB) + valC;
 printf("\n\nEl error hayado es el siguiente:\n\n");
 Error=sum((colY.-pX).^2)
 ans=sum((colY.-pX).^2);
endfunction
