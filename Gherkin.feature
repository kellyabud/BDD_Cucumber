#encoding: UTF-8
#language: en

Feature: Saque em Caixas Eletrônicos
Sendo um cliente correntista do banco
Quero sacar dinheiro em caixas eletrônicos 
Para poder comprar em estabelecimentos que não aceitam cartão de débito/crédito

Scenario: Saque realizado com sucesso
Given que fulano está autenticado no caixa eletrônico
And o seu saldo é de +$600,00
When fulano solicita sacar $200,00
Then o saque é realizado com sucesso
And o seu saldo passa a ser +$400,00

Scenario: Não deve sacar se o valor do saque for zero
Given que fulano está autenticado no caixa eletrônico
And que o seu saldo é de +$100,00
When fulano solicita o saque de 0
Then o sistema exibe a mensagem informando que o valor não é permitido

Scenario: Não deve sacar se o valor for maior que o máximo permitido
Given que fulano está autenticado no caixa eletrônico 
When fulano solicita sacar $1.000,00 
Then o sistema apresenta uma mensagem de erro informando que o limite máximo é de $800,00

Scenario: Não deve sacar se o saldo for insuficiente
Given que fulano está autenticado no caixa eletrônico
And o saldo dele é de +$600,00
And não possui limite de cheque especial
When fulano solicita sacar $700,00 
Then o sistema apresenta uma mensagem de erro informando que o saldo é insuficiente

Scenario: Deve sacar usando limite de cheque especial
Given que fulano está autenticado no caixa eletrônico
And o saldo dele é de +$100,00
And o seu limite de cheque especial é de $500,00
When fulano solicita sacar $500,00
Then o saque é realizado com sucesso
And seu saldo passa a ser $-400





