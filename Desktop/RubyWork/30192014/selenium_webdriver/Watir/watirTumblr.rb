#watir exercise tumblr
require 'watir'
require "rautomation"

browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
#l = browser.link :href, "https://www.tumblr.com/login"
#l.click
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(id: "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(id: 'signup_password').when_present.set 'tumblr@comp118'
browser.button(:id, "signup_forms_submit").click

##### Used for the text post ####
#browser.element(:id, "new_post_label_text").click
#
##b######rowser.link(:href, "/new/text?redirect_to=%2Fdashboard").click
##browser.frame(:id=> "post_two_ifr")when_present.text_field(:id => /TextField/).set "test data watir"
##fr = browser.frame(:id=> "post_two_ifr")
##fr.body(:id, "tinymce").set "Hey"
##browser.frame(:id,'"post_two_ifr"').body(:id,'tinymce').p.send_keys [:control, 'This is test']
##browser.frame(:index => 0).body(:id,'tinymce').p.send_keys ##[:control, 'This is test']
########
#browser.send_keys("test_string")
#browser.text_field(:id, "post_one").set("what a test")
#button = browser.button :text, "Post"
#button.click
#
##test for test string within the dashboard
#browser.div(:class, "post_wrapper").wait_until_present
##puts foo in the console 
#puts "foo " if browser.text.include? "test_string"
##################################

#### Used for the photo post ####
browser.element(:id, "new_post_label_photo").click
#target = browser.div :class => 'drop_target'
#file_in = browser.input :id => 'photo_file_input'
#target.click

browser.button(:id => "photo_file_input").click
window = RAutomation::Window.new :title => windowTitle
window.text_field(:class =>"Edit").set("C:\Users\Academy8\Desktop\WatirImageTest/CANANADADADA.jpg")
window.button(:value => "&Open").click
#latest_image = Dir["C:\Users\Academy8\Desktop\WatirImageTest"].sort { |a,b| File.mtime(a) <=> File.mtime(b) }.last
#puts latest_image
#browser.file_field(:id, 'photo_file_input').set latest_image
#
#browser.file_field(:id, 'photo_file_input').set('C:\Users\Academy8\Desktop\CANANADADADA.jpg')
#Requires rAutomation

#browser.div(:class, "drop_target").click

#browser.quit