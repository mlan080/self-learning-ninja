 class Point3D < Point
  def initialize(x,y)
    super(x,y)
    @z = z
    @x, @y = x, y
  end

p2 = Point.new(1,2)
p3 = Point3D.new(1,2)
print p2.to_s, p2.class
print p3.to_s, p3.class

