require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "LoginAndPost" do

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
  
  it "test_login_and_post" do
    @driver.get(@base_url + "/")
    @driver.find_element(:link, "Log in").click
    @driver.find_element(:id, "signup_email").clear
    @driver.find_element(:id, "signup_email").send_keys "dk654@hotmail.co.uk"
    @driver.find_element(:css, "button.signup_forms_submit_helper").click
    @driver.find_element(:id, "signup_password").clear
    @driver.find_element(:id, "signup_password").send_keys "tumblr@comp118"
    @driver.find_element(:css, "button.signup_forms_submit_helper").click
    @driver.find_element(:id, "post_one").clear
    @driver.find_element(:id, "post_one").send_keys "Test Title"
    @driver.find_element(:xpath, "//button[@type='submit']").click
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
