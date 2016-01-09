require "selenium-webdriver"
require "rspec"
include RSpec::Expectations


Before('@selenium') do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.timeouts.implicit_wait = 30
end

After('@selenium') do
  if !@driver.nil?
    @driver.quit
  end
end
