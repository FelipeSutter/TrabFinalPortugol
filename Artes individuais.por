programa
{
	inclua biblioteca Teclado --> t

	const inteiro tamanhoListaLivros = 3
	
	cadeia livrosCatA[tamanhoListaLivros] = {"Código Limpo.", "Introdução à Inteligência Artificial: uma abordagem não técnica.", "HTML5 e CSS3: guia prático e visual."}
	cadeia autorLivrosCatA[tamanhoListaLivros] = {"Robert Cecil Martin.","Tom Taulli.", "Elizabeth Castro."}
	cadeia valorLivrosCatA[tamanhoListaLivros] = {"R$ 91,99.", "R$ 68,49.", "R$ 109,27."}
	
	cadeia livrosCatB[tamanhoListaLivros] = {"Akira (Vol. #1.)", "Dragon Ball Super (Vol. #1.)", "Card Captor Sakura (Vol. #2.)"}
	cadeia autorLivrosCatB[tamanhoListaLivros] = {"Katsuhiro Otomo.", "Akira Toriyama.", "Nanase Ohkawa."}
	cadeia valorLivrosCatB[tamanhoListaLivros] = {"R$ 80,31", "R$ 43,81", "R$ 23,92"}
	
	cadeia livrosCatC[tamanhoListaLivros] = {"Além do bem e do mal.", "O segundo sexo.", "Mulheres, raça e classe."}
	cadeia autorLivrosCatC[tamanhoListaLivros] ={"Friedrich Nietzsche.", "Simone de Beauvior.", "Angela Davis."} 
	cadeia valorLivrosCatC[tamanhoListaLivros] = {"R$ 27,99.", "R$ 99,90.", "R$ 51,78."}
	
	funcao inicio(){
		inteiro i
		//escreva("TECNOLOGIA:\n\n")
		desenhaCategoria("TECNOLOGIA", "@")
		para (i = 0; i < tamanhoListaLivros; i++){
			desenhaLivro(livrosCatA[i], valorLivrosCatA[i], autorLivrosCatA[i])	
		}
		//escreva("MANGÁ: \n\n")
		desenhaCategoria("MANGÁ", "^^")
		para (i = 0; i < tamanhoListaLivros; i++){
			desenhaLivro(livrosCatB[i], valorLivrosCatB[i], autorLivrosCatB[i])	
		}

		//escreva("LITERATURA\n\n")
		desenhaCategoria("FILOSOFIA", "✎")
		para (i = 0; i < tamanhoListaLivros; i++){
			desenhaLivro(livrosCatC[i], valorLivrosCatC[i], autorLivrosCatC[i])	
		}
		
	}

	funcao desenhaLivro(cadeia titulo, cadeia valor, cadeia autor){
		escreva("_________________________________________________________________________\n")
		escreva("\n")
		escreva("Livro: ", titulo, "\n")
		escreva("Autor(a): ", autor, "\n")
		escreva("Preço(a): ", valor, "\n")
	}

	funcao desenhaCategoria(cadeia categoria, cadeia icone) {
		escreva("\n*************************************************************************\n")
		escreva("\nCategoria: "+categoria+"\n")
		escreva("     __________\n")
		escreva("    /        /,\n")
		escreva("   /   "+icone+"    /,\n")
		escreva("  /  ////  //\n")
		escreva(" /________//\n")
		escreva("(________(/\n")
		escreva("\n")
	}


	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1952; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */