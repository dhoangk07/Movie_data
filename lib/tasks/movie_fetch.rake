desc "Fetch themoviedb"
task fetch_themoviedb: :environment do 
  Movie.fetch_themoviedb
end

