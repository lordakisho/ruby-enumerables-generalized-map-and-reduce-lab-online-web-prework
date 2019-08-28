def map(array)
  new = []
  i = 0
  while i < array.length do 
    new.push(yield(array[i]))
    i += 1 
  end
  new
end


def reduce_to_total(source_array, starting_point = 0)
total = starting_point
counter = 0 
while counter < source_array.size do
  yield(total += source_array[counter])
  counter +=1 
end
total 
end