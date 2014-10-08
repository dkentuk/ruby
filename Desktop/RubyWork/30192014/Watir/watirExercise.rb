#Watir-Exercise
#Find ruby book and return the price

require 'watir'

browser = Watir::Browser.new
browser.goto "https://amazon.co.uk"
p_i = browser.text_field :id, "twotabsearchtextbox"
p_i.set('Eloquent Ruby')
button = browser.button :text, "Go"
button.click
##
browser.link(:text, "Eloquent Ruby (Addison-Wesley Professional Ruby)").click

pricebook = browser.element(css: ".inlineBlock-display").text
puts "The Price is: " + pricebook
#price = browser.div :id, "atfResults"
#price.flash


#I need to take the aftResults
#I need to look though each of the divs with the id="result_"#{x}
#I need to look at the price <span class="price bld">