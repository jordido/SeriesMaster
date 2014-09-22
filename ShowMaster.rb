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

  def search_string(string)
    Imdb::Search.new(string).movies.size
  end

  def most_episodes_from(list)
    list.map do |element|
      movie = Imdb::Search.new(element).movies.first
      Imdb::Serie.new(movie.id)
    end.max do |serie1, serie2|
          serie1.seasons.count <=> serie2.seasons.count
        end.title.gsub('"',"")
  end

end

