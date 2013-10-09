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


def split_uri( uri_str )
  m = %r<http://([^/]+)>.match(uri_str) or raise ArgumentError, "cannot parse URI: #{uri_str}"
  host = m[1].strip
  path = m.post_match
  path = '/' if path.empty?
  return host, path
end


p "------------------------"

p split_uri ("http://ruby-china.org/wiki")

p "------------------------\n"

END_CHARS = %{.,'?!:;}

URI.extract(html_response, ['http']).collect { 
  |u| END_CHARS.index(u[-1]) ? u.chop : u 
}


