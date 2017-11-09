

function [retval] = inputData ()

  count=0;
  msgbox("Bienvenido a la consola de trabajo, ingrese los valores que desee aproximar");
  helpdlg("Ingrese: f para finalizar");  
  do 
    prompt = {"Valor X", "Valor Y"};
    defaults = {"", ""};
    rowscols = [1,5; 1,5];

    dims = inputdlg (prompt, "Ingrese", rowscols, defaults);
   
    if ((dims{1} == 'f') || (dims{2} == 'f') || (dims{2} == 'F') || (dims{1} == 'F')) %f finaliza
      break;
    endif
    
    if (count==0)
      A = [str2double(dims{1}), str2double(dims{2})];
    else
    A = [A; str2double(dims{1}), str2double(dims{2})];
    endif 
    count = count + 1; 
  until (dims{1} == 'f')
  retval = A
  
endfunction
