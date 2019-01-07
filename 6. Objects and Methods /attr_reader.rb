class Point
  #shorter version
  attr_reader :x, :y  #define accessor methods for our instance variables so users of the Point class can use it

  def initialize(x,y)
    @x, @y = x,y
  end

  def to_s #return a string that represents this point
    "(#@x, #@y)" #interpolate the instance variables into the string
  end
end
  #long version
  #def x
   # @x
  #end

  #def y
  #  @y
  #end
#end

p = Point.new(1,2)
q = Point.new(p.x*2, p.y*3)
puts p, q
