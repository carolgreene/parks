class Parks::CLI

    def call
      puts "Best Parks in Chicago"
      list_parks
      menu
      goodbye
    end

    def list_parks
      #puts "1. Millennium Park:  Millennium Park"
      #puts "2. Grant Park:  Millennium Park"
      #puts "3. The 606:  Humboldt Park"
      @parks = Parks::Park.all
      
      @parks.each.with_index(1) do |park, i|
        puts "#{i}. #{park.name} - #{park.location}"
      end
    end

    def menu      
      input = nil
      while input != "exit" 
        puts "enter the number of the park you'd like more info on or type list to see parks again or type exit"
        input = gets.strip.downcase

        if input.to_i > 0
          puts @parks[input.to_i-1].name
        elsif input == "list"
          list_parks
        else
          puts "not sure what you want, type list or exit"
        end
      end
    end

    def goodbye
      puts "see you later"
    end
  
  end