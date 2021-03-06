require "watir"

## Launch and Login Process
browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

## Code to add chat and check
browser.a(:id, "new_post_label_chat").click

browser.text_field(:id, "post_one").set "Chat Title"
browser.textarea(:id, "post_two").set "This is a chat"
browser.button(:class, "create_post_button chrome blue txt ").click
browser.div(:class, "post_wrapper").wait_until_present

if browser.div(:class, "post_title").text == "Chat Title"
    puts "SUCCESS"
end

browser.close