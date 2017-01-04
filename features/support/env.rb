require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'rspec'
require 'rails'

Dir[File.dirname(__FILE__) + '/../helpers/*.rb'].each { |f| require f }
include SiteHelpers

if ENV['Firefox']
  puts " ================================= "
  puts " = Execution Firefox = "
  puts " ================================= "
  Capybara.default_driver = :selenium
  Capybara.default_max_wait_time = 10
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
      app,
      :browser => :firefox
    )
  end
  Capybara.page.driver.browser.manage.window.maximize

else ENV['Chrome']
  puts " ========================= "
  puts " = Execution Chrome = "
  puts " ========================= "
  Capybara.default_max_wait_time = 10
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  Capybara.default_driver = :selenium_chrome
  Capybara.javascript_driver = :chrome
end
