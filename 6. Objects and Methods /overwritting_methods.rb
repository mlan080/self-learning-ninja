class WorldGreeter
  def greet
    puts "#{greeting} #{who}"
  end

  def greeting
    "Hello"
  end

  def who
    "World"
  end
end

class SpanishWorldGreeter < WorldGreeter #subclassed WorldGreeter and the object we are calling greet on has a new definition of greet

  def greeting
    "Hola"
  end
end

SpanishWorldGreeter.new.greet
#call a method defined in WorldGreeter which calls the overidden version of greeting in SpanishWorld Greeter


