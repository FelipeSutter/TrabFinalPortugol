programa {
	
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Texto --> x
	
	const inteiro tamanhoListaLivros = 3
	
	cadeia livrosCatA[tamanhoListaLivros] = {"Código Limpo.", "Introdução à Inteligência Artificial: uma abordagem não técnica.", "HTML5 e CSS3: guia prático e visual."}
	cadeia autorLivrosCatA[tamanhoListaLivros] = {"Robert Cecil Martin.","Tom Taulli.", "Elizabeth Castro."}
	cadeia valorLivrosCatA[tamanhoListaLivros] = {"R$ 91,99.", "R$ 68,49.", "R$ 109,27."}
	cadeia tituloLivroCatA[tamanhoListaLivros] = {"CLI", "IIA", "HTM"}
	
	cadeia livrosCatB[tamanhoListaLivros] = {"Akira (Vol. #1.)", "Dragon Ball Super (Vol. #1.)", "Card Captor Sakura (Vol. #2.)"}
	cadeia autorLivrosCatB[tamanhoListaLivros] = {"Katsuhiro Otomo.", "Akira Toriyama.", "Nanase Ohkawa."}
	cadeia valorLivrosCatB[tamanhoListaLivros] = {"R$ 80,31", "R$ 43,81", "R$ 23,92"}
	cadeia tituloLivroCatB[tamanhoListaLivros] = {"AKR", "DBS", "CCS"}
	
	cadeia livrosCatC[tamanhoListaLivros] = {"Além do bem e do mal.", "O segundo sexo.", "Mulheres, raça e classe."}
	cadeia autorLivrosCatC[tamanhoListaLivros] ={"Friedrich Nietzsche.", "Simone de Beauvior.", "Angela Davis."} 
	cadeia valorLivrosCatC[tamanhoListaLivros] = {"R$ 27,99.", "R$ 99,90.", "R$ 51,78."}
	cadeia tituloLivroCatC[tamanhoListaLivros] = {"ABM", "OSX", "MRC"}

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
			escreva("! 1. Tecnologia             		     !\n")
			escreva("! 2. Mangá             			     !\n")
			escreva("! 3. Filosofia		                     !\n")
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
	
	funcao desenhaLivro(cadeia titulo, cadeia valor, cadeia autor, cadeia tituloCapa){
		escreva("_________________________________________________________________________\n")
		desenhaCapaIndiv(tituloCapa)
		escreva("\n")
		escreva("Livro: ", titulo, "\n")
		escreva("Autor(a): ", autor, "\n")
		escreva("Preço(a): ", valor, "\n")
		escreva("*\n")
		
	}

	funcao desenhaCapaIndiv(cadeia letras){
		cadeia letra1 = x.extrair_subtexto(letras, 0, 1)
		cadeia letra2 = x.extrair_subtexto(letras, 1, 2)
		cadeia letra3 = x.extrair_subtexto(letras, 2, 3)
		escreva("\n")
		escreva("   ,   ,\n")
  		escreva("  /////|\n")
 		escreva(" ///// |\n")
		escreva("|~~~|  |\n")
		escreva("|===|  |\n")
		escreva("|"+letra1+"  |  |\n")
		escreva("| "+letra2+" |  |\n")
		escreva("|  "+letra3+"| /\n")
		escreva("|===|/\n")
		escreva("'---'\n")
	}
	
	funcao inicio() {
	
		logico verifica = verdadeiro
		folhearPaginas()
		inteiro opcao
		enquanto(verifica) {
			escolha(menuPrincipal()) {
				caso 1:
				  escreva("CATEGORIA: \n\n") // opcao 1
				  escreva("TECNOLOGIA\n")
				  para (inteiro i = 0; i < tamanhoListaLivros; i++){
					  desenhaLivro(livrosCatA[i], valorLivrosCatA[i], autorLivrosCatA[i], tituloLivroCatA[i])
					  u.aguarde(1000)
				  }
				  escreva("_________________________________________________________________________\n\n")
				  escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
				  escreva("\nDigite a sua opção: ")
				  leia(opcao)

					enquanto(opcao < 1 ou opcao > 4){
						escreva("Opção invalida!\n")
						escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
						escreva("\nDigite a sua opção: ")
						leia(opcao)		
					}
				
					se(opcao == 1){
						escreva("Você comprou o livro ",livrosCatA[0],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 2){
						escreva("Você comprou o livro ",livrosCatA[1],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 3){
						escreva("Você comprou o livro ",livrosCatA[2],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 4){
						limpa()
						folhearPaginas()
					}	
			 		pare
			 	
				caso 2:
				  escreva("CATEGORIA: \n\n") // opcao 2
				  escreva("MANGÁ\n")
				  para (inteiro i = 0; i < tamanhoListaLivros; i++){
					  desenhaLivro(livrosCatB[i], valorLivrosCatB[i], autorLivrosCatB[i], tituloLivroCatB[i])
				  }
				  escreva("_________________________________________________________________________\n\n")
				  escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatB[0],"\n2 - ", livrosCatB[1], "\n3 - ", livrosCatB[2], "\n4 - Sair")
				  escreva("\nDigite a sua opção: ")
				  leia(opcao)
					  enquanto(opcao < 1 ou opcao > 4){
						  escreva("Opção invalida!\n")
						  escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
						  escreva("\nDigite a sua opção: ")
						  leia(opcao)		
					  }
					se(opcao == 1){
						escreva("Você comprou o livro ",livrosCatB[0],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 2){
						escreva("Você comprou o livro ",livrosCatB[1],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 3){
						escreva("Você comprou o livro ",livrosCatB[2],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 4){
						limpa()
						folhearPaginas()
					}
					pare

				caso 3:
				  escreva("\nCATEGORIA: \n\n") // opcao 3
				  escreva("FILOSOFIA\n")
				  para (inteiro i = 0; i < tamanhoListaLivros; i++){
					  desenhaLivro(livrosCatC[i], valorLivrosCatC[i], autorLivrosCatC[i], tituloLivroCatC[i])
				  }
				  escreva("_________________________________________________________________________\n\n")
				  escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatC[0],"\n2 - ", livrosCatC[1], "\n3 - ", livrosCatC[2], "\n4 - Sair")
				  escreva("\nDigite a sua opção: ")
				  leia(opcao)
					enquanto(opcao < 1 ou opcao > 4){
						escreva("Opção invalida!\n")
						escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
						escreva("\nDigite a sua opção: ")
						leia(opcao)		
					}
					se(opcao == 1){
						escreva("Você comprou o livro ",livrosCatC[0],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 2){
						escreva("Você comprou o livro ",livrosCatC[1],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 3){
						escreva("Você comprou o livro ",livrosCatC[2],"\nAguarde!Você será direcionado para o menu inicial.")
						u.aguarde(5000)
						limpa()
						folhearPaginas()
					}
					senao se(opcao == 4){
						limpa()
						folhearPaginas()
					}
					pare

				caso 4:
					folhearPaginas()
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