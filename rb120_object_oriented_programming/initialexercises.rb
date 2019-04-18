class MyCar
  attr_accessor :colour
  attr_reader :year

  def initialize(year, colour, model)
    @year = year
    @colour = colour
    @model = model
    @current_speed = 0
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
end

megan_car = MyCar.new(1956, "blue", "big")
puts megan_car.current_speed
megan_car.speed_up
puts megan_car.current_speed
puts megan_car.colour
megan_car.colour = "black"
puts megan_car.colour
puts megan_car.year

