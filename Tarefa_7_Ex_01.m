#CODE-----------------------------------------------------------------------------------------------------------------------------------------

clear
home
printf("Determine se o sistema formado pela matriz A é convergente\n\n");
A = [3,-1,1;3,6,2;3,3,7];
display(A);
printf("Primeiro, como o sistema é de ordem 3, teremos 3 alfas.\n Determinemos então os valores destes alfas:\n\n");;
ordem = 3;
alfas = zeros(1,ordem);

#--------------------------------------------------------------------------------------
# para todas as linhas do sistema faça
#--------------------------------------------------------------------------------------
for ( i = 1:ordem)
    somatorio = 0;
  # para todas colunas desta linha faça
  for (j = 1:ordem)
    #some os valores absolutos desta coluna com exceção do elemento a(i,i)
    if ( i~=j)      
      somatorio += abs(A(i,j));
    endif
  endfor
  #atribua o valor da somatória à alfa(i)
  alfas(1,i) = somatorio/A(i,i);
endfor
display(alfas);


#--------------------------------------------------------------------------------------
#verifique se o máximo dos valores absolutos dos alfas sejam menores que 1
#--------------------------------------------------------------------------------------
if (max(abs(alfas))<1)
  printf("o valor máximo absoluto dos alfas é menor que 1, logo, o sistema é convergente");
else
   printf("o valor máximo absoluto dos alfas é maior que 1, logo, o sistema não é convergente");
endif




#OUTPUT----------------------------------------------------------------------------------------------------------------------------------------

Determine se o sistema formado pela matriz A é convergente

A =

   3  -1   1
   3   6   2
   3   3   7

Primeiro, como o sistema é de ordem 3, teremos 3 alfas.
 Determinemos então os valores destes alfas:

alfas =

   0.66667   0.83333   0.85714

o valor máximo absoluto dos alfas é menor que 1, logo, o sistema é convergente>>
