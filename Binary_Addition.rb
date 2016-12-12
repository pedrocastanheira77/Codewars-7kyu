def add_binary(a,b)
  res = Array.new
  sum = (a + b)
  if sum == 0
    return "0"
  else
    while sum != 1
      res.push((sum % 2).to_s)
	  sum = sum / 2
    end
    res.push("1")
    res.reverse!
  	res = res * ""
  end
end
