require_relative 'film'
current_path = File.dirname(__FILE__)

# Create empty arrays for directors and movies

films_list = []
directors_list = []

# File list from folder
files = Dir[File.join(current_path, 'data/*.txt')].sort

# Create object for each file
files.each do |item|
  movie = Film.new(item)
  films_list << movie
end

# Directors list
films_list.each do |item|
  directors_list << item.director
end

# Show directors list
puts 'Фильм какого режиссера будем смотреть сегодня?: '
directors_list.uniq.each_with_index do |name, i|
  puts "#{i + 1}.#{name}"
end

# Ask user to choice director
choice = STDIN.gets.to_i

# Filter movies by director
films_of_director = films_list.select { |film| film.director == directors_list[choice] }
film_for_user = films_of_director.sample

# Show result
puts 'Сегондя вечером рекомендуем посмотреть: '
puts film_for_user
