require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "Testpart2" do

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
  
  it "test_part2" do
    @driver.get(@base_url + "/dashboard")
    @driver.find_element(:css, "i.icon_post_text").click
    @driver.find_element(:id, "post_one").clear
    @driver.find_element(:id, "post_one").send_keys "Text Title"
    @driver.find_element(:css, "p").click
    @driver.find_element(:xpath, "//div[@id='create_post']/div").click
    @driver.find_element(:css, "#post_form > div.plexi.active").click
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
