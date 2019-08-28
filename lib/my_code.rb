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
if sp
  num1 = sp
  i = 0
end