class Foobar
  #Added Q2        
  def initialize(baz)
     @baz = baz
  end
   
  def bar(cat, options)
     return "#{cat}#{@baz}#{options[:sat]}"
  end
  #Added Q2        
end
