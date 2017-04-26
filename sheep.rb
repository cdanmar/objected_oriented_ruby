class Sheep
  @@count = 0
  def initialize(input_options)
    @name = input_options[:name]
    @@count += 1
  end

  def name
    puts @name
  end

  def self.count
    puts @@count
  end


  def bleet
    puts "bahhhh"
  end

  def self.grass
    puts "yum"
  end
end


Sheep.count

bob Sheep.new

bob.bleet
Sheep.grass