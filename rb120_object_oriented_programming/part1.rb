class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says Arf!"
  end
end

fido = GoodDog.new("Fido")
puts fido.name
puts fido.speak
