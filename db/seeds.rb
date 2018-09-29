99.times do |n|
  title       = Faker::Movie.quote
  description = Faker::Lorem.sentences(2)
  imdb        = Faker::Internet.domain_name 
  Movie.create!(title:       title,
                description: description,
                imdb:        imdb)
end
