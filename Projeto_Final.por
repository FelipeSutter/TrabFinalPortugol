programa {
	
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

	funcao inteiro mostrarProdutos() {
		
		inteiro numero
		faca{
			escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
          	leia(numero)
          	se(numero < 1 ou numero > 4) {
          		escreva("Opção invalida!\n")
          	}	
		} enquanto(numero < 1 ou numero > 4)
		retorne numero
	}
	
	funcao inicio() {
	
		logico verifica = verdadeiro
		logico verifica1 = verdadeiro
		logico verifica2 = verdadeiro
		logico verifica3 = verdadeiro
		cadeia categoria1[3] = {"livro1Catg1", "livro2Categ1", "livro3Catg1"}
		cadeia categoria2[3] = {"livro1Catg2", "livro2Categ2", "livro3Catg2"}
		cadeia categoria3[3] = {"livro1Catg3", "livro2Categ3", "livro3Catg3"}
		folhearPaginas()
		enquanto(verifica) {
			escolha(menuPrincipal()) {
			
				caso 1:
				enquanto(verifica1) {
					escolha(mostrarProdutos()) {
						caso 1:
							escreva("Você escolheu o ", categoria1[0],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 2:
							escreva("Você escolheu o ", categoria1[1],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 3:
							escreva("Você escolheu o ", categoria1[2],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 4:
							limpa()
							folhearPaginas()
							verifica1 = falso
						pare
					}
				}
				limpa()
				pare

				caso 2:
				enquanto(verifica2) {
					escolha(mostrarProdutos()) {
						caso 1:
							escreva("Você escolheu o ", categoria2[0],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 2:
							escreva("Você escolheu o ", categoria2[1],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 3:
							escreva("Você escolheu o ", categoria2[2],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 4:
							limpa()
							folhearPaginas()
							verifica2 = falso
						pare
					}
				}
				limpa()
				pare

				caso 3:
				enquanto(verifica3) {
					escolha(mostrarProdutos()) {
						caso 1:
							escreva("Você escolheu o ", categoria3[0],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 2:
							escreva("Você escolheu o ", categoria3[1],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 3:
							escreva("Você escolheu o ", categoria3[2],"\n")
							escreva("Esse livro fala sobre isso\n")
							escreva("Estoque: 5\n")
							escreva("Preço R$\n")
							escreva("Digite:\n1- Para concluir a compra\n2- Para voltar ao menu anterior\n")
						pare//funcao mostrarProduto()

						caso 4:
							limpa()
							folhearPaginas()
							verifica3 = falso
						pare
					}
				}
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
 * @POSICAO-CURSOR = 5150; 
 * @DOBRAMENTO-CODIGO = [4];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */