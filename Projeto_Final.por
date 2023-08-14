programa {
	
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Texto --> x
	inclua biblioteca Tipos --> ti
	
	const inteiro tamanhoListaLivros = 3
	
	cadeia livrosCatA[tamanhoListaLivros] = {"Código Limpo.", "Introdução à Inteligência Artificial: uma abordagem não técnica.", "HTML5 e CSS3: guia prático e visual."}
	cadeia autorLivrosCatA[tamanhoListaLivros] = {"Robert Cecil Martin.","Tom Taulli.", "Elizabeth Castro."}
	cadeia valorLivrosCatA[tamanhoListaLivros] = {"91,99.", "68,49.", "109,27."}
	cadeia tituloLivroCatA[tamanhoListaLivros] = {"CLI", "IIA", "HTM"}
	cadeia descricaoLivroCatA[tamanhoListaLivros] = {"Boas práticas na escrita de software que você pode aplicar para obter uma maior legibilidade e manutenabilidade do seu código.", "O livro Introdução à Inteligência Artificial chega para equipar os leitores com uma compreensão fundamental e oportuna da IA e seu impacto.", "A abordagem de fácil visualização utiliza exemplos de códigos do mundo real para guiá-lo pelo aprendizado de HTML e CSS."} 
	inteiro estoqueLivroCatA[tamanhoListaLivros] = {3, 2, 4}
	
	
	cadeia livrosCatB[tamanhoListaLivros] = {"Akira (Vol. #1.)", "Dragon Ball Super (Vol. #1.)", "Card Captor Sakura (Vol. #2.)"}
	cadeia autorLivrosCatB[tamanhoListaLivros] = {"Katsuhiro Otomo.", "Akira Toriyama.", "Nanase Ohkawa."}
	cadeia valorLivrosCatB[tamanhoListaLivros] = {"80,31", "43,81", "23,92"}
	cadeia tituloLivroCatB[tamanhoListaLivros] = {"AKR", "DBS", "CCS"}
	cadeia descricaoLivroCatB[tamanhoListaLivros] = {"Nesta aventura cheia de ficção, Kaneda entra em cena para salvar o amigo, enquanto uma terrível e monstruosa entidade ameaça despertar.", "Alguns meses se passaram desde a grande luta entre Goku e Majin Boo. Mas uma nova ameaça vem para acabar com a paz. Parece que o próximo inimigo vem do Sexto Universo e nossos heróis mal podem esperar para enfrenta-lo e testar a sua força.", "Mais uma edição especial e imperdível da mais famosa Card Captor do mundo!"}
	inteiro estoqueLivroCatB[tamanhoListaLivros] = {2, 4, 2}
	
	cadeia livrosCatC[tamanhoListaLivros] = {"Além do bem e do mal.", "O segundo sexo.", "Mulheres, raça e classe."}
	cadeia autorLivrosCatC[tamanhoListaLivros] ={"Friedrich Nietzsche.", "Simone de Beauvior.", "Angela Davis."} 
	cadeia valorLivrosCatC[tamanhoListaLivros] = {"27,99.", "99,90.", " 51,78."}
	cadeia tituloLivroCatC[tamanhoListaLivros] = {"ABM", "OSX", "MRC"}
	cadeia descricaoLivroCatC[tamanhoListaLivros] = {"Nietzsche considerava Além do bem e do mal seu livro mais importante e mais abrangente. Quase todos os temas de sua filosofia madura estão presentes aqui", "Pois, de O segundo sexo a A cerimônia do adeus, o empenho principal de Beauvoir foi o de construir uma nova identidade, sobretudo feminina, mas comum a todos na exigência da liberdade.", "Mulheres, raça e classe, de Angela Davis, é uma obra fundamental para se entender as nuances das opressões."}
	inteiro estoqueLivroCatC[tamanhoListaLivros] = {4, 2, 3}

	cadeia matrizLogins[5][2] = {{"Beatriz", "1234"}, {"Bruno", "5678"}, {"Cintia", "1510"}, {"Cristian", "9123"}, {"Felipe", "4567"}}
	cadeia usuario=""
	cadeia senha=""
	cadeia usuario2=""
	cadeia senha2=""
	inteiro easterEgg = 0

	funcao login(){ //Função que pede o usuário e a senha
		
		escreva("Por favor, digite seu usuário: ")
		leia(usuario)
		escreva("Agora por favor, digite sua senha: ")
		leia(senha)
		limpa()
	}

	funcao desenhaLogo() //Função que mostra a logo de aberturaa do programa.
    {
        const inteiro LINHA = 5, COLUNA = 95

        escreva("                      ____ ____ ____ ____ _________ ____ ____ ____ ____ _____\n")
        escreva("                     ||T |||E |||C |||H |||       |||B |||O |||O |||K |||S ||\n")
        escreva("                     ||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||\n")
        escreva("                     |/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|\n\n\n")
      //Desenho da logo
        para(inteiro i=0; i<LINHA; i++) {
            para(inteiro j=0; j<COLUNA; j++) {
                se(i == 2 e j < 20) {
					para(inteiro k=0; k<COLUNA; k++){
						se(k<4 ou k>=91) {
							escreva("|")
						} senao se((k>=5 e k<45) ou (k>=50 e k<90)) { 
							se(k==5 e j==5) { 
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
							escreva("")
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
	
	funcao folhearPaginas() { //Função que aparece folheando páginas
		escreva("Folheando Páginas")
		para(inteiro i = 0; i < 3; i++) {
			escreva(".")
			u.aguarde(500)
		}
		escreva("\n\n")
	}

	funcao destruicao() {
		escreva("Destruição em 3")
		para(inteiro i = 0; i < 3; i++) {
			escreva(".")
			u.aguarde(500)
		}
		escreva("\n2")
		para(inteiro i = 0; i < 3; i++) {
			escreva(".")
			u.aguarde(500)
		}
		escreva("\n1")
		para(inteiro i = 0; i < 3; i++) {
			escreva(".")
			u.aguarde(500)
		}
	}

	funcao explosao() {
		logico abc = verdadeiro
		enquanto(abc) {
			escreva("   		__,-~~/~    `---.")
    			u.aguarde(20)
    			escreva("\n              _/_,---(      ,    )")
    			u.aguarde(20)
    			escreva("\n          __ /        <    /   )  \\___")
    			u.aguarde(20)
    			escreva("\n- ------===;;;'====------------------===;;;===----- -  -")
    			u.aguarde(20)
    			escreva("\n              \\/  ~\"~\"~\"~\"~\"~\\~\"~)~\"/")
    			u.aguarde(20)
    			escreva("\n              (_ (   \\  (     >    \\)")
    			u.aguarde(20)
    			escreva("\n               \\_( _ <         >_>'")
    			u.aguarde(20)
    			escreva("\n                  ~ `-i' ::>|--\"")
    			u.aguarde(20)
    			escreva("\n                      I;|.|.|")
    			u.aguarde(20)
    			escreva("\n                     <|i::|i|`.")
    			u.aguarde(20)
    			escreva("\n                    (` ^'\"`-' \")")
    			escreva("\n\n")
		}
	}

	funcao inteiro menuPrincipal() { //Menu
		cadeia valor
		faca {
			limpa()
			escreva("\nUsuário logado como: ", usuario,"!\n\n")
			escreva("+---------------------------------------------------+\n")
			escreva("! Bem-vindo(a) à livraria Tech Books!               !\n")
			escreva("!---------------------------------------------------!\n")
			escreva("! Opções disponíveis:                               !\n")
			escreva("!					            !\n")
			escreva("! 1. Tecnologia             		            !\n")
			escreva("! 2. Mangá             			            !\n")
			escreva("! 3. Filosofia		                            !\n")
			escreva("! 4. Sair da livraria		                    !\n")
			escreva("+---------------------------------------------------+\n\n")
			escreva("Digite a sua categoria desejada: ")
			leia(valor)
			limpa()
			se(ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 0) { //Caso o usuário coloque um caracter sem ser número
				escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
				easterEgg++
				folhearPaginas()
				u.aguarde(500)
			}
			senao se (ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 1) { 
				escreva("De novo isso? Voltando ao menu.\n\n")
				easterEgg++
				folhearPaginas()
				u.aguarde(500)
			}
			senao se (ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 2) { 
				escreva("Você ainda não aprendeu a lição?\n\n")
				easterEgg++
				folhearPaginas()
				u.aguarde(500)
			}
			senao se (ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 3) { 
				escreva("Para, não tem nenhum easter egg aqui.\n\n")
				easterEgg++
				folhearPaginas()
				u.aguarde(500)
			}
			senao se (ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 4) { 
				escreva("...\n\n")
				easterEgg++
				folhearPaginas()
				u.aguarde(500)
			}
			senao se (ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 5) { 
				escreva("Eu estou avisando, é melhor parar.\n\n")
				easterEgg++
				folhearPaginas()
				u.aguarde(500)
			}
			senao se (ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 6) { 
				escreva("Último aviso.\n\n")
				easterEgg++
				folhearPaginas()
				u.aguarde(500)
			}
			senao se (ti.cadeia_e_inteiro(valor,10) == falso e easterEgg == 7) { 
				escreva("Eu avisei o suficiente, agora serei obrigado a explodir o PC.\n\n")
				destruicao()
				limpa()
				explosao()

			}
			senao se(ti.cadeia_para_inteiro(valor,10) < 1 ou ti.cadeia_para_inteiro(valor,10) > 4) { //Mostra a msg caso o número seja menor que 1 ou maior que 4
      			escreva("Voce escolheu um número inválido. Por favor, escolha uma das opções apresentadas.\n")
				u.aguarde(2000)
      		}
		} enquanto(ti.cadeia_e_inteiro(valor,10) == falso) //Vai repetir o menu se não for um número
		retorne ti.cadeia_para_inteiro(valor,10) //Retorna o valor opção selecionada para variável valor inteiro
	}
	
	funcao desenhaLivro(cadeia titulo, cadeia valor, cadeia autor, cadeia tituloCapa, cadeia descricao, inteiro estoque){ //Mostra as opções dos produtos
		escreva("_________________________________________________________________________\n")
		desenhaCapaIndiv(tituloCapa)
		escreva("\n")
		escreva("Livro: ", titulo, "\n")
		escreva("Autor(a): ", autor, "\n")
		escreva("Preço R$: ", valor, "\n")
		escreva("Descrição: ", descricao, "\n")
		escreva("Itens em estoque: ", estoque, "\n")
		escreva("*\n")
		
	}

	funcao desenhaCapaIndiv(cadeia letras){ //Desenho de capa dos produtos
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

	funcao logico validarEntrada() { //Função que confirma se o usuário quer entrar na loja (Antes do login)
		cadeia opcao
		caracter letra = 'a'
		logico valida = falso
		faca {
			escreva("Deseja ter a melhor experiência literária da sua vida? S/N\n")
			escreva("Digite o que o seu coração mandar: ")
			leia(opcao)
			se(ti.cadeia_e_caracter(opcao) == falso) { //Verifica se é um caracter, não deixa colocar cadeia
				escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
				u.aguarde(2000)
				limpa()
				folhearPaginas()
				limpa()
				valida = falso
			}
			senao se(ti.cadeia_para_caracter(opcao) == 's' ou ti.cadeia_para_caracter(opcao) == 'S') {  //Permite o usuário entrar se for s minúsculo ou maiúsculo
				valida = verdadeiro
			}
			senao se(ti.cadeia_para_caracter(opcao) == 'n' ou ti.cadeia_para_caracter(opcao) == 'N') { //Permite o usuário sair se for n minúsculo ou maiúsculo
				escreva("Obrigado pelo seu interesse!\n")
				valida = falso
			}
			senao { //Permite o usuário sair se for n minúsculo ou maiúsculo
				escreva("Parece que você digitou um caracter errado!\n")
				u.aguarde(2000)
				limpa()
				folhearPaginas()
				limpa()
				valida = falso
			}
		} enquanto(ti.cadeia_e_caracter(opcao) == falso) //Vai repetir o menu enquanto não for um caracter
		retorne valida //Foi criada uma variável para armazenar o tipo lógico e fazer a verificação de verdadeiro e falso
	}
	
	funcao inicio() {

		logico controlador = falso // Caracterizar se opção de login é falsa ou verdadeira
		logico verifica = falso // controlador do menu
		logico verifica1 = falso // controlador do login
		cadeia opcao // Serve para saber qual livro o usuário quer comprar
		desenhaLogo() // Função que chama a logo 
		u.aguarde(1500)
		folhearPaginas() // Função que aparece escrito folhear páginas
		limpa()
		enquanto(validarEntrada() == verdadeiro) { //Enquanto a entrada for verdadeiro deixa passar para o login
			verifica1 = verdadeiro
			enquanto(verifica1) { // Verifica o login
	     		faca{ 
	     			login()// Retorna para o login caso usuário digite login e senha errados
	  				para(inteiro i=0; i<5; i++){ // Contador que confirma os 5 logins e senhas
   	  					se(usuario == matrizLogins[i][0] e senha == matrizLogins[i][1]){
   							usuario2 = usuario // Criei uma váriavel que receberá um valor caso estiver correto 
   							senha2 = senha // Criei uma váriavel que receberá um valor caso estiver correto 
	        				}
	  				} 			
	   	     		se(usuario2 != usuario e senha2 != senha){ //Se o usuário e senha estiverem vazios é porque foi digitado errado ( a variável não recebeu nenhum valor)
	        				escreva("Usuario ou senha incorretas!\n")
	        				controlador = falso
	        			}
	        			senao {  // Mostra a mensagem na tela de se nha incorreta e volta pro login caso estejam incorretos
	        				escreva("Seja bem vindo(a), ", usuario2,"!\n")
	        				controlador = verdadeiro
	        			}
	        		} enquanto(controlador == falso)
	        		
			verifica = verdadeiro
			enquanto(verifica) { //Enquanto for verdadeiro repetirá o menu principal
				escolha(menuPrincipal()) { 
					caso 1: //Mostra os itens de tecnologia
					escreva("CATEGORIA: \n\n") 
					escreva("TECNOLOGIA\n")
					para (inteiro i = 0; i < tamanhoListaLivros; i++){ //Vai desenhar as capas dos itens
						desenhaLivro(livrosCatA[i], valorLivrosCatA[i], autorLivrosCatA[i], tituloLivroCatA[i], descricaoLivroCatA[i], estoqueLivroCatA[i])
						u.aguarde(2000) 
					}
					// Protótipo do carrinho(mensagens após aparecer os itens)
					escreva("_________________________________________________________________________\n\n")
					escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
					escreva("\nDigite a sua opção: ")
					leia(opcao)
					enquanto((ti.cadeia_e_inteiro(opcao,10) == falso) ou (ti.cadeia_para_inteiro(opcao,10) < 1) ou (ti.cadeia_para_inteiro(opcao,10) > 4)) { //Enquanto as opções forem inválidas vai repetir
					
						se(ti.cadeia_e_inteiro(opcao,10) == falso){
							escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n") //Caso digite algo que não é inteiro
							u.aguarde(2000)
							limpa()
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
						senao se(ti.cadeia_para_inteiro(opcao,10) < 1 ou ti.cadeia_para_inteiro(opcao,10) > 4){
							limpa()
							escreva("Você digitou um número inválido!\n")
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
					}
				
					se(ti.cadeia_para_inteiro(opcao,10) == 1){ //Número do item comprado (todas opções)
						limpa()
						escreva("Você comprou o livro ",livrosCatA[0],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 2){
						limpa()
						escreva("Você comprou o livro ",livrosCatA[1],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 3){
						limpa()
						escreva("Você comprou o livro ",livrosCatA[2],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 4){
						limpa()
						folhearPaginas()
					}
				
			 		pare
			 	
					caso 2:
					escreva("CATEGORIA: \n\n") // Categoria mangá
					escreva("MANGÁ\n")
					para (inteiro i = 0; i < tamanhoListaLivros; i++){
						desenhaLivro(livrosCatB[i], valorLivrosCatB[i], autorLivrosCatB[i], tituloLivroCatB[i], descricaoLivroCatB[i], estoqueLivroCatB[i])
						u.aguarde(2000)
					}
					escreva("_________________________________________________________________________\n\n")
					escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatB[0],"\n2 - ", livrosCatB[1], "\n3 - ", livrosCatB[2], "\n4 - Sair")
					escreva("\nDigite a sua opção: ")
					leia(opcao)
					enquanto((ti.cadeia_e_inteiro(opcao,10) == falso) ou (ti.cadeia_para_inteiro(opcao,10) < 1) ou (ti.cadeia_para_inteiro(opcao,10) > 4)) {
					
						se(ti.cadeia_e_inteiro(opcao,10) == falso){
							escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
							u.aguarde(2000)
							limpa()
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatB[0],"\n2 - ", livrosCatB[1], "\n3 - ", livrosCatB[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
						senao se(ti.cadeia_para_inteiro(opcao,10) < 1 ou ti.cadeia_para_inteiro(opcao,10) > 4){
							limpa()
							escreva("Você digitou um número inválido!\n")
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatB[0],"\n2 - ", livrosCatB[1], "\n3 - ", livrosCatB[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
					}
					
					se(ti.cadeia_para_inteiro(opcao,10) == 1){
						limpa()
						escreva("Você comprou o livro ",livrosCatB[0],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 2){
						limpa()
						escreva("Você comprou o livro ",livrosCatB[1],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 3){
						limpa()
						escreva("Você comprou o livro ",livrosCatB[2],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 4){
						limpa()
						folhearPaginas()
					}
					pare

					caso 3:
					escreva("\nCATEGORIA: \n\n") // Categoria de filosofia
					escreva("FILOSOFIA\n")
					para (inteiro i = 0; i < tamanhoListaLivros; i++){
						desenhaLivro(livrosCatC[i], valorLivrosCatC[i], autorLivrosCatC[i], tituloLivroCatC[i], descricaoLivroCatC[i], estoqueLivroCatC[i])
						u.aguarde(2000)
					}
					escreva("_________________________________________________________________________\n\n")
					escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatC[0],"\n2 - ", livrosCatC[1], "\n3 - ", livrosCatC[2], "\n4 - Sair")
					escreva("\nDigite a sua opção: ")
					leia(opcao)
					enquanto((ti.cadeia_e_inteiro(opcao,10) == falso) ou (ti.cadeia_para_inteiro(opcao,10) < 1) ou (ti.cadeia_para_inteiro(opcao,10) > 4)) {
					
						se(ti.cadeia_e_inteiro(opcao,10) == falso){
							escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
							u.aguarde(2000)
							limpa()
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatC[0],"\n2 - ", livrosCatC[1], "\n3 - ", livrosCatC[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)
						}
						senao se(ti.cadeia_para_inteiro(opcao,10) < 1 ou ti.cadeia_para_inteiro(opcao,10) > 4){
							limpa()
							escreva("Você digitou um número inválido!\n")
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatC[0],"\n2 - ", livrosCatC[1], "\n3 - ", livrosCatC[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)
						}
					}
					
					se(ti.cadeia_para_inteiro(opcao,10) == 1){
						limpa()
						escreva("Você comprou o livro ",livrosCatC[0],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 2){
						limpa()
						escreva("Você comprou o livro ",livrosCatC[1],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 3){
						limpa()
						escreva("Você comprou o livro ",livrosCatC[2],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 4){
						limpa()
						folhearPaginas()
					}
					
				
					pare

					caso 4: //Opção do menu caso queira sair (Volta pro login)
						escreva("Obrigado por utilizar a nossa biblioteca! Volte sempre.\n")
						u.aguarde(2000)
						folhearPaginas()
						limpa()
						usuario = ""
						senha = ""
						controlador = falso 
						verifica = falso
						verifica1 = falso
					pare
					}
				}
			}
		}
	}
<<<<<<< HEAD
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 19089; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
=======
}
>>>>>>> 134b6236fa126666b1437dbf37f578a77218cfa6
