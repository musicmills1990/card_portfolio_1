class CardPortfolio1::Controller

  def call
    list_editions
    menu
    goodbye
  end

  def list_editions
    puts "Hello and Welcome to the Card Shop!"
    @editions =  CardPortfolio1::Editions.all
    @editions.each.with_index(1) do |edition, i|
      puts "#{i}. #{edition.name}"
    end
   end

def menu
    input = nil
    while input != 'exit'
    puts "Enter the number of the deck edition to discover its' characters, type 'list' to see the editions again, or type 'exit':"
    input = gets.strip.downcase
  
    if input.to_i > 0 
      the_editions = @editions[input.to_i - 1]   
      puts "#{the_editions.name}"
    elsif input == "list"
      list_editions
    else 
      puts "...C'mon, adventurer. 1 through 5, 'list' or 'exit' please!"
    end
  end
end

def goodbye
  puts "Check out more information on www.musicthegathering.com! See you soon!"
end




##class end###
end

