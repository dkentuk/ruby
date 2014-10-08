require "rautomation"

## Launch and Login Process
browser = Watir::Browser.new :firefox
browser.goto "https://www.tumblr.com"
browser.link(:href, "https://www.tumblr.com/login").click

browser.text_field(:id, "signup_email").when_present.set "dk654@hotmail.co.uk"
browser.text_field(:id, "signup_password").when_present.set "tumblr@comp118"
browser.button(:id, "signup_forms_submit").click

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
