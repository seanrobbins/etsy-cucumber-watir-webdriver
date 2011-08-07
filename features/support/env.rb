require 'rubygems'
require 'watir-webdriver'
require 'rspec'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'pages'))
require 'PageObject'

Before do
  @browser = Watir::Browser.new :firefox  
  @browser.driver.manage.delete_cookie "cart"
  @browser.driver.manage.delete_all_cookies
end

After do
  @browser.close
end