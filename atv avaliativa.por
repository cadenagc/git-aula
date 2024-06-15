programa
{

     inclua biblioteca Texto --> T

	const inteiro total = 25
	
	inteiro quant, ponteiro = 0, n, x, exc = 0
	caracter opcao, resposta
	cadeia nome[total], busca, enter, msg, data, idade[total], marca[total], problema[total], equipamento[total]
	logico encontrado = falso
	
	      funcao inicio()
	      {
		 limpa()
		 escreva("Quantos equipamentos gostaria de cadastrar? [MAX: ", total, " registros.]\n")
		 leia(quant)


		 se(quant > 0)
		 {

		 se(quant <= total)
		 {
			menu() //Redireciona o usuário para a função menu	 
		 }
		 senao
		 {
	      limpa()
           escreva("/n/n ATENÇÃO: superior ao tamanho suportado! Tente novamente!")
           
           inicio()
		 }
		 
		 }
		 senao 
		 {
		
	      limpa()
           escreva("/n/n ATENÇÃO: Quantidade inválida! Tente novamente!")
          
           inicio()
           }
          
           }
           funcao menu()
           {
       	 limpa()

           msg = "Menu Geral           |" // personaliza o topo com uma msg
           topo() //chama função topo
           
            
           escreva("1 - Cadastrar novo equipamento\n")
           escreva("2 - Listar equipamento cadastrados\n")
           escreva("3 - Buscar equipamento cadastrado\n")
           escreva("4 - Excluir equipamento cadastrado\n")
           escreva("5 - Sair do sistema \n")


           escreva("==================================================\n\n")
           escreva("Opção: ")
           leia(opcao)

           escolha(opcao)
           {
           caso '1':
           	{
           		cadastro() //chama função cadastro
           		pare
           	}
           caso '2':
           {
           	listar()      //chama a função listar
                    pare
          
           }
           caso '3':
           {
           	buscar()      //chama função
           	pare
           	
           }

           caso '4':
           {
           	excluir()      //chama função
           	pare
           	
           }
       
           caso '5':
           {
           	sair()        //Chama a função sair
           	pare
           }	

           caso contrario:
           {
           limpa()
           escreva("/n/n ATENÇÃO: Opção inválida!!")
           
           menu()
           pare
           }
           }
           }
           funcao cadastro()
           {
       
       	 se (ponteiro < quant)
       	 {
       	 msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()
           
       	 escreva("Informe o nome do(a) proprietário:\n")
       	 leia(nome[ponteiro])
       	 nome[ponteiro] = T.caixa_alta(nome[ponteiro]) //altera o nome para caixa alta
       	 
       	 msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()

       	 limpa()
       	 escreva("Informe data de entrada do equipamento de ", nome[ponteiro], ":\n")
       	 leia(idade[ponteiro])
         idade[ponteiro] = T.caixa_alta(idade[ponteiro]) 

          msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()

         limpa()
         escreva("Informe a marca do equipamento de ", nome[ponteiro], ":\n")
         leia(marca[ponteiro])

          msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()

           limpa()
         escreva("Informe o problema do equipamento de ", nome[ponteiro], ":\n")
         leia(problema[ponteiro])

          msg = "Cadastro             |" // personaliza o topo com uma msg
           topo()



       	 ponteiro++  //incrementar a variavel ponteiro 
           //ponteiro = ponteiro + 1 
       	 limpa()
       	 escreva("\n\nAVISO: Cadastro realizado com sucesso!")
       	
       	 menu()   //Retorna para a função
       	 }
       	 senao
       	 {
       	 limpa()
       	 escreva("\n\n ATENÇÃO: Limite de cadastros atingido!")
       	 
       	 menu()     //Retorno para função menu
       	
       	
       	
       	 }
       	
           }
           funcao sair()
      
           {
          	
           limpa()
       	 escreva("Lista de equipamentos cadastrados\n\n")
           limpa()
       	 escreva("Finalizando o sistema em 05 segundos. . . ")
       	 

           limpa()
       	 escreva("Finalizando o sistema em 04 segundos. . . ")
       	 

       	 limpa()
       	 escreva("Finalizando o sistema em 03 segundos. . . ")
       	 
       	 limpa()
       	
       	 escreva("Finalizando o sistema em 02 segundos. . . ")
       	

       	 limpa()
       	 escreva("Finalizando o sistema em 01 segundos. . . ")
       

       	 limpa()
       	 escreva("Finalizando o sistema em 00 segundos. . . ")
       	

           limpa()
        	 escreva("Sistema finalizado com sucesso!\n\n\n\n\n\n\n")
           escreva("==================================================\n\n")

       	
           }
           funcao listar()
           {
           limpa()
           se(ponteiro == 0)
          	{
           escreva("AVISO: Nenhum registro encontrado!")
           
           menu()
           }
           senao
           {
           msg ="Lista de equipamentos   |" // personaliza o topo com uma msg
           topo()
          
           escreva("Lista de equipamentos cadastrados\n")
           escreva("==================================================\n\n")
           //inicio do laço para exebir os registros dos clientes
           para(n = 0; n < ponteiro; n++)
           {
           escreva(" - Nome: ", nome[n], "\n", " - Data:  ", idade[n], "\n", " - Equipamento: ", marca[n], "\n", " - Problema: ", problema[n])
           }

           retornar()
          
           }
           }
           funcao buscar()
           
           {
           msg ="Busca de equipamentos    |" // personaliza o topo com uma msg
           topo()
               
           escreva(" Informe o nome do equipamento a ser procurado:\n")
           leia(busca)
           busca = T.caixa_alta(busca)
           encontrado = falso

           para(n = 0; n < ponteiro; n++)
           {
           se(nome[n] == busca)
           {
           escreva(n+1, "- Marca: ", marca[n],"\n", " - Data: ", idade[n], "\n", " - Problema: ", problema[n], "\n")
           encontrado = verdadeiro
           }
           	
           		
           }

           se(encontrado == falso)
           {
           msg ="Busca de equipamentos    |" // personaliza o topo com uma msg
           topo()
           escreva("Nenhum equipamento foi encontrado com o nome ", busca, ".")
           }
           	
           retornar()
          	
           }
           funcao retornar()
              
           {
           escreva("\n==================================================\n\n")
           escreva("Pressione a tecla [ENTER] para retornar!")
           leia(enter)
           menu()
           }
           funcao excluir()
        
           {
           msg = "Busca de equipamentos |"
           topo()

           escreva("Informe o nome do equipamento consertado \n")
           leia(busca)
           busca = T.caixa_alta(busca)
           encontrado = falso

           para(n = 0; n < ponteiro; n++)
           {
           se(nome[n] == busca)
           {
           limpa()
           escreva("ATENÇÃO: Deseja realmente ir para o(a) próximo cliente ", nome[n], "? [S/N]")
           leia(resposta)

           se(resposta == 's' ou resposta == 'S')
           {
           	para(x = n; x < ponteiro-1; x++)
           	{
           		nome[x] = nome[x+1]
           		idade[x] = idade[x+1]
           	}
           
           encontrado = verdadeiro
           ponteiro--
           }
           senao
           {
           limpa()
           encontrado = verdadeiro
           escreva("O registro do equipamento ", nome[n], " foi mantido."	)
           }
           }
           }
           
           se(encontrado == falso)
           {
           	
           msg ="Busca do equipamento    |" // personaliza o topo com uma msg
           topo()
           escreva("Nenhum equipamento foi encontrado com o nome ", busca, ".")
           }
           retornar()
           	
           }
           funcao topo()
           {
           limpa()
           escreva(".=================================================.\n")
           escreva("|      SISTEMA DE CADASTRO - ", msg,"\n")              
           escreva("'================================================='\n")
           }

           
           }
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8503; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */