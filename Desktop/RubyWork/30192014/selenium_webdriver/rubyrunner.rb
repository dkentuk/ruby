require 'selenium-webdriver'
browser = Selenium::WebDriver.for :firefox
browser.get "https://www.tumblr.com"
browser.find_element(:link, "Log in").click
browser.find_element(:id, "signup_email").send_keys "dk654@hotmail.co.uk"
browser.find_element(:id, "signup_password").send_keys "tumblr@comp118"
browser.find_element(:id, "signup_forms_submit").click
browser.find_element(:id, "new_post_label_text").click
browser.find_element(:id, "post_one").send_keys "Test Title"
browser.find_element(:id, "post_two_ifr").send_keys "Test Data 2.0"
#zbrowser.find_element(:id, "signup_forms_submit").click
browser.find_element(:xpath, "//button[@type='submit']").click
#    results = browser.find_elements(li: "post_container").find_elements(css: 
        
tt = browser.find_element(:id, "post_99322198840")

if (tt.text.include? == "Test Title")
    puts "true"
else 
    puts "false"
end
  
    