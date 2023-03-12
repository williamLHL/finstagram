def fizzbuzztest(n)
    while n <= 100
        # Account for failure state when n <= 0.
        if n <= 0
        puts "Value is not included."
        n=1
        # Print statements for 0 < n < 100.
        elsif n % 3 == 0 && n % 5 == 0
        puts "FizzBuzz"
        elsif n % 3 == 0
        puts "Fizz"
        elsif n % 5 == 0
        puts "Buzz"
        elsif n % 3 > 0 || n % 5 > 0
        puts "#{n}"
        end
        n+=1
    end
  end

fizzbuzztest(-99)