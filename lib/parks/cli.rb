class Parks::CLI

  def call
    puts "Best Parks in Chicago"
    Parks::Scraper.scrape_parks
    list_parks
    menu
    goodbye
  end

  def list_parks
    @parks = Parks::Park.all      
    @parks.each.with_index(1) do |park, i|
      puts "#{i}. #{park.name} - #{park.location} - #{park.url}"
    end
  end

  def menu      
    input = nil
    while input != "exit" 
      puts "enter the number of the park you'd like more info on or type list to see parks again or type exit"
      input = gets.strip.downcase

      if input == "list"
        list_parks
      elsif input == "exit"
        goodbye
      elsif input.to_i > 0 
        choice = Parks::Park.find(input.to_i)
        #binding.pry
        puts '' 
        puts "You chose number #{input}. #{choice.name}."
        puts "Here are some details"
        print_park(choice)
      else
        puts "not sure what you want, type list or exit"
      end
    end
  end

  def print_park(choice)
    puts "you're in print park"
  end

  def goodbye
    puts "see you later"
  end

end