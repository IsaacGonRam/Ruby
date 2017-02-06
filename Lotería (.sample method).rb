def shuffle(array)
  array.sample # why if "p" is write in this line, doesnt print
end
# Driver code:
 array = (1..15).to_a

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true
