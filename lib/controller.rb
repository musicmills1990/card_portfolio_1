"okay here we go!"
"I'm creating a program called 'The Card Shop', a basic CLI that will retreive information about the different card editions, and the
characters within each edition, pulled off of the website www.musicthegathering.com.
Some information:

-most edition have one or many characters
-characters belong to editions
-each character has a info description that the user should have access to.
-I would love if the program can list the editions based on what's available currently on the website, rather than hardwired at
5 editions, so if new additions were added, the list would update to reflect that
-I would love it if you can search for a card by typing the name of the card and finding out which edition it's in"

characters = ["Marco", "Azia", "Liv", "Daniel", "Tonya", "Dylan", "Franka", "Lady Rosaline", "Lady Morgan", "Donna Catalina", "Jack", "Molly", "Lady Victoria"]
input = ""
puts "Welcome to the Card Shop! What would you like to do?"
puts "1. List Card Editions"
puts "2. Search for Character"
inputs = gets.strip

case input
when "1." || "List Card Editions".downcase
puts "1. Music The Gathering"
puts "2. The Craic Show"
puts "3. Chaste Treasure"
puts "4. The Plunder Doggs"
puts "5. The Lady Victoria"
puts "Please type the number of the edition would you like to know more about!"





when "2." || "Search for Character".downcase
  new_input = ""
  puts "please type the name of a character you're looking for."
  new_input = gets.strip
  case new_input
  when character.select{|char| new_input == char}
