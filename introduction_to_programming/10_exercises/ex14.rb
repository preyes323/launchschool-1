contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contact_data.each do |val|
  fields.each do |field|
    contacts["Joe Smith"][field] = val
  end
end

puts contacts
