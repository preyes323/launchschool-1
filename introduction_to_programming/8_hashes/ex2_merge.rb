ship_inventory = {soap: 32,
             rum: 150,
             gunpowder: 15}

government_stores = {soap: 119,
                     beer: 1500,
                     lemons: 15}

puts "this is a normal merge, combining the two for the purposes of a thought experiment"
puts ship_inventory.merge(government_stores){|key, oldval, newval| newval + oldval}
puts "----------"
puts "this is when they actually merge, we combine them but the original hash gets modified"
puts ship_inventory.merge!(government_stores){|key, oldval, newval| newval + oldval}
