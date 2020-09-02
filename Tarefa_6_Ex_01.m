#CODE--------------------------------------------------------------------------------------------------------------------------------------------------
clear
home
printf("Encontre a fórmula geral para o cálculo da solução de um \nsistema triângular inferior\n");


#------------------------------------------------------------------------------
#primeiro, definimos uma n ordem para a matriz 
#triangular inferior( n>=2 | n e Z).
#para este teste será usada a ordem 4
#------------------------------------------------------------------------------
ordem = 4;


#------------------------------------------------------------------------------
#até a próxima linha de comentário, o algoritmo cria uma matriz com a ordem
#definida, contendo valoreres Z* para elementos u(i,j) | i<=j (ou seja, uma
#matriz triangular inferior. A partir disto é criado uma matriz aumentada uc
#a partir de um vetor C também gerado aleatóriamente.
#------------------------------------------------------------------------------
function num = num_alea()
num = 1+round(rand(1)*9);
sinal = round(rand(1));
if(sinal==1)
  num = num*-1;
endif
endfunction
x=zeros(ordem,1);
c=zeros(ordem,1);
for j = 1:ordem
  x(j,1)=num_alea();
endfor
u = zeros(ordem);
uc = zeros(ordem,ordem+1);
for i = 1:ordem  
  soma = 0;
  for j = 1:ordem+1
    if(i>=j)
    u(i,j)=num_alea();
    soma=soma+(u(i,j)*x(j,1));
    uc(i,j)=u(i,j);   
    endif
    if (j==ordem+1)    
    uc(i,j)=soma; 
    c(i,1)=soma;
    endif
  endfor
endfor
clear i
clear j
printf("U:\n")
disp(u)
printf("\nC: \n")
disp(c)
printf("\nUx|C: \n")
disp(uc)
clear x
printf("\n")


#------------------------------------------------------------------------------
#agora é dado início à fórmula para solução do sistema triangular inferior
#------------------------------------------------------------------------------
x=zeros(ordem,1);


#------------------------------------------------------------------------------
#para cada linha, da primeira à ultima faça:
#------------------------------------------------------------------------------
for k = 1:ordem  
  printf("x%d = 1/%d * (%d",k,u(k,k),c(k,1))
  somatorio = 0;
  
  
#------------------------------------------------------------------------------
  #para cada elemento desta linha uc(i,j) | j<i e vá até 1
#------------------------------------------------------------------------------
  for i = k-1:-1:1
    if (k~=1)
    printf(" - ")
  endif
  
  
#------------------------------------------------------------------------------
    #faça o somatório dos produtos dos coeficientes com os valores de x 
    #encontrados no passo anterior
#------------------------------------------------------------------------------
    somatorio=somatorio+(u(k,i)*x(i,1));
    printf("(%d)",u(k,i)*x(i,1))    
  endfor
    
    
#------------------------------------------------------------------------------
  #subtraia esta somatoria ao valor do vetor de igualdade do sistema (c(i)) e
  #divida pelo elemento da diagonal principal nesta linha (u(i,i))
  #assim teremos o valor de x(i) da solução
#------------------------------------------------------------------------------
  x(k,1)=1/u(k,k)*(c(k,1)-somatorio);
  printf(") = %d\n",x(k,1));
endfor
printf("\nx: \n")
disp(x)



#OUTPUT-----------------------------------------------------------------------------------------------------------------------------

Encontre a fórmula geral para o cálculo da solução de um
sistema triângular inferior
U:
    8    0    0    0
    6   -6    0    0
  -10    8   -5    0
    1    6    8   -4

C:
    40
    54
  -117
     1

Ux|C:
     8     0     0     0    40
     6    -6     0     0    54
   -10     8    -5     0  -117
     1     6     8    -4     1

x1 = 1/8 * (40) = 5
x2 = 1/-6 * (54 - (30)) = -4
x3 = 1/-5 * (-117 - (-32) - (-50)) = 7
x4 = 1/-4 * (1 - (56) - (-24) - (5)) = 9

x:
   5
  -4
   7
   9
>>
