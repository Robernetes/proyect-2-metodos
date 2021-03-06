#metodo de gauss-seidel 
clc;
numerosIteraciones = input("Ingrese la cantidad de iteraciones: ")    
                                       
c1 = 1; c2 = -2; c3 = 5;
 
                              
x = 0; y = 0; z = 0;
i = 0;

function ea = erroraproximado(xa,xp)
    ea = abs(((xa-(xp))/(xa))100);
end

fprintf("%s\t %s\t %s\t %s\t %s\t %s\t %s\t %s\n",'i','x','y','z','|Ex|','|Ey|','|Ez|' );
fprintf ("\n");  
while(i < numerosIteraciones)                 
    
    xn = ( -2(y) + -3(z) + 1)/8;        
    x = xn; 
    yn = (-4(x)  -6(z) - 2)/12;     
    y = yn;
    zn = (- 7(x) + -8(y) + 5)/(15);  
    z = zn; 
    fprintf('%.0f\t', i); 
    fprintf('%.4f\t', xn);              
    fprintf('%.4f\t', yn);               
    fprintf('%.4f\t', zn);    
    i++;
      
    if i > 1
       fprintf('%.4f\t', erroraproximado(xn, xi));
       fprintf('%.4f\t', erroraproximado(yn, yi));  
       fprintf('%.4f\t', erroraproximado(zn, zi));
        
     end
    xi = xn;
    yi = yn;
    zi = zn; 
    fprintf ("\n"); 
end
    fprintf ("\n"); 
    fprintf("solucion para  x = %.4f\t\n", x); 
    fprintf("solucion para  y = %.4f\t\n", y); 
    fprintf("solucion para  z = %.4f\t\n", z);
    fprintf('c1 = %.2f\t\n', 8x + 2y + 3z  ); 
    fprintf('c2 = %.2f\t\n', 4x + 12y + 6z ); 
    fprintf('c3 = %.2f\t\n', 7x +8y + 15z ); 
    fprintf ("\n");