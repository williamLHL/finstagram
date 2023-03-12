def fizzbuzz(test)
  if test % 3 == 0 && test % 5 == 0
    "FizzBuzz"
  elsif test % 3 == 0
    "Fizz"
  elsif test % 5 == 0
    "Buzz"
  else test % 3 > 0 || test % 5 > 0
    "#{test}"
  end
end

get '/' do
  test = 29
  fizzbuzz(test)
end