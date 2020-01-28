class Parks::CLI

    def call
      puts "Best Parks in Chicago"
      list_parks
      menu
      goodbye
    end

    def list_parks
      puts "1. Millennium Park"
      puts "2. Grant Park"
      puts "3. The 606"
    end

    def menu      
      input = nil
      while input != "exit" 
        puts "enter the number of the park you'd like more info on or type list to see parks again or type exit"
        input = gets.strip.downcase
        case input
        when "1"
          puts "More info on park 1 ..."
        when "2"
          puts "More info on park 2..."
        when "3"
          puts "More info on park 3..."
        when "list"
          list_parks
        end
      end
    end

    def goodbye
      puts "see you later"
    end
  
  end