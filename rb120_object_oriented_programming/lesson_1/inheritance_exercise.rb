class Animal
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Animal
  def fetch
    'fetching!'
  end

  def swim
    'swimming!'
  end

  def speak
    'bark!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim"
  end
end

class Cat < Animal
  def speak
    "meow!"
  end

end

teddy = Dog.new
puts teddy.speak           # => "bark!"
puts teddy.swim           # => "swimming!"
max = Bulldog.new
puts max.swim
