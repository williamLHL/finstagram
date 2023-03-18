puts "Without spaces, type in a 10-character string below:"
input = gets

numkey = {
    2 => ["A","B","C"],
    3 => ["D","E","F"],
    4 => ["G","H","I"],
    5 => ["J","K","L"],
    6 => ["M","N","O"],
    7 => ["P","Q","R", "S"],
    8 => ["T","U","V"],
    9 => ["W","X","Y","Z"]
}

if input.length > 10
    then puts "You have exceeded the character limit. Try again."
elsif input.length <=10 
    then puts "Is this what you typed? #{input}"
end