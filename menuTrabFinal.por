programa {
	
	inclua biblioteca Util --> u

	funcao folhearPaginas() {
		escreva("Folheando Páginas")
		para(inteiro i = 0; i < 3; i++) {
			escreva(".")
			u.aguarde(500)
		}
		escreva("\n\n")
	}

	funcao inteiro menuPrincipal() {
		inteiro valor
		faca {
			limpa()
			escreva("+--------------------------------------------+\n")
			escreva("! Bem-vindo(a) à livraria Tech Books.        !\n")
			escreva("!--------------------------------------------!\n")
			escreva("! Opções disponíveis:                        !\n")
			escreva("!					     !\n")
			escreva("! 1. Drama             			     !\n")
			escreva("! 2. Mangá             			     !\n")
			escreva("! 3. Fantasia		                     !\n")
			escreva("! 4. Sair da livraria		             !\n")
			escreva("+--------------------------------------------+\n\n")
			escreva("Digite a sua categoria desejada: ")
			leia(valor)
			limpa()
			se(valor < 1 ou valor > 4) {
      			escreva("Voce escolheu uma opção invalida. Por favor, escolha uma das opções apresentadas.\n")
				u.aguarde(2000)
      		}
		} enquanto(valor < 1 ou valor > 4)
		retorne valor
	}
	
	funcao inicio() {
	
		logico verifica = verdadeiro
		cadeia produto[3][3]
		folhearPaginas()
		enquanto(verifica) {
			escolha(menuPrincipal()) {
			
				caso 1:
				escreva("Eu sou a Lenda.\n") //funcao mostrarProduto()
				u.aguarde(2000)
				limpa()
				pare

				caso 2:
				escreva("Dragon Ball Z.\n") //funcao mostrarProduto()
				u.aguarde(2000)
				limpa()
				pare

				caso 3:
				escreva("Harry Potter e o Prisioneiro de Azkaban.\n") //funcao mostrarProduto()
				u.aguarde(2000)
				limpa()
				pare

				caso 4:
				escreva("Obrigado por utilizar a nossa biblioteca! Volte sempre.\n")
				u.aguarde(2000)
				limpa()
				verifica = falso //função login()
				pare

				caso contrario:
				escreva("Hey, você está tentando burlar o sistema!")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @DOBRAMENTO-CODIGO = [4];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */