$food = {garden: "Sausages",
        house: "Cheese",
        office: "Chocolate"}

def check_food(string)
  if $food.values.include?(string)
    puts "that food is represented in the hash"
  else
    puts "that food is NOT represented in the hash"
  end
end

check_food("Sausages")
check_food("Hamburgers")
