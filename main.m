#!/usr/bin/octave -q 
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


[data] = inputData();

[funcion] = menuPrincipal();
msgbox("Presione enter en caso que desee finalizar");
while (funcion != 0)
  
if (funcion == "A" || funcion == "a")
    EREcta = RectaMinCua(data);
elseif (funcion == "B" || funcion == "b")
    [EPar] = parabola(data);
elseif (funcion == "C" || funcion == "c")
    [EExp] = exponencial(data);
elseif (funcion == "D" || funcion == "d")
    [EPot] = potencial(data);
elseif (funcion == "E" || funcion == "e")
    [EHyp] = hiperbola(data);
endif



[funcion] = menuPrincipal();
endwhile
[ElMejor] = comparacion(EREcta, EPar, EExp, EPot, EHyp);



if (ElMejor == EREcta)
    Aprox = "Recta";
elseif (ElMejor == EPar)
    Aprox = "Parabola";
elseif (ElMejor == EPot)
    Aprox = "Potencial";
elseif (ElMejor == EExp)
    Aprox = "Exponencial";
elseif (ElMejor == EHyp)
    Aprox = "Hyperbola";
endif


%printf("\n\nLa mejor aproximacion es por:\n\n");
printf("\nLa mejor aproximacion es por:\n")
Aprox

%pause (5);
%enter = input ("Presione Enter para finalizar", "s");
%while (enter != 0)
%enter = input ("Presione Enter para finalizar", "s");
%endwhile
printf("\n\nPrograma finalizado\n\n");
