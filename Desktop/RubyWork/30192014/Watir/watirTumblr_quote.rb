require "watir"

## Launch and Login Process
browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

## Code to add quote and check
browser.element(:id, "new_post_label_quote").click
browser.textarea(:id, "post_one").set "Quote Added"
browser.button(:class, "create_post_button chrome blue txt ").click
browser.div(:class, "post_wrapper").wait_until_present

if browser.element(:class, "quote").text == "Quote Added"
    puts "Oh Yes!"
end

browser.close