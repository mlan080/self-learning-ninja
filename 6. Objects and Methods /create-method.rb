#Goal: Define create method to return an object with id


class Shop
  def self.hello
  greetings = ["Hello", "Hi", "Ohai", "ZOMG"]
  "#{greetings.first} #{name}!"
  end
  attr_accessor :id, :name, :description

  def create
  self.inject(Shop.new) do |id|
  end
end

Shop.create
#(id: 123, name: 'candy', decription: 'okiesokies')

# self.inject(Object.new) do |obj, ary| # ary is [:key, "value"]

#
