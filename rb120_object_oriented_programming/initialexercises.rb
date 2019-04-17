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

  def break
    @current_speed -= 3
  end

  def shut_off
    @current_speed = 0
  end

  def current_speed
    @current_speed
  end
end

fiat = MyCar.new(2003, "red", "oldy.v3")
puts fiat.current_speed
fiat.speed_up
puts fiat.current_speed
fiat.colour = "blue"
puts fiat.colour
