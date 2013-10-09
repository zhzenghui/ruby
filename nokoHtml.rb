require 'nokogiri'
require 'open-uri'

url = "http://ruby-china.org/wiki"

doc = Nokogiri::HTML(open(url))

doc.css('.box').each do |link|
  puts link.text
  
end