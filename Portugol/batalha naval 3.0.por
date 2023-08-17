programa {
  funcao inicio() { 
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
    cadeia jogada
    inteiro li = 0 , co = 0
    logico vidas = verdadeiro
    cadeia nome 
    inteiro op
leia(jogada)
enquanto(jogada == "w" ou jogada == "s" ou jogada == "a" ou jogada == "d"){

  escolha(jogada)

  caso "w":

    li--
    pos[li][co] = 4

  pare

  caso "s":
    li++
    pos[li][co] = 4

  pare

  caso "a":

    co--
    pos[li][co] = 4

  pare

  caso "d":

    co++ 
    pos[li][co] = 4

  pare

  caso contrario

    escreva("opção invalida\n")
    leia(jogada)

  pare
  }
}}
