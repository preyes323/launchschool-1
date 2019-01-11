munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family
# has an additional "age_group" key that has one of three values
# describing the age group the family member is in (kid, adult, or senior).

# solution 1

munsters.keys.each do |name|
  if munsters[name]['age'] <= 17
    munsters[name]['age_group'] = 'kid'
  elsif munsters[name]['age'] <= 64
    munsters[name]['age_group'] = 'adult'
  else
    munsters[name]['age_group'] = 'senior'
  end
end

p munsters

