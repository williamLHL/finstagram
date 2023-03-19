puts "Without spaces, type in a 10-character string below:"
input = gets

# hash for practice
hash = {
    2 => ["A","B","C"],
    3 => ["D","E","F"],
    4 => ["G","H","I"],
    5 => ["J","K","L"],
    6 => ["M","N","O"],
    7 => ["P","Q","R", "S"],
    8 => ["T","U","V"],
    9 => ["W","X","Y","Z"]
}

def processor(input)
    # take input string to split values and remove line break for array
    input.chomp.split("")
    # assign input into variable array
    toconvert = input.chomp.split("")
    # test array
    puts "#{toconvert}"
    #convert string array into number array
    toconvert.each.map do |i|
        if i=="a" || i=="b" || i=="c"
            then i= 2
        end
    end
    # test new array
    puts "#{toconvert}"
    # convert number array back to string
    # print numeric string 
end

if input.length > 10
    then puts "You have exceeded the character limit. Try again."
elsif input.length <=10
    # replace with functional method that returns integer values
    then puts "Is this what you typed? #{input}"
    processor(input)
end