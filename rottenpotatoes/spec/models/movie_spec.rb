require 'rails_helper'

RSpec.describe Movie, type: :model do
    # 2 specs for your model:
    # 1) it should return the correct matches for movies by the same director
    # 2) it should not return matches of movies by different directors.
    # pending "add some examples to (or delete) #{__FILE__}"
    it "returns similar movies" do
        movie1 = Movie.create(title: 'something', director: 'chinghsien')
        movie2 = Movie.create(title: 'something2', director: 'chinghsien')
        movie3 = Movie.create(title: 'something3', director: 'liu')
        expect(Movie.same_directors('chinghsien')) == [movie1, movie2]
    end
end