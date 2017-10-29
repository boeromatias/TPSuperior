function [ans] = comparacion (EREcta, EPar, EExp, EPot, EHyp)
ans = input ("Desea comparar los resultados?", "s");
if ((ans == "Si") | (ans == "si"))
    Errores=["Error Recta: ", num2str(EREcta);"Error Parabola: ", num2str(EPar);"Error Exponencial: ", num2str(EExp);"Error Potencial: ",num2str(EPot);"Error Hiperbola: ", num2str(EHyp)]
    tabla =[EREcta;EPar;EExp;EPot;EHyp];
    tabla.*(-1);
    ans=min(tabla)*(-1);    
endif
endfunction