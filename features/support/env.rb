require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "capybara/dsl"
require "capybara/rspec/matchers"
require "pry"
require "ffi"
require "rspec"
require "report_builder"

require_relative "page_helper.rb"

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Page_Objects)

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  # config.app_host = 'https://paginapadrao'
end

Capybara.default_max_wait_time = 5
