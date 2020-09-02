#CODE-----------------------------------------------------------------------------------------------------------------------------------------
clear
home
printf("Resolva usando o método de Gauss-Jacobi\n\n");
printf("Sistema:\n");
printf("4x1 + x2 - x3 = 5\n-x1 + 3x2 + x3 = -4\n2x1 + 2x2 + 5x3 = 1\n\n");


#------------------------------------------------------------------------------------------------
#criamos então a matriz A e o vetor B apatir deste sistema:
#------------------------------------------------------------------------------------------------
A=[4,2,-1;-1,3,1;2,2,5];
display(A);
B=[5,-4,1];
display(B);
printf("\nDada a tolerancia do erro sendo e=0,05\n\n");
tolerancia = 0.05; 
erro=1;
x=[0,0,0];
y=[0,0,0];
itera=0;


#------------------------------------------------------------------------------------------------
#até que o erro seja maior que a tolerância dada, o processo abaixo se repetirá
#------------------------------------------------------------------------------------------------
while (erro>tolerancia)


#------------------------------------------------------------------------------------------------
  #troca-se o estado do vetor x neste ponto
#------------------------------------------------------------------------------------------------
 x=y;
 itera+=1;
 
 
#------------------------------------------------------------------------------------------------
 #para cada linha da primeira até a última faça:
#------------------------------------------------------------------------------------------------
  for i=1:3
 somatoria = 0;
 
 
#------------------------------------------------------------------------------------------------
 #para cada elemento da linha com exceção da diagonal, faça:
#------------------------------------------------------------------------------------------------
    for j=1:3
      if (i~=j)
      
      
#------------------------------------------------------------------------------------------------
        #a somatória destes elementos pelo x
#------------------------------------------------------------------------------------------------
      somatoria += A(i,j)*x(j);
      endif
    endfor
    
    
#------------------------------------------------------------------------------------------------
   #define o valor de x da corrente iteração como a divisão da subtração de B(i)
   # com a somatória pelo elemento da diagonal de A desta liinha
#------------------------------------------------------------------------------------------------
    y(i) = (B(i)- somatoria)/A(i,i);
  endfor
  
  
#------------------------------------------------------------------------------------------------
  #tirando a primeira iteração, o erro é calculado utilizando a razão entre o 
  #valor máximo absoluto da diferença do x da corrente iteração com o da anterior
  #pelo valor maximo de x da corrente iteração
#------------------------------------------------------------------------------------------------
 if (itera~=1)
erro = max(abs(y-x))/max(abs(x));
endif
endwhile
display(y);
printf("\nIterações totais: %d\n",itera) 


#------------------------------------------------------------------------------------------------
#este teste no final utiliza a primeira equação do sistema, o objetivo é chegar
#o mais próximo possível de 5, sendo assim, quanto menor for a tolerância, mais
#iterações ocorrerão e mais próximo de 5 o teste chegará
#------------------------------------------------------------------------------------------------
teste = 4*y(1) + 2*y(2) - 1*y(3)

#OUTPUT--------------------------------------------------------------------------------------------------------------------------------------------

Resolva usando o método de Gauss-Jacobi

Sistema:
4x1 + x2 - x3 = 5
-x1 + 3x2 + x3 = -4
2x1 + 2x2 + 5x3 = 1

A =

   4   2  -1
  -1   3   1
   2   2   5

B =

   5  -4   1


Dada a tolerancia do erro sendo e=0,05

y =

   1.53000  -0.73426  -0.16422


Iterações totais: 5
teste =  4.8157
>>
