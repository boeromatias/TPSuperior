%prompt = {"Width", "Height", "Depth"};
%defaults = {"1.10", "2.10", "3.10"};
%rowscols = [1,5; 1,5; 1,5];
%dims = inputdlg (prompt, "Enter Box Dimensions", rowscols, defaults);
%volume  = str2num (dims{1}) * str2num (dims{2}) * str2num (dims{3});

%[data] = readData();

%Inicializo Errores%
EREcta=-1;
EPar=-1;
EExp=-1;
EPot=-1;
EHyp=-1;

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
[ElMejor] = comparacion(EREcta, EPar, EExp, EPot, EHyp);

if (ElMejor = EREcta)
    Aprox = "Recta";
elseif (ElMejor = EPar)
    Aprox = "Parabola";
elseif (ElMejor = EPot)
    Aprox = "Potencial";
elseif (ElMejor = EExp)
    Aprox = "Exponencial";
elseif (ElMejor = EHyp)
    Aprox = "Hyperbola";
endif

printf("\n\nLa mejor aproximacion es por:\n\n");
Aprox
printf("\n\nPrograma finalizado\n\n");
