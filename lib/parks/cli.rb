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
      elsif input.to_i > 0 
        choice = Parks::Park.find(input.to_i)
        #binding.pry
        puts '' 
        puts "You chose number #{input}. #{choice.name}."
        puts "Here are some details"
        print_park(choice)

        puts "Would you like to find out more? Enter 'Yes' or 'No' (Y/N)."
        more_info = gets.strip.upcase
        until more_info == "Y" || more_info == "YES" || more_info == "N" || more_info == "NO"
          puts "That's not a valid answer, please enter 'Yes' or 'No' (Y/N)."
          more_info = gets.strip.upcase
        end
        if more_info == "Y" || more_info == "YES"
          Parks::Scraper.scrape_description(Parks::Park.find(input.to_i))
          print_description(choice)
        end

      else
        puts "not sure what you want, type list or exit"
      end
      puts " "
    
    end
  end

  def print_park(choice)
    puts "#{choice.name}"
    puts "#{choice.location}"
    puts "#{choice.url}"    
  end

  def print_description(choice)
    puts "#{choice.summary}"
    puts ""
    puts ""
  end

  def goodbye
    puts "see you later"
  end

end