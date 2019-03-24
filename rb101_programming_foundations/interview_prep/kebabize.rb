def kebabize(str)
  str.gsub(/([0-9])/, '').split(/(?=[A-Z])/).join('-').downcase
end


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
