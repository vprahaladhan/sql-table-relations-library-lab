def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters WHERE LENGTH(motto) = (SELECT MAX(LENGTH(motto)) FROM characters);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT au.name, su.name FROM authors au, series se, subgenres su WHERE au.id = se.author_id AND se.subgenre_id = su.id;"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM series, characters WHERE series.author_id = characters.author_id AND species = 'human' GROUP BY title ORDER BY COUNT(title) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(cb.id) FROM characters c, character_books cb, books b WHERE c.id = cb.character_id AND cb.book_id = b.id GROUP BY c.name ORDER BY COUNT(b.id) DESC, c.name;"
end
