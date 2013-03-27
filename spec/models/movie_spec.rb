require 'spec_helper'

describe Movie do
  it "should only be valid with a title" do
    movie = Movie.new(:language => 'en', :length => 180, :year => 1976)

    movie.should_not be_valid     # bisherige syntax
    expect(movie).to_not be_valid # neue syntax

    movie.title = 'Foo Bar 2 - The Return'

    # bisherige syntax:
    movie.should be_valid

    # neue syntax:
    expect(movie).to be_valid
  end

  it "should only be valid with a title" do
    movie = Movie.new(:language => 'en', :length => 180, :year => 1976)

    expect { movie.title = "Star Wars Episode VII" }
      .to change { movie.valid? }
      .from(false).to(true)
  end

  # it "foo" do
  #   expect {
  #     Movie.create(:title => "Star Wars",
  #       :length => 123, :year => 1977, :language => 'en')
  #   }.to change { Movie.count }.by(1)
  # end
end
