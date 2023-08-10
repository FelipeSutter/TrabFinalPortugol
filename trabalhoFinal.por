programa
{
	
	funcao inicio()
	{
		cadeia categoria1[3] = {"livro1Catg1", "livro2Categ1", "livro3Catg1"}
		cadeia categoria2[3] = {"livro1Catg2", "livro2Categ2", "livro3Catg2"}
		cadeia categoria3[3] = {"livro1Catg3", "livro2Categ3", "livro3Catg3"}
          inteiro numero
          cadeia sair
          inteiro concluirVoltar

          escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
          leia(numero)

          enquanto(numero != 1 e numero != 2 e numero != 3
          e numero != 4){
          	
          escreva("Opção invalida!\n")
          escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
          leia(numero)
					
		}
          
		escolha(numero){
			caso 1:
			escreva("Você escolheu o ", categoria1[0],"\n")
			escreva("Esse livro fala sobre isso\n")
			escreva("Estoque: 5\n")
			escreva("Preço R$\n")
			escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
			leia(concluirVoltar)

			
			enquanto(concluirVoltar != 1 e concluirVoltar != 2){
			escreva("Opção invalida!\n")
			escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
			leia(concluirVoltar)
			se(concluirVoltar == 1){
			   escreva("Compra finalizada")
			}
			enquanto(concluirVoltar == 2){
			escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
               leia(numero)	
			}}
               pare
               
			caso 2:
			escreva("Você escolheu o ", categoria1[1],"\n")
			escreva("Esse livro fala sobre isso\n")
			escreva("Estoque: 5\n")
			escreva("Preço R$\n")
			escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
			leia(concluirVoltar)

			
			enquanto(concluirVoltar != 1 e concluirVoltar != 2){
			escreva("Opção invalida!\n")
			escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
			leia(concluirVoltar)
			se(concluirVoltar == 1){
			escreva("Compra finalizada")
			}
			enquanto(concluirVoltar == 2){
			escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
               leia(numero)	
			}}
               pare
			

			caso 3:
			escreva("Você escolheu o ", categoria1[2],"\n")
			escreva("Esse livro fala sobre isso\n")
			escreva("Estoque: 5\n")
			escreva("Preço R$\n")
			escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
			leia(concluirVoltar)

			
			enquanto(concluirVoltar != 1 e concluirVoltar != 2){
			escreva("Opção invalida!\n")
			escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
			leia(concluirVoltar)
			se(concluirVoltar == 1){
			escreva("Compra finalizada")
			}
			enquanto(concluirVoltar == 2){
			escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
               leia(numero)	
			}}
               pare

			caso 4:
			escreva("Você deseja mesmo sair?\nDigite s para Sim e n para não\n")
			leia(sair)
			se(sair == "s" ou sair == "S"){
				
			}
			enquanto(sair == "n" ou sair == "N"){
			escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
               leia(numero)
			}
			enquanto(sair == "s" e sair == "S" e sair == "n" e sair == "N"){
			escreva("Opção invalida!\n")
			escreva("Você deseja mesmo sair?\nDigite s para Sim e n para não\n")
			leia(sair)
			}

		}}}
               
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3241; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */