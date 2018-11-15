class Movie

require 'nokogiri'
require 'open-uri'


def initialize
Tmdb::Api.key("KEY_HERE")

 end




  def search
    Tmdb::Search.movie('Harry potter')
       end
  end

  def perform
    initialize
    search
  end

end