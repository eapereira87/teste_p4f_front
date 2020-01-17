class Home_Page
  include Capybara::DSL

  def acessar_site
    visit "http://automationpractice.com/index.php"
  end

  def clicar_sign_in
    click_on "Sign in"
  end
end
