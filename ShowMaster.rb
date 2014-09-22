class ShowMaster
  require 'imdb'

  def best_ever
    'The Wire'
  end

  def rating_of?(show_name)
    Imdb::Search.new(show_name).movies.first.rating
  end

  def best_within(show_names)
    show_names.map do |show_name|
      [show_name, rating_of?(show_name)]
    end.sort do |(_, rating1), (_, rating2)|
      rating2 <=> rating1
    end.first.first
  end
end


# show_master = ShowMaster.new

# if show_master.best_ever == 'The Wire'
#   puts "OK"
# else
#   puts "FAIL"
# end

# if show_master.rating_of?('The Wire') == 9.4
#   puts "OK"
# else
#   puts "FAIL"
# end

# if show_master.rating_of?('Game of Thrones') == 9.5 # TOO F*CKING MUCH
#   puts "OK"
# else
#   puts "FAIL"
# end

# if show_master.best_within([
#   "Breaking Bad",
#   "Veep",
#   "Mom"
# ]) == 'Breaking Bad'
#   puts "OK, YOU'RE GODDAMN RIGHT"
# else
#   puts "FAIL"
# end

# if show_master.best_within([
#   "Utopia",
#   "Game of Thrones",
#   "The Office"
# ]) == 'Game of Thrones'
#   puts "OK"
# else
#   puts "FAIL"
# end
