def fizzbuzz(test)
  if test % 15 == 0
    "FizzBuzz"
  elsif test % 3 == 0
    "Fizz"
  elsif test % 5 == 0
    "Buzz"
  elsif test % 3 > 0
    "#{test}"
  elsif test % 5 > 0
    "#{test}"
  end
end

get '/' do
  test = 9
  fizzbuzz(test)
end