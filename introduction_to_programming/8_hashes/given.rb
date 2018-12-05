family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
         }

selection = family.select { |k,v| k == :sisters || k == :brothers}
immediate_family = Array.new
selection.values.each { |v| immediate_family << v }
immediate_family = immediate_family.flatten
puts immediate_family
