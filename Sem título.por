programa {
  funcao inicio() {
    inteiro menu=1,investimento=0,meses=0
real saldo=0, saque=0, deposito=0, depositos=0, saques=0,rendimento=0
cadeia extrato=""



enquanto(menu!=0 e menu<5 e menu>0){
escreva("|            1.Saque             |\n")
escreva("|            2.Deposito          |\n")
escreva("|            3.Extrato           |\n")
escreva("|            4.Saldo             |\n")
escreva("|            0.Sair              |\n")
leia (menu)
limpa()

escolha(menu){
caso 1:
escreva("Digite o valor do saque:")
leia (saque)
saques=saques + saque
se (saldo<saque ou saque < 0){
escreva("Impossivel Sacar \n")
}

senao{
escreva("Saque realizado com sucesso \n")
saldo = saldo - saque
extrato= extrato + "saque----R$" + saque + "\n"
}

pare

caso 2:
escreva("Digite o valo do deposito: ")
leia(deposito)
escreva("Deposito realizado com sucesso \n")
saldo= saldo+deposito
depositos= depositos + deposito
extrato= extrato + "deposito----R$" + deposito + "\n"
pare

caso 3:
escreva("Depositos:" + depositos + "\n")
escreva("Saques:" + saques + "\n")
escreva(extrato)
pare

caso 4:
escreva ("Seu saldo e:" + saldo + "\n")
pare
caso 5:
escreva("digite a quantidade de investimento:  ")
leia(investimento)
escreva("digite a quantidade de meses que deseja investir: ")
leia(meses) 
se(saldo >=investimento){
  saldo = saldo - investimento
  para(inteiro contador =1; contador <= meses; contador++)
  rendimento =investimento
  investimento = rendimento

}
senao {
  escreva("nao autorizado!")
}
pare
}
}
}


}
