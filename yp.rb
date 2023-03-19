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
    keyToUser=""
    # take input string to split values and remove line break for array
    input.chomp.split("")
    # assign input into variable array
    toconvert = input.chomp.split("")
    # test array
    puts "#{toconvert}"
    #convert string array into number array
    toconvert.each.map do |i|
        if i=="a"||i=="b"||i=="c"
            then keyToUser+= "2"
        elsif i=="d"||i=="e"||i=="f" 
            then keyToUser+="3"
        elsif i=="g"||i=="h"||i=="i"
            then keyToUser+="4"
        elsif i=="j"||i=="k"||i=="l"
            then keyToUser+="5"
        elsif i=="m"||i=="n"||i=="o"
            then keyToUser+="6"
        elsif i=="p"||i=="q"||i=="r"||i=="s"
            then keyToUser+="7"
        elsif i=="t"||i=="u"||i=="v"
            then keyToUser+="8"
        elsif i=="w"||i=="x"||i=="y"||i=="z"
            then keyToUser+="9"
        end
    end
    # test new array
    puts "#{keyToUser}"
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