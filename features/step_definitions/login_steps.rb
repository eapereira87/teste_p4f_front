Dado("o site Automation Pratice") do
  home_page.acessar_site
end

Quando("clico em Sign in") do
  home_page.clicar_sign_in
end

Quando("digito o email address {string}") do |email|
  authentication_page.digitar_email(email)
end

Quando("digito password {string}") do |password|
  authentication_page.digitar_password(password)
end

Quando("clico no botao Sign in") do
  authentication_page.clicar_botao_sign_in
end

Entao("sera exibido a mensagem de boas vindas {string}") do |message|
  expect(my_account_page.mensagem).to eql message
end

Entao("sera exibido a mensagem de erro {string}") do |message|
  # binding.pry
  expect(authentication_page.mensagem_erro).to include message
end
