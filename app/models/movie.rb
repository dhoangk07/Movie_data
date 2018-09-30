  require 'uri'
  require 'net/http'
class Movie < ApplicationRecord
  validates :title, uniqueness: true
  def self.fetch_themoviedb
    url = URI("https://api.themoviedb.org/3/movie/now_playing?page=1&language=en-US&api_key=65863bf5229c0d57bcf2f3a29183ac0e")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request.body = "{}"
    response = http.request(request)
    json_response = JSON.parse(response.read_body)
    json_movies = json_response['results']
    json_movies.each do |json_movie|
      json_movie['title']
      json_movie['overview']
      json_movie['poster_path']
      json_movie['backdrop_path']
      Movie.create(title: json_movie['title'], description: json_movie['overview'], poster_path: json_movie['poster_path'], backdrop_path: json_movie['backdrop_path'] )
    end
  end
end
