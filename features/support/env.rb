require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'pry'
require 'pry-nav'
require 'site_prism'
require 'yaml'
require 'httparty'
require 'open-uri'
require 'faker'

USERNAME = ENV['username']
PASSWORD = ENV['password']

include Capybara::DSL
RSpec.configure do |config|
  config.include Capybara::DSL, :type => :feature
end

ENV['ENV'] = 'api' unless ENV.has_key?'ENV'
ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    config.current_driver = :selenium
    config.default_max_wait_time = 3
    Capybara.page.driver.browser.manage.window.maximize
end
