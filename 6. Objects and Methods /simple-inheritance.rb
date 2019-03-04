module Swimmable
  def swim
    puts "I'm Swimming"
  end
end

class Bird
  attr_accessor :name
  attr_reader :date_of_birth, :fur_color

  def initialize(date_of_birth, fur_color, name = '')
     @date_of_birth = date_of_birth
     @fur_color = fur_color
     @name = name
     raise 'go away'
  end

  def fly
    puts 'Im flyinggggggg'
  end

  def lay_eggs
    puts 'Im laying eggs, go away!'
  end
end

class Parrot < Bird
    def initialize(date_of_birth, fur_color, name = 'Alex')
     @date_of_birth = date_of_birth
     @fur_color = fur_color
     @name = name
   end

  def fly
    puts 'flying very low'
  end
 end

class Duck < Bird
  include ::Swimmable
    def initialize(date_of_birth, fur_color, name = 'Alex')
     @date_of_birth = date_of_birth
     @fur_color = fur_color
     @name = name
    end

     def fly
     puts 'Flying up to 1200m'
    end
 end

class Fish
  attr_reader :date_of_birth

  include ::Swimmable
  def initialize(date_of_birth)
    raise 'punished you'
  end
end

class Shark < Fish
  def initialize(date_of_birth)
    @date_of_birth = date_of_birth
  end
end








mandy = Parrot.new('01-01-2017','red', 'Candy')
#mandy = Parrot.new
puts mandy.fur_color
mandy.fly
mandy.lay_eggs
puts mandy.name
mandy.name='Dandy'
puts mandy.name


daffy = Duck.new('01-01-1930', 'black', 'Daffy')
daffy.fly
puts daffy.name
daffy.swim

daffiny = Parrot.new('01-01-1930', 'black')
puts daffiny.name
daffiny.name = 'Lucas'
puts daffiny.name



#initialize gives the attribues values so when you create an object it already has the attributes in it .
#Gives you the parameters with the parrot object
