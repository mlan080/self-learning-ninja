values = Array[10,20,30,40]
values[0] = 100
values.last

#add elements
values = Array[]
values.push("tree")
values.push("branch")

print "first: ", values.first, "\n"

#append operator to add elements
values = Array[]
values << "cat" << "dog"
p values

#remove elements
values = Array["kitty" , "doggy"]
values.delete_at(1)
puts values

values = Array["kitty", "doggy"]
values.delete("kitty")
puts values

values = Array["messy", "dessy"]
values.pop()
puts values
#access elements


#iterates through elements
#use the identifier 'number' to access elements
primes = [3, 11, 43, 683, 2731]
primes.each do |number|
  puts number
end

primes = [3, 11, 43, 683, 2731]
primes.each {|number| puts number}

#access indexes in an array
#index searches an array for a specified element
values = ["dog", "sheep", "cow", "human"]
values.each_index do |index|
  puts index
end

result = values.index("dog")
puts result

#map or collect
#maps each element to an array in a new element based on a function
#map takes an enumerable object and a block, runs the block for each element, outputting each returned element from the block
#each does something with each element, map converts each element by some rule
values = [1,2,3]
r = values.map{|e| e * 2}
p r

values = ["timmy","tom", "davis"]
r = values.map{|e| e.capitalize }
p r

#each with object - iterates over a collection passing the current element
values = [1,2,3]
values.each_with_object("foo") do |item, obj|
  puts "#{obj}: #{item}"
end

#all? - passes each element to the given block, method returns true if block returns true
values = ["cant", "bear", "cat"]
r = values.all? {|word| word.length >=3}

words = ["bacon", "orange"]
puts words.all? { |str| str.size ==5 }

#inject - build or reduce arrays and hashes
# 0 is the accumulator and each element is added to the 0
[1,2,3,4].inject(0) { |results, element| puts result + element }

#reduces each element of an enumerable to a single value, accumulatest that value in a single variable
#then returns the value of the accumulator


