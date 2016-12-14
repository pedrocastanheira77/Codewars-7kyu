def mean_calculator array, elements
  acm, counter = 0.0, 0.0
  array.each do |arr_element|
    break if counter >= elements
    acm += arr_element
    counter += 1
  end
  acm/elements
end

def getMean arr, x, y
  if (x <= 1 || x > arr.size || y <= 1 || y > arr.size)
    return -1
  else
    first_mean = mean_calculator arr, x
    last_mean = mean_calculator arr.reverse, y
    mean_of_means = ((last_mean + first_mean)/2).to_f
  end
end

p getMean([1,3,2],2,2)
