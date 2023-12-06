movies = {
  Momento: 9,
  Inception: 9,
  Troy: 8,
  Gladiator: 9,
  Drive: 6
}

puts 'What would you like to do?'
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
when 'add'
  puts 'Enter a movie Title:'
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Enter the rating for #{title}"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} added to the list."
  else
    puts 'The movie already exists in the list'
  end
when 'update'
  puts 'Enter a movie to be update:'
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "The #{title} cannot be found in the list."
  else
    puts "Enter the new rating for #{title}"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} updated. It's new rating is #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts 'Enter the movie you want to remove from the list:'
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "The movies doesn't exist in the list."
  else
    movies.delete(title.to_sym)
    puts "#{title} deleted successfully from the list."
  end
else
  puts 'Error, invalid choice.'
end
