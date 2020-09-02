clear
home
printf("Determine se o sistema formado pela matriz A � convergente\n\n");
A = [3,-1,1;3,6,2;3,3,7];
display(A);
printf("Primeiro, como o sistema � de ordem 3, teremos 3 alfas.\n Determinemos ent�o os valores destes alfas:\n\n");;
ordem = 3;
alfas = zeros(1,ordem);
# para todas as linhas do sistema fa�a
for ( i = 1:ordem)
    somatorio = 0;
  # para todas colunas desta linha fa�a
  for (j = 1:ordem)
    #some os valores absolutos desta coluna com exce��o do elemento a(i,i)
    if ( i~=j)      
      somatorio += abs(A(i,j));
    endif
  endfor
  alfas(1,i) = somatorio/A(i,i);
endfor
display(alfas);
if (max(abs(alfas))<1)
  printf("o valor m�ximo dos alfas � menor que 1, logo, o sistema � convergente");
else
   printf("o valor m�ximo dos alfas � maior que 1, logo, o sistema n�o � convergente");
endif
