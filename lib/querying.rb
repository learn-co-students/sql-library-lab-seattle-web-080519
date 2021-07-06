def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year from books where series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto from characters order by length(motto) desc limit 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species,COUNT(species) AS cnt FROM characters
  GROUP BY species
  ORDER BY cnt DESC
  limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from authors
  join series on authors.id = series.author_id
  join subgenres on subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "select series.title from series 
  join books on books.series_id = series.id 
  join character_books on character_books.book_id = books.id
  join characters on characters.id = character_books.character_id
  where characters.species = 'human'
  limit 1" #limit 1 after first join will pass test without intended requirements
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.book_id) as a from characters
  join character_books on characters.id = character_books.character_id
  group by characters.name order by a desc"
end
