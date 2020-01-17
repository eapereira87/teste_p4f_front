class Authentication_Page
  elementos = [
    :email, :password, :botao_sign_in,
  ]

  attr_reader *elementos

  include Capybara::DSL

  def initialize
    @email = "#email"
    @password = "#passwd"
    @botao_sign_in = "#SubmitLogin"
    @alert = "div[class$=alert-danger]"
  end

  def digitar_email(email)
    find(@email).set "#{email}"
  end

  def digitar_password(password)
    find(@password).set "#{password}"
  end

  def clicar_botao_sign_in
    find(@botao_sign_in).click
  end

  def efetuar_login(email, password)
    digitar_email(email)
    digitar_password(password)
    clicar_botao_sign_in
  end

  def mensagem_erro
    @alert = find(@alert).text
    return @alert
  end
end
