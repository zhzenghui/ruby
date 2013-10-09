require 'net/http'
require 'open-uri'


def getImageUris(uri)
	r = []
	re = /img src=".*?" border/
	open(uri) { |io|
	page = io.read

	page.scan(re) { |m|
		s = m.gsub(/(img src=")+|(" border)+/, '')
		r.push s if s.length > 10
	}
	return r
}
end

p getImageUris("http://ruby-china.org/wiki")