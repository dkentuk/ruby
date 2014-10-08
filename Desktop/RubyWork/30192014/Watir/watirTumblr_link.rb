require 'watir'

browser = Watir::Browser.new :firefox
browser.goto "http://tumblr.com/login"

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

browser.a(:id, "new_post_label_link").click

browser.send_keys "This is a link"
browser.text_field(:id, "post_two").set "http://www.google.com"
browser.a(:class, "link_title").wait_until_present
browser.button(:class, "create_post_button chrome blue txt ").click
browser.div(:class, "post_wrapper").wait_until_present

if browser.a(:class, "link_title").text == "Google"
    puts "SUCCESS"
end

browser.close