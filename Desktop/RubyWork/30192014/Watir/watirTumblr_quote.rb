require 'watir'

browser = Watir::Browser.new :firefox
browser.goto "http://tumblr.com/login"

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

browser.a(:id, "new_post_label_quote").click
browser.textarea(:id, "post_one").set "This is a quote"
browser.button(:class, "create_post_button chrome blue txt ").click
browser.div(:class, "post_wrapper").wait_until_present

if browser.element(:class, "quote").text == "This is a quote"
    puts "SUCCESS"
end

browser.close