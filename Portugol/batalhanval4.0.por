programa{
  inclua biblioteca Util --> u
  funcao inicio(){

    //=-=-Variaveis de informações=-=-

    inteiro pos[5][5] // 1 = nada  2 = navio achado = limpo 4 onde eu to 
    logico navios [5][5]
    inteiro i = 1
    logico n[5][5]
    inteiro pontos
    inteiro melhor = 0

  //=-=-=Variaveis jogaveis=-=-

    inteiro vida = 5
    inteiro pontos = 0
    cadeia jogada = "p"
    inteiro li = 0 , co = 0
    logico vidas = verdadeiro
    cadeia nome 
    inteiro op

  //=-=-=Resetar numeros=-=-=

    para (inteiro l = 0; l<5; l++){
			para (inteiro c = 0; c < 5; c++){	
        pos[l][c] = 3
      }
    }  

  //=-=-=-Posições dos navios=-=-=-=

    //=-=-Navio 1 
    navios[0][1] = verdadeiro
    navios[1][1] = verdadeiro 

    //=-=-Navio 2 
    navios[0][4] = verdadeiro  
    navios[1][4] = verdadeiro  

    //=-=-Navio 3 
    navios[3][1] = verdadeiro 
    navios[3][2] = verdadeiro 

    //=-=-Navio 4 
    navios[4][0] = verdadeiro 
    navios[4][1] = verdadeiro 
    navios[4][2] = verdadeiro 

    //=-=-Navio 5
    navios[4][4] = verdadeiro


  //=-=-=-Pergunta para jogar-=-=-=
    escreva("Você deseja jogar um jogo??\n1) Sim \n2) Nâo\n")
    leia(op)
    se(op == 1){
      vidas = verdadeiro
      vida = 5
      li = 0 
      co = 0
      para (inteiro l = 0; l<5; l++){
			para (inteiro c = 0; c < 5; c++){	
        pos[l][c] = 3
      }
    }  

  //=-=-=-Mapa-=-=-=

    }
    senao{
    vidas = falso
    }
    //=-=-JOgo=-=-=  🟦 = 1 🚢 = 2
        enquanto(vidas){ //=-=-=-Enquanto para poder resetar-=-=-=
        limpa()
        escreva("Aperte W para ir para cima A para ir para a esquerda S para ir para baixo e S para ir para a direita, Boa sorte!\n")
        u.aguarde(800)
        enquanto(vida > 0){ //=-=-=-Enquanto para calcular a vida-=-=-=
        limpa()
        i = 1

  //=-=-=-Aparicção Mapa-=-=-=

          escreva("Vidas: ",vida," \n")
          escreva("   1  2   3  4   5 \n")
          para (inteiro linha = 0; linha <5; linha++){
            escreva(i++," ")
            para (inteiro coluna = 0; coluna < 5; coluna++){		
              se(pos[linha][coluna] == 1){
              escreva("🟦 ")   
              }
              senao se(pos[linha][coluna] == 2){
                escreva("🚢 ")
                pontos = pontos + 100
              }
              senao se(pos[linha][coluna] == 4){
                escreva("⚫ ")
              }
              senao{
                escreva("🌊 ")
              }
            }
            escreva("\n")
          }

  //=-=-=-Ler jogada-=-=-=

           
//=-=-=-Tablea de pontos  
        escreva("Digite um nome para salvar os pontos!!!\nNome: ")
        leia(nome)
        escreva("=-=-Tabela de Pontos=-=-\n")
        se(pontos>melhor){
          escreva("Parece que temos um novo marco de pontos PARABENS!!!🎉🎉🎉\n\n")
          melhor = pontos
        }
        senao{
          escreva("Não foi dessa vez, continue tentando para ficar em melhor!")
        }
        escreva("Melhor Pontuação: ",nome,": ",melhor,"\n")
        escreva("Pontuação Atual: ",nome," ",pontos)
        escreva("\n\nDeseja jogar de novo?\n1) Sim \n2) Nâo\n")
        leia(op)
        se(op == 1){
          vidas = verdadeiro
          vida = 5
          li = 0 
          co = 0
          para (inteiro l = 0; l<5; l++){
          para (inteiro c = 0; c < 5; c++){	
            pos[l][c] = 3
          }
        }  

        }
        senao{
          vidas = falso
        }
      }

      escreva("ok!") 
  }
}
