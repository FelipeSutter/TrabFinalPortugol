programa
{
//listar usuários e suas respectivas senhas
    	cadeia matrizLogins[5][2] = {{"Beatriz", "1234"}, {"Bruno", "5678"}, {"Cintia", "1510"}, {"Cristian", "9123"}, {"Felipe", "4567"}}
	cadeia usuario=""
	cadeia senha=""
	cadeia usuario2=""
	cadeia senha2=""

	funcao  login(){
		
		escreva("Por favor, digite seu usuário: ")
		leia(usuario)
		escreva("Agora por favor, digite sua senha: ")
		leia(senha)
		limpa()
		
	}
	
	
	funcao inicio()
	{
		login()
		
			logico controlador = falso
	        	
	        	enquanto(controlador == falso){	
	  		para(inteiro i=0; i<5; i++){
  			 
   	  		se(usuario == matrizLogins[i][0] e senha == matrizLogins[i][1]){
   				usuario2 = usuario
   				senha2 = senha
	        		}
	  		}
	   	        	se(usuario2 != "" e senha2 !=""){
	        		escreva("Seja bem vindo ",usuario2)
	        		controlador=verdadeiro
	        		}senao{
	        			escreva("Usuario ou senha incorretas!\n")
	        			login()
	        			}
			}
  			
		}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 159; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */