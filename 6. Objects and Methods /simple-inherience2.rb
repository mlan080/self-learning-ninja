# - Practice: Think for yourself an exercise where you can demonstrate your knowledge on inheritance, getters/setters, sharing behaviour with modules, methods with optional arguments
# - Learn: error handling in ruby => try to do it independently
# - Learn: mocks and stubs (using Rspec). Feel free to ask Lucas or Andy to help you with this one


#why does it return empty if you call .clothing if instance vairable clothign is not defined in initalizer
#if you pass clothing a '', it will render.this first than 'something'
module Dance
  def dance
    puts 'Im twirling'
  end
end

class BerlinInhabitant
  attr_accessor :gender, :orientation, :clothing

  def initialize(gender, orientation, clothing)
    @gender = gender
    @orientation = orientation
    @clothing = clothing
  end

  def eat_kebab
    puts 'delicious'
  end

  def park_chilling
    puts 'I am relaxed'
  end
end

class Hipster < BerlinInhabitant

  def initialize(gender, orientation)
    @gender = gender
    @orientation = orientation
  end

  def goto_katerblau
    puts 'I love waiting in line for an hour'
  end
end

class Yogis < BerlinInhabitant



  def stretch
    puts 'do you even vinyasa?'
  end
end

class FKK < BerlinInhabitant
  include Dance
  def initialize(clothing = 'croptop')
    @clothing = clothing
  end

  def park_chilling
    puts 'maximum sunshine durrrr'
  end
end

alex = BerlinInhabitant.new('male', 'straight', 'something')
puts alex.park_chilling

christos = Hipster.new('male', 'straight')
puts christos.clothing  #attr_acc allows access.(method defined, no error) but can't pass value to parameter?
christos.clothing = 'Urban outfitters'
puts christos.goto_katerblau

mieke = FKK.new('tee')
puts mieke.clothing #whatever value is passed into the clothing parameter gets overwritten by clothing defined inside initialize, overwrite
puts mieke.park_chilling
puts mieke.eat_kebab
puts mieke.dance







