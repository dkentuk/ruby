#require 'capybara'
#require 'capybara/DSL'
#
#Capybara.default_driver = :webkit
#
#module MyModule
#  include Capybara::DSL
#
#  def login!
#    within("//form[@id='session']") do
#      fill_in 'Login', :with => 'user@example.com'
#      fill_in 'Password', :with => 'password'
#      fill_in('First Name', :with => 'John')
#      fill_in('Password', :with => 'Seekrit')
#      fill_in('Description', :with => 'Really Long Text...')
#      choose('A Radio Button')
#      check('A Checkbox')
#      uncheck('A Checkbox')
#      attach_file('Image', '/path/to/image.jpg')
#      select('Option', :from => 'Select Box')
#      end
#      click_link 'Sign in'
#  end
#end

require 'capybara'
require 'capybara/dsl'
require 'pry'

include Capybara::DSL

Capybara.default_driver = :selenium
visit "http://lacedeamon.spartaglobal.com/example_forms"

fill_in 'Text:', :with => 'hello'
choose("Choice 2")


binding.pry

#session.fill_in('q', :with => 'Capybara')
##session.click_button('Search')
#if (expect(session).to have_content('Capybara'))
#    puts "true"
#    else
#    puts "false"
#end

#Capybara.default_driver = :selenium
#
#session = Capybara::Session.new(:selenium)
#session.visit("http://lacedeamon.spartaglobal.com/example_forms")
#    
#session.page.fill_in('q', :with => 'capybara')

#session.within("//form[@id='session']") do
#  session.fill_in 'Login', :with => 'user@example.com'
#  session.fill_in 'Password', :with => 'password'
#end
#session.click_link 'Sign in'