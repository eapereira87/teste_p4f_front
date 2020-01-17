Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each { |file| require file }

module Page_Objects
  def home_page
    @home_page ||= Home_Page.new
  end

  def authentication_page
    @authentication_page ||= Authentication_Page.new
  end

  def my_account_page
    @my_account_page ||= My_Account_Page.new
  end
end
