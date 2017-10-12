%Guardo el archivo en Matriz
  matriz = load('c:\\temp\\amic\\data.txt');
%Extraigo las columnas
  colX=matriz(:,1);
  colY=matriz(:,2);
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
  