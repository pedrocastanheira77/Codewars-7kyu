def line_types lines
  new_array = []
  lines.each do |element|
    new_array << :unknown if element == nil
    if  element != nil
      new_array << :unknown if (!element.downcase.include?("alpha") && !element.downcase.include?("beta"))
      new_array << :alpha if element.downcase.include?("alpha")
      new_array << :beta if element.downcase.include?("beta")
    end
  end
  new_array
end

p line_types ["I'm Alpha", nil, "No idea", "beta tester", nil, nil]

=begin
def line_types lines
  new_array = []
  lines.each do |element|
    if element == nil
      new_array << :unknown
      break
    elsif (!element.downcase.include?("alpha") && !element.downcase.include?("beta"))
      new_array << :unknown
    elsif element.downcase.include?("alpha")
      new_array << :alpha
    elsif element.downcase.include?("beta")
      new_array << :beta
    end
  end
  new_array
end
=end
