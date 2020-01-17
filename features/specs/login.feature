# language: pt
# encoding: utf-8

Funcionalidade: Login

Cenario: Login COM sucesso
    Dado o site Automation Pratice
    Quando clico em Sign in
    E digito o email address "qa_erick@teste.com"
    E digito password "teste"
    E clico no botao Sign in
    Entao sera exibido a mensagem de boas vindas "Welcome to your account. Here you can manage all of your personal information and orders."

Esquema do Cenario: Login SEM sucesso
    Dado o site Automation Pratice
    Quando clico em Sign in
    E digito o email address "<email>"
    E digito password "<password>"
    E clico no botao Sign in
    Entao sera exibido a mensagem de erro "<message>"
    Exemplos:
        |email             |password|message                   |
        |                  |        |An email address required.|
        |qa_erick@teste.com|        |Password is required.     |
        |xxxxxxxxx         |        |Invalid email address.    |
        |qa_erick@teste.com|ddddd   |Authentication failed.    |