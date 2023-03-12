def fizzbuzz(test)
  myarray = []
  if test % 3 == 0 && test % 5 == 0
    "FizzBuzz" && myarray.push("FizzBuzz")
  elsif test % 3 == 0
    "Fizz" && myarray.push("Fizz")
  elsif test % 5 == 0
    "Buzz" && myarray.push("Buzz")
  else test % 3 > 0 || test % 5 > 0
    "#{test}" && myarray.push("#{test}")
  end
  myarray.to_s
end

get '/' do 
  fizzbuzz(15)
end