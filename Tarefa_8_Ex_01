#CODE------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------
clear
home
printf("Resolva usando o método de Gauss-Seidel\n\n");
printf("Sistema:\n");
printf("10x1 - x2 + 2x3 = 6\n-x1 + 11x2 - x3 + 3x4 = 25\n2x1 - x2 + 10x3 -x4 = -11\n3x2 - x3 + 8x4 = 15\n\n");

#-----------------------------------------------------------------------------------
#criamos então a matriz A e o vetor B apatir deste sistema:
#-----------------------------------------------------------------------------------
A=[10,-1,2,0;-1,11,-1,3;2,-1,+10,-1;0,3,-1,8;];
display(A);
B=[6,25,-11,15];
display(B);
printf("\nDado x(1) = (1,2,-1,1)\n");
printf("\nDada a tolerancia do erro sendo e=0,03\n\n");
tolerancia = 0.03; 
erro=1;
y=[1,2,-1,1];
x=[0,0,0,0];
itera=0;

#-----------------------------------------------------------------------------------
#até que o erro seja maior que a tolerância dada, o processo abaixo se repetirá
#-----------------------------------------------------------------------------------
while (erro>tolerancia)
#-----------------------------------------------------------------------------------
  #troca-se o estado do vetor x neste ponto
#-----------------------------------------------------------------------------------
 x=y;
 itera+=1;
#-----------------------------------------------------------------------------------
 #para cada linha da primeira até a última faça:
#-----------------------------------------------------------------------------------
  for i=1:4
 somatoria = 0; 
#-----------------------------------------------------------------------------------
 #para cada elemento da linha com exceção da diagonal, faça:
#-----------------------------------------------------------------------------------
    for j=1:4
      if (i<j)
#-----------------------------------------------------------------------------------
        #a somatória destes elementos pelo x
        #porém se o elemento vier antes da diagonal, utilize o x da etapa atual
#-----------------------------------------------------------------------------------
      somatoria += A(i,j)*y(j);
    endif 
    if (i>j)
#-----------------------------------------------------------------------------------
      #se vier depois da diagonal utilize o x da etapa anterior
#-----------------------------------------------------------------------------------
      somatoria += A(i,j)*x(j);
      endif
    endfor
#-----------------------------------------------------------------------------------
   #define o valor de x da corrente iteração como a divisão da subtração de B(i)
   # com a somatória pelo elemento da diagonal de A desta liinha
#-----------------------------------------------------------------------------------
    y(i) = (B(i)- somatoria)/A(i,i);
  endfor
#-----------------------------------------------------------------------------------
  #o erro é calculado utilizando a razão entre o 
  #valor máximo absoluto da diferença do x da corrente iteração com o da anterior
  #pelo valor maximo de x da corrente iteração
#-----------------------------------------------------------------------------------
erro = max(abs(y-x))/max(abs(x));
endwhile
display(y);
printf("\nIterações totais: %d\n",itera)  
#-----------------------------------------------------------------------------------
#este teste no final utiliza a primeira equação do sistema, o objetivo é chegar
#o mais próximo possível de 5, sendo assim, quanto menor for a tolerância, mais
#iterações ocorrerão e mais próximo de 6 o teste chegará
#-----------------------------------------------------------------------------------
teste = 10*y(1) - y(2) + 2*y(3)
#OUTPUT-----------------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------------

Resolva usando o método de Gauss-Seidel

Sistema:
10x1 - x2 + 2x3 = 6
-x1 + 11x2 - x3 + 3x4 = 25
2x1 - x2 + 10x3 -x4 = -11
3x2 - x3 + 8x4 = 15

A =

   10   -1    2    0
   -1   11   -1    3
    2   -1   10   -1
    0    3   -1    8

B =

    6   25  -11   15


Dado x(1) = (1,2,-1,1)

Dada a tolerancia do erro sendo e=0,03

y =

   1   2  -1   1


Iterações totais: 1
teste =  6
>>

  
