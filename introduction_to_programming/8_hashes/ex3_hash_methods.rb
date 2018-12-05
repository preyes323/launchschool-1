languages = {easy: "French",
             hard: "Arabic",
             moderate: "Latin"}

languages.each_key {|key| puts key }
languages.each_value {|value| puts value }
languages.each {|k,v| puts "#{k}: #{v}" }
