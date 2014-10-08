require "watir"

## Launch and Login Process
browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

## code to add music url, and post
browser.a(:id, "new_post_label_audio").click
browser.a(:id, "tab_audio_external").click
browser.text_field(:id, "post_three").send_keys("https://soundcloud.com/elizabethsilv/ruby-kaiser-chiefs")
browser.button(:class, "create_post_button chrome blue txt ").click

#browser.div(:class, "singleSound g-box-full").wait_until_present
#if browser.div(:class, "singleSound g-box-full").is_present?
 #   puts "SUCCESS"
#end

#browser.close