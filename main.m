%prompt = {"Width", "Height", "Depth"};
%defaults = {"1.10", "2.10", "3.10"};
%rowscols = [1,5; 1,5; 1,5];
%dims = inputdlg (prompt, "Enter Box Dimensions", rowscols, defaults);
%volume  = str2num (dims{1}) * str2num (dims{2}) * str2num (dims{3});

%[data] = readData();

%Inicializo Errores%
EREcta=0;
EPar=0;
EExp=0;
EPot=0;
EHyp=0;

[funcion] = menuPrincipal();
while (funcion != 0)
  
if (funcion == "A")
    [EREcta] = RectaMinCua();
elseif (funcion == "B")
    [EPar] = parabola();
elseif (funcion == "C")
    [EExp] = exponencial();
elseif (funcion == "D")
    [EPot] = potencial();
elseif (funcion == "E")
    [EHyp] = hiperbola();
endif
%[MatrizDeDatos] = crearMatrizDeDatos(data);
%[result] = MultiplicarMatrices(MatrizDeDatos);
%[result] = genTuple(datos); # aplica en la matriz

[funcion] = menuPrincipal();
endwhile
ans = input ("Desea comparar los resultados?", "s");
if ((ans == "Si") | (ans == "si"))
    tabla=["Error Recta: ", num2str(EREcta);"Error Parabola: ", num2str(EPar);"Error Exponencial: ", num2str(EExp);"Error Potencial: ",num2str(EPot);"Error Hiperbola: ", num2str(EHyp)]
else
printf("Chupala");
endif
printf("\n\nPrograma finalizado\n\n");
