require 'watir-webdriver'

browser = Watir::Browser.new :chrome
browser.goto "http://www.google.com.hk/"
browser.text_field(:name => 'q').set("WebDriver rocks!")
browser.button(:name => 'btnG').click
puts browser.url
browser.close