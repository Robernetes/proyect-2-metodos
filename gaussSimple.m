
%[2 1 -1; -3 -1 2; -2 1 2]
%[8 -11 -3]
clc; clear;
C = input("Ingrese la matrix A: ")
b = input("Ingrese el vector b: ");
b = b'
deter = det(C);
format bank;
if deter == 0
  print("No se puede resolver, determinante de matriz(C) == 0");
else
  A = [C b];                                                  
  n= size(A,1);                                               
  x = zeros(n,1);                                            
  for i=1:n-1
      for j=i+1:n
          m = A(j,i)/A(i,i)
          A(j,:) = A(j,:) - m*A(i,:)
      end
  end
  x(n) = A(n,n+1)/A(n,n)
  for i=n-1:-1:1
      summ = 0
      for j=i+1:n
          summ = summ + A(i,j)*x(j,:)
          x(i,:) = (A(i,n+1) - summ)/A(i,i)
      end
  end
end