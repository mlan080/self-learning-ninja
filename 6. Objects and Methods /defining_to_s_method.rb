class Point
  attr_reader :x, :y #define accessor methods for our instance variables so its
  def initialize(x,y)
    @x, @y = x, y
  end

  def to_s #return a string that represents this point
   "(#{x}, #{y})" #interpolate the instance variables into the string
  end
end

p = Point.new(1,2)
puts p #returns an object without the to_s method - why?


