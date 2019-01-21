x = 1
while x <= 10 do
  print x, "ruby while loop .\n"
  x += 1
  end

#alternative way to write the same thing
  x = 0
  x += 1 while x < 10
  p x

#Using the loop construct, add the current value
#of number to the numbers array. Inside of the loop
# add 1 to the number variable. If the numbers array
#has more than 3 items, use the break keyword to exit the loop."

numbers = []

number = 0

loop do
  number += 1
  numbers.push(number)
  if numbers.length >=3
  break
  end
end

puts numbers
