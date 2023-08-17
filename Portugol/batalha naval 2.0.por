programa{
  inclua biblioteca Util --> u
  funcao inicio(){
  //Variaveis

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
      caracter jogada
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

    
  //=-=-Mapa=-=-=  🟦 = 1 🚢 = 2
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
  //=-=-Jogada-=-=-=
  enquanto(vidas){
    escreva("Qual a sua Jogada: ")
    leia(jogada)
    enquanto(jogada =="w" ou jogada=="a" ou jogada=="s" ou jogada=="d"){

    escolha(jogada)

    caso "w"

      escreva("foi! ")
      li = li+1
      pos[li][co] = 4

    pare

    caso "s"
      li++
      pos[li][co] = 4

    pare

    caso "a"

      co--
      pos[li][co] = 4

    pare

    caso "d"

      co++ 
      pos[li][co] = 4

    pare

    }


















  }
}
