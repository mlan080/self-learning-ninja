#1. write method greet that takes a name, prepends "Hello ", and appends an exclamation mark "!"
def greet(name)
  greetings = ["Hello", "Hi", "Ohai", "ZOMG"].shuffle
  "#{greetings.first} #{name}!"
  end

puts greet("Ada")

#2.write a method that converts miles to km
def miles_to_kilometers(miles)
  miles * 1.6
end

puts miles_to_kilometers(25)

#3.write a method that takes a year  and calculates if it's a leap year
def leap_year?(year)
  year % 4 == 0
end

p leap_year?(2012)
p leap_year?(2015)



