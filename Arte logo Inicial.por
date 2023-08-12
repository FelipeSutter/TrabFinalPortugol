programa
 {
	inclua biblioteca Util --> u
	
	funcao inicio()
 {
		const inteiro LINHA = 5, COLUNA = 95

		escreva("                      ____ ____ ____ ____ _________ ____ ____ ____ ____ _____\n")
		escreva("                     ||T |||E |||C |||H |||       |||B |||O |||O |||K |||S ||\n")
		escreva("                     ||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||\n")
		escreva("                     |/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|\n\n\n")
		
		para(inteiro i=0; i<LINHA; i++) {
			para(inteiro j=0; j<COLUNA; j++) {
				se(i == 2 e j < 20) {
					para(inteiro k=0; k<COLUNA; k++){
						se(k<4 ou k>=91) { //linhas iniciais e finais "|"
							escreva("|")
						} senao se((k>=5 e k<45) ou (k>=50 e k<90)) { //começo e fim das linhas "_" da pagina
							se(k==5 e j==5) { // linhas da coluna do meio "║"
								escreva("TECH BOOKS ®")
							} senao se(k>5 e k<=33 e j==5) {
								escreva("_")
							} senao se(k>20 e k<45 e j==5) {
								escreva("")
							} senao {
								escreva("_")
							}
						} senao se(k == 47 ou k == 48) {
							escreva("║")
						} senao se(k == 46) {
							escreva("")// espaço antes da coluna do meio
						} senao {
							escreva(" ")
						}
					}
					se(j != 19) {
						escreva("\n")
					}
				} senao se(i < 2 e j == 45) {
					escreva(" \\/ ")
				} senao se(i > 2 e j == 45) {
					escreva(" /\\ ")
				} senao se(i != 2 e j < 91) {
					escreva("#")
				}
			}
			escreva("\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 137; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */