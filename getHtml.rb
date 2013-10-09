require "open-uri" 
  #如果有GET请求参数直接写在URI地址中  
uri = 'http://ruby-china.org/wiki'
html_response = nil 
open(uri) do |http|  
  html_response = http.read  
end 

File.open( 'save.txt', 'w' ) {|f|
 f.write html_response
}