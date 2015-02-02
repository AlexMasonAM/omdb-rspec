require 'rails_helper'

RSpec.describe Movie, :type => 'model' do
  let(:movie) {Movie.new}
  it "has a title" do
    expect(movie).to respond_to(:title)
  end
  it "has a year" do
    expect(movie).to respond_to(:year)
  end
  it "has an imdb" do
    expect(movie).to respond_to(:imdbID)
  end
  describe "#set" do
    it 'is instantiated' do      
      movie.set(HTTParty.get("http://www.omdbapi.com/?i=tt0870675"))
      expect(movie.title).to eq("The True Story of Braveheart")
      expect(movie.year).to eq(2006)
      expect(movie.imdbID).to eq("tt0870675")
    end
  end
end
