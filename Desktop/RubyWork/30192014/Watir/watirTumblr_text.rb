require "watir"

## Launch and Login Process
browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

#Text Load
browser.element(:id, "new_post_label_text").click
browser.send_keys("test_string")
browser.text_field(:id, "post_one").set("what a test")
button = browser.button :text, "Post"
button.click

#test for test string within the dashboard
browser.div(:class, "post_wrapper").wait_until_present
#puts foo in the console 
puts "foo " if browser.text.include? "test_string"

