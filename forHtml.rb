server = %w'http://ruby-china.org/wiki'

r = nil 

File.open('test2.out','w') do |s|
  open(uri) do |http|  
   r = http.read  
  end 
    
   s.puts r
end
