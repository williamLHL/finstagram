def processor(input)
    keyToUser=""
    # take input string to conver to lowercase, split values, and remove line break for array
    input.downcase.chomp.split("")
    
    # assign input into string array
    toconvert = input.downcase.chomp.split("")
    
    #convert string array into number array
    toconvert.each do |i|
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
    # print numeric string 
    puts "Processed. Here is your converted 10-character string: #{keyToUser}"
end

begin
    puts "Without spaces, type in a 10-character string below:"
    input = gets
    if input.length < 10
        puts "You have not met the character quota. Try again"
    elsif input.length > 10
        puts "You have exceeded the character limit. Try again."
    elsif input.length == 10
        puts "Confirming your entry: #{input}"
        processor(input)
    end
end