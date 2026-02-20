algoritmo


var
    idade: real
EstaApto: logico

inicio

escreva("quantos anos voce tem?")
leia(idade)
EstaApto < - idade >= 18
se(EstaApto) entao
escreva("voce esta apto para dirigir")
senao
escreva("voce nao está apto para dirigir")
fimse
fim_algoritmo

//---------------//
algoritmo "verificador de notas"

var
    nota1, nota2
        : real
media real
frequencia: real
inicio

escreva("digite a primeira nota")
leia(nota1)
escreva("digite a segunda nota")
leia(nota2)
escreva("digite a frequencia")
leia(frequencia)
media <- (nota1 + nota2) / 2
 se (media>=7) e (frequencia>=75) entao
    escreva("aprovado")
senao se (media>=5) e (frequencia>=75) entao
    escreva("recuperação")
senao 
    escreva("reprovado")

    //------------------//
algoritmo "matricula"

var
   TerminouMedio : logico
   idade : inteiro

inicio

   escreva("quantos anos voce tem?")
   leia(idade)

   escreva("voce terminou o ensino medio? (verdadeiro/falso)")
   leia(TerminouMedio)

   se (idade >= 17) e (TerminouMedio) entao
      escreva("voce pode se matricular")

   senao se (idade < 17) entao
      escreva("voce nao pode se matricular pois ainda tem menos de 17 anos")

   senao se (TerminouMedio = falso) entao
      escreva("voce nao pode se matricular pois nao terminou o ensino medio")

   fimse

fimalgoritmo

//------------//


algoritmo "imprestimo de banco"

    Sistema de Empréstimo

    Um banco analisa se a pessoa pode pegar empréstimo.

    Regras:

    Se salário >= 3000

    E nome não está negativado

    → Empréstimo aprovado

    Se salário >= 2000
    E nome não está negativado

    → Em análise

    Se nome está negativado
    → Negado por restrição no nome

    Se salário < 2000
    → Negado por renda insuficiente




var
   salario : real
   nomeNegativado : logico

inicio
   escreva("Qual é o seu salario? ")
   leia(salario)

   escreva("Seu nome esta negativado? (verdadeiro/falso): ")
   leia(nomeNegativado)

   se (nomeNegativado) entao
      escreva("emprestimo negado por restricao no nome")
   senao se (salario >= 3000) entao
      escreva("emprestimo aprovado")
   senao se (salario >= 2000) entao
      escreva("emprestimo em analise")
   senao
      escreva("emprestimo negado por renda insuficiente")
   fimse

fimalgoritmo

  
//-----------------//
    Sistema de Acesso a Evento VIP

    Uma pessoa quer entrar em um evento VIP.

    Regras:

    Se estiver na lista VIP → entra direto.

    Se não estiver na lista VIP:

    Se idade >= 18 E pagou ingresso → entra.

    Se idade < 18 → não entra (independente de pagamento).

    Se não pagou ingresso → não entra.

    ⚠️ Importante:

    Só uma mensagem deve aparecer.

    A ordem das decisões importa.

    Mostrar o motivo quando for negado.


algoritmo "sistema vip"

var
   idade : inteiro
   esta_na_lista : logico
   pagou_ingresso : logico

inicio

   escreva("qual é a sua idade?")
   leia(idade)

   escreva("voce esta na lista VIP? (verdadeiro/falso)")
   leia(esta_na_lista)

   escreva("pagou o ingresso? (verdadeiro/falso)")
   leia(pagou_ingresso)

   se (esta_na_lista) entao
      escreva("entrada permitida")

   senao se (idade < 18) entao
      escreva("entrada negada para menores de idade")

   senao se (pagou_ingresso) entao
      escreva("entrada permitida")

   senao
      escreva("entrada negada por falta de pagamento")

   fimse

fimalgoritmo


---------------------

algoritmo "bolsas de estudo"

    Um programa para determinar quem recebe uma bolsa de estudo.

    Sistema de Bolsa de Estudos

    Uma universidade vai conceder bolsa para alunos com base nas regras abaixo:

    Regras:

    1️⃣ Se renda familiar <= 1500 → Bolsa Integral

    2️⃣ Se renda familiar <= 3000
    E média >= 8
    → Bolsa Parcial

    3️⃣ Se média >= 9
    (independente da renda)
    → Bolsa por Mérito

    4️⃣ Caso contrário → Sem bolsa

    algoritmo "bolsas de estudo"

var
 renda: real
 media: real

 inicio

  escreva("qual é a renda familiar?")
   leia(renda)
   escreva("qual é a media do aluno?")
    leia(media)
    se ( renda<=1500) entao
         escreva("bolsa integral")
   senao se (renda <=3000) e (media >= 8) entao
         escreva("bolsa parcial")
   senao se (media>=9) entao
         escreva("bolsa por mérito")    
    senao
         escreva("sem bolsa")
fimse
fim_algoritmo   




//------------estrutura de repetição------------------//

Algoritmo "conte até 10"


Var

contador: inteiro

Inicio

 contador <-
  enquanto (contador<= 10) faca
      escreval(contador)
     contador<- contador + 1
     fimEnquanto




fimalgoritmo

 //-------------conte de 10 a 0//-----------
Algoritmo "conte de 0 até 10"


Var

  contador: inteiro

Inicio

  contador <- 10
  enquanto (contador >= 0 ) faca
    escreval(contador)
    contador <- contador - 1
  fimEnquanto
fimalgoritmo


Algoritmo "usuario q pede"


Var

  contador: inteiro
  valor:inteiro
  salto:inteiro

Inicio

  contador <- 0
  escreval("voce quer contar até quanto ?")
  leia(valor)
  escreva("qual será o valor do salto?gay")
  leia(salto)
  enquanto (contador <= valor ) faca
    escreval(contador)
    contador <- contador + salto
  fimEnquanto
fimalgoritmo



algoritmo "usuario_q_pede"

var
   cont: inteiro
   n: inteiro
   s: inteiro
   maior: inteiro
   menor: inteiro

inicio
   cont <- 1
   s <- 0

   enquanto (cont <= 5) faca
      escreval("Digite o ", cont, "o valor:")
      leia(n)

      se (cont = 1) entao
         maior <- n
         menor <- n
      senao
         se (n > maior) entao
            maior <- n
         fimse

         se (n < menor) entao
            menor <- n
         fimse
      fimse

      s <- s + n
      cont <- cont + 1
   fimenquanto

   escreval("O maior numero foi: ", maior)
   escreval("O menor numero foi: ", menor)
   escreval("A soma foi: ", s)
fimalgoritmo

Algoritmo "MeuPrograma"

// Disciplina: Algoritmos
// Professor: Conrado Salomé Ribeiro
// Descrição: Descreva o que o programa faz
// Autor(a): Nome do(a) aluno(a)
// Data: 18/02/2026

Var

  cont:inteiro
  n:real
  r:real



Inicio

  cont<-1
  n<- 7
  r<- (n * cont)
  repita
    escreval(n, " x ",cont "=", r)
    cont<- cont+1

    ate (cont >10)


