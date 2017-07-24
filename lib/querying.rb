def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT b.title, b.year FROM books b WHERE b.series_id = 1 ORDER BY b.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(*) AS total FROM characters GROUP BY species ORDER BY total DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series INNER JOIN subgenres  ON series.subgenre_id = subgenres.id INNER JOIN authors ON authors.id = series.author_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM characters INNER JOIN series ON series.id = characters.series_id WHERE species = 'human' GROUP BY characters.series_id ORDER BY count(*) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.book_id) AS total FROM character_books INNER JOIN characters ON characters.id = character_books.character_id GROUP BY character_books.character_id ORDER BY total DESC, characters.name;"
end
