function [ans] = comparacion (EREcta, EPar, EExp, EPot, EHyp)


ans = input ("Desea comparar los resultados?", "s");
    count=0;
if ((ans == "Si") || (ans == "si"))
  
    Errores=["Error Recta: ", num2str(EREcta);"Error Parabola: ", num2str(EPar);"Error Exponencial: ", num2str(EExp);"Error Potencial: ",num2str(EPot);"Error Hiperbola: ", num2str(EHyp)]
    tabla =[EREcta;EPar;EExp;EPot;EHyp];
    
    for i = 1:5
    %while (count > 5)
      
    if(tabla(i)==-1)

    tabla(i)=999999999999999999;
    count=count+1;
    endif
    
    %endwhile
    endfor
    
    ans=min(tabla);
    
else
    printf("Ha decidido no efectuar la comparacion");
endif
endfunction