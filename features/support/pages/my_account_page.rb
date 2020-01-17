class My_Account_Page
  elementos = [
    :message,
  ]

  attr_reader *elementos

  include Capybara::DSL

  def initialize
    @message = ".info-account"
  end

  def mensagem
    @message = find(@message).text
  end
end
