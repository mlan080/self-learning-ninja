#!/usr/bin/ruby

class Customer
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end

   def to_s
    "(#{@cust_id}, #{@cust_id}, #{@cust_id})"
    end
  end

# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
puts cust1
puts cust2
