uire "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "Photoscript" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "https://www.tumblr.com/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end
  
  it "test_photoscript" do
    @driver.get(@base_url + "/dashboard")
    @driver.find_element(:css, "i.icon_post_photo").click
    @driver.find_element(:css, "div.drop_target").click
    # ERROR: Caught exception [Error: locator strategy either id or name must be specified explicitly.]
    @driver.find_element(:xpath, "//button[@type='submit']").click
    @driver.find_element(:xpath, "//div[@id='post_99390349850']/div[2]/div[3]/div[2]/div/div").click
    @driver.find_element(:xpath, "//div[@id='post_99390349850']/div[2]/div[3]/div[2]/div/div/div/ul/li[2]/div").click
    @driver.find_element(:xpath, "//div[@id='dialog_0']/div/div/div[2]/button").click
  end
  
  def element_present?(how, what)
    ${receiver}.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def alert_present?()
    ${receiver}.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end
  
  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end
  
  def close_alert_and_get_its_text(how, what)
    alert = ${receiver}.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end
