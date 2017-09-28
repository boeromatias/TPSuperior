%prompt = {"Width", "Height", "Depth"};
%defaults = {"1.10", "2.10", "3.10"};
%rowscols = [1,5; 1,5; 1,5];
%dims = inputdlg (prompt, "Enter Box Dimensions", rowscols, defaults);
%volume  = str2num (dims{1}) * str2num (dims{2}) * str2num (dims{3});

%[data] = readData();
[menu] = menuPrincipal();
%[MatrizDeDatos] = crearMatrizDeDatos(data);
%[result] = MultiplicarMatrices(MatrizDeDatos);
%[result] = genTuple(datos); # aplica en la matriz
printf("\n\nPrograma finalizado\n\n");
