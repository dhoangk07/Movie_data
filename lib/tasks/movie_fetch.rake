desc "fetch themoviedb"
task themoviedb_fetcher: :environment do 
  Movie.fetch_themoviedb
end

