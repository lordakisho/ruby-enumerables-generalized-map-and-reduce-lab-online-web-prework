def map(array)
  new = []
  i = 0
  while i < array.length do 
    new.push(yield(array[i]))
    i += 1 
  end
  new
end


def reduce(source_array, sp = nil)
total = starting_point
counter = 0 
while counter < source_array.size do
  yield(total += source_array[counter])
  counter +=1 
end
total 
end