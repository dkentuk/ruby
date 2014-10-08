require "watir"

## Launch and Login Process
browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

## Code to add link and check
browser.element(:id, "new_post_label_link").click
browser.send_keys "This is a link"
browser.text_field(:id, "post_two").set "http://www.google.com"
browser.element(:class, "link_title").wait_until_present
browser.button(:class, "create_post_button chrome blue txt ").click
browser.div(:class, "post_wrapper").wait_until_present

browser.

if browser.element(:class, "link_title").text == "Google"
    puts "SUCCESS"
end

browser.