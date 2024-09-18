films_path = "/Users/evgenijkalinin/Documents/My_Ruby_code/ruby_code/lesson_58/data/films.txt"
films = File.open(films_path,'r').readlines


system 'clear'
even_films = films.values_at(* films.each_index.select(&:even?))
random_film = even_films.sample
next_films = films[films.index(random_film).to_i.next]


puts "Сегодня вы будете смотреть: #{random_film}"
puts "Описание: \n#{next_film}"
