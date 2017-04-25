# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.
# B. Create a new file in the folder called store_item.rb and open it in Sublime.
# C. Use hashes with symbols to represent the following scenario:
#      C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
#      C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
#      C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

# Bonus: Read more about Ruby’s hash symbol syntax:
#    - http://alwayscoding.ca/momentos/2012/06/15/ruby-hash-syntax-hashrocket-vs-json-style/
#    - Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer?

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.





# item1 = {:color => "blue", :price => 10, :number_in_stock => 50, :units_sold => 300}
# item2 = {:color => "green", :price => 30, :number_in_stock => 23, :units_sold => 232}
# item3 = {color: "green", price: 90, number_in_stock: 3, units_sold: 30}

# p item1[:color]



# class Items
#   def initialize(color, price, number_in_stock, units_sold)
#     @color = color
#     @price = price
#     @number_in_stock = number_in_stock
#     @units_sold = units_sold
#   end

#   def color
#     @color
#   end

#   def price
#     @price
#   end

#   def number_in_stock
#     @number_in_stock
#   end

#   def units_sold
#     @units_sold
#   end

# end


# item1 = Items.new("blue", 10, 50, 300)
# item2 = Items.new("green", 30, 23, 232)

class Items
  attr_reader :color, :price, :number_in_stock, :units_sold
  attr_writer :color, :price, :number_in_stock, :units_sold

  def initialize(input)
    @color = input[:color]
    @price = input[:price]
    @number_in_stock = input[:number_in_stock]
    @units_sold = input[:units_sold]
  end

  def print_info
    puts "The item is #{color}. it costs #{price} dollars and there are #{number_in_stock} in stock. A toal of #{units_sold} have been sold"
  end

end

item1 = Items.new(color: "blue", price: 10, number_in_stock: 50, units_sold: 300)
items2 = Items.new(color: "green", price: 30, number_in_stock: 23, units_sold: 232)

puts item1.print_info

