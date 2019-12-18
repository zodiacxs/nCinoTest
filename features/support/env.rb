require 'rubygems'
require 'cucumber'
require 'watir'

Selenium::WebDriver::Chrome.driver_path = "C:/chromedriver.exe"
browser = Watir::Browser.new :chrome
browser.window.maximize

Before do
  @browser = browser
end



