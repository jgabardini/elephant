Given(/^I go to basic page$/) do
  @base_url = "http://test-automation.herokuapp.com/"
  @driver.get(@base_url + "/selenium/basic.html")
end

Then(/^I should see "([^"]*)" in the page title$/) do |arg1|
  (@driver.title).should == "Basic Web Page"
end
#(@driver.find_element(:xpath, "//p[4]").text).should == "Parrafo 4"
