puts "Without spaces, type in a 10-character string below:"
input = gets

if input.length > 10
    then puts "You have exceeded the character limit. Try again."
elsif input.length <=10 
    puts "Is this what you typed? #{input}"
end