require 'rails_helper'

RSpec.describe Movie, :type => :model do
  describe "#Movie.fetch_themoviedb" do
    it "should fetch data successful from themoviedb" do
      result = Movie.fetch_themoviedb
      expect(Movie.count).to be > 0
    end
  end
end