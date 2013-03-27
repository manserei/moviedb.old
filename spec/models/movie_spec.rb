require 'spec_helper'

describe Movie do
  it "should only be valid with a title" do
    movie = Movie.new(:language => 'en', :length => 180, :year => 1976)
    movie.should_not be_valid

    movie.title = 'Foo Bar 2 - The Return'

    # bisherige syntax:
    movie.should be_valid

    # neue syntax:
    expect(movie).to be_valid
  end
end
