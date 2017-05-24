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

include Capybara::DSL
RSpec.configure do |config|
  config.include Capybara::DSL, :type => :feature
end

ENV['ENV'] = 'api' unless ENV.has_key?'ENV'
ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]
# DEFAULT_DATA = YAML.load_file('./fixtures/data_files/datafile.yml')[ENV['ENV']]

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    config.default_max_wait_time = 3
end
