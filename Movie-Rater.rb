movies = {
    batman: 10
  }
  
  puts "Enter either: add | update | display | delete"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "Enter a Movie title"
      title = gets.chomp
      puts "Enter a Rating /10"
      rating = gets.chomp
      if movies[title.to_sym] == nil
        movies[title.to_sym] = rating.to_i
      else 
        puts "This film has already been added!"
      end
    when "update"
      puts "Enter a Movie title"
      title = gets.chomp
      if movies[title] = nil
        puts "This film hasn't been added!"
      else
        puts "What is the updated rating?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "The #{title}'s rating has been updated to #{rating}"
      end
    when "display"
      movies.each { |movie, rating| puts "#{movie}: #{rating}"}
    when "delete"
      puts "Enter a Movie title"
      title = gets.chomp
      if movies[title] = nil
          puts "This film hasn't been added!"
      else 
        movies.delete(title.to_sym)
        puts "The #{title} has been deleted!"
      end
  end