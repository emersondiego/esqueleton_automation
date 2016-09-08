require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "faker"
require "rspec"
require 'rails'

Dir[File.dirname(__FILE__) + '/../helpers/*.rb'].each { |f| require f }
include SiteHelpers

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
Capybara.page.driver.browser.manage.window.maximize
