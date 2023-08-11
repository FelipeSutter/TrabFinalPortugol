programa
{
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
	
	funcao inicio(){
		inteiro i

		escreva("CATEGORIA: \n\n")
		escreva("TECNOLOGIA\n")
		para (i = 0; i < tamanhoListaLivros; i++){
			desenhaLivro(livrosCatA[i], valorLivrosCatA[i], autorLivrosCatA[i], tituloLivroCatA[i])	
		}
		
		escreva("CATEGORIA: \n\n")
		escreva("MANGÁ\n")
		para (i = 0; i < tamanhoListaLivros; i++){
			desenhaLivro(livrosCatB[i], valorLivrosCatB[i], autorLivrosCatB[i], tituloLivroCatB[i])	
		}

		escreva("\nCATEGORIA: \n\n")
		escreva("FILOSOFIA\n")
		para (i = 0; i < tamanhoListaLivros; i++){
			desenhaLivro(livrosCatC[i], valorLivrosCatC[i], autorLivrosCatC[i], tituloLivroCatC[i])	
		}
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2766; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */