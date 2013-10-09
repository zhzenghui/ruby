require 'net/http'
Net::HTTP.version_1_2   # 设定对象的运作方式

response = http.get( 'http://www.ruby-lang.org' )

File.open( 'save.txt', 'w' ) {|f|
      f.write response
}
# def split_uri( uri_str )
#   m = %r<http://([^/]+)>.match(uri_str) or raise ArgumentError, "cannot parse URI: #{uri_str}"
#   host = m[1].strip
#   path = m.post_match
#   path = '/' if path.empty?
#   return host, path
# end

#print fetch('http://www.ruby-lang.org')