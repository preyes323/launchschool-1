class MyCar
  attr_accessor :colour
  attr_reader :year

  @@miles_counter = 0

  def initialize(year, colour, model, miles)
    @year = year
    @colour = colour
    @model = model
    @current_speed = 0
    @@miles_counter += miles
  end

  def speed_up
    @current_speed += 5
  end

  def brake
    @current_speed -= 5
  end

  def shut_off_car
    @current_speed = 0
  end

  def current_speed
    @current_speed
  end

  def spray_paint(colour)
    puts "the car came into our shop #{self.colour}"
    self.colour = colour
    puts "the care emerges out of our shop #{self.colour}"
  end

  def self.gas_mileage(litres, miles)
    "mileage is #{miles / litres} miles per litre"
  end

  def self.total_miles
    @@miles_counter
  end

  def to_s
    "My car is a #{@colour} #{@model} car, dating to #{@year}!"
  end

end

megan_car = MyCar.new(1956, "blue", "big", 100_000)
alex_car = MyCar.new(1937, "yellow", "small", 96_543)
puts megan_car.current_speed
megan_car.speed_up
puts megan_car.current_speed
puts megan_car.colour
megan_car.colour = "black"
puts megan_car.colour
puts megan_car.year
megan_car.spray_paint("red")
puts MyCar.gas_mileage(50, 250)
puts MyCar.total_miles
puts MyCar.to_s
p alex_car.to_s

# You want to create a nice interface that allows you to accurately describe the action
#you want your program to perform. Create a method called spray_paint that can be called
#on an object and will modify the color of the car.
