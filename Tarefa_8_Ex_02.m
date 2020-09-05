#CODE-----------------------------------------------------------------------------------------------------------------------------------
clear
home
printf("Determine se o sistema formado pela matriz A é convergente\n\n");
A=[10,-1,2,0;-1,11,-1,3;2,-1,+10,-1;0,3,-1,8;];
display(A);
printf("Primeiro, como o sistema é de ordem 3, teremos 3 alfas.\n Determinemos então os valores destes alfas:\n\n");;
ordem = 4;
alfas = zeros(1,ordem);
#--------------------------para todas as linhas do sistema faça
for ( i = 1:ordem)
    somatorio = 0;
  #--------------------------para todas colunas desta linha faça
  for (j = 1:ordem)
    #--------------------------some os valores absolutos desta coluna com exceção do elemento a(i,i)
    if ( i~=j)      
      somatorio += abs(A(i,j));
    endif
  endfor
  alfas(1,i) = somatorio/A(i,i);
endfor
display(alfas);
if (max(abs(alfas))<1)
  printf("o valor máximo absoluto dos alfas é menor que 1, logo, o sistema é convergente");
else
   printf("o valor máximo absoluto dos alfas é maior que 1, logo, o sistema não é convergente");
endif
#OUTPUT------------------------------------------------------------------------------------------------------------------------------

Determine se o sistema formado pela matriz A é convergente

A =

   10   -1    2    0
   -1   11   -1    3
    2   -1   10   -1
    0    3   -1    8

Primeiro, como o sistema é de ordem 3, teremos 3 alfas.
 Determinemos então os valores destes alfas:

alfas =

   0.30000   0.45455   0.40000   0.50000

o valor máximo absoluto dos alfas é menor que 1, logo, o sistema é convergente>>
