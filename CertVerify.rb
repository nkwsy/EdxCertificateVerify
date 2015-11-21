require 'mechanize'
require 'nokogiri'
require 'open-uri'

mechanize = Mechanize.new

puts "EDX Certificate ID: "
text = gets.chomp

addy='https://verify-test.edx.org/cert/'+text

puts addy

page = mechanize.get(addy)



name = page.at('span.copy__name').text
org = page.at('span.copy__course__org').text
course = page.at('span.copy__course__name').text

value = page.at('li.item.certificate--type span.value').text
#^^^gives cert type with explanation
id = page.at('li.item.certificate--id span.value').text.strip
date = page.at('li.item.certificate--date span.value').text.strip



 

puts name
puts org
puts course
puts value
puts id
puts date
