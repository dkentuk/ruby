#watir exercise tumblr
require 'watir'

browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
#l = browser.link :href, "https://www.tumblr.com/login"
#l.click
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(id: "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(id: 'signup_password').when_present.set 'tumblr@comp118'

browser.button(:id, "signup_forms_submit").click

browser.element(:id, "new_post_label_text").click

#browser.link(:href, "/new/text?redirect_to=%2Fdashboard").click
#browser.frame(:id=> "post_two_ifr")when_present.text_field(:id => /TextField/).set "test data watir"
#fr = browser.frame(:id=> "post_two_ifr")
#fr.body(:id, "tinymce").set "Hey"
#browser.frame(:id,'"post_two_ifr"').body(:id,'tinymce').p.send_keys [:control, 'This is test']
#browser.frame(:index => 0).body(:id,'tinymce').p.send_keys ##[:control, 'This is test']
browser.send_keys("test_string")
browser.text_field(:id, "post_one").set("what a test")

browser.div(:class, "post_wrapper").wait_until_present
puts "Woo: " if browser.text.include? "test_string"

browser.quit