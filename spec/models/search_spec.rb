require "rails_helper"

RSpec.describe Search, :type => 'model' do
  describe '.search' do
    it "has a method search" do
      expect(Search).to respond_to(:search)
    end
    it "takes a query and returns an array" do
      query = double("Query", term: "Braveheart", results: 6)

      response = Search.search(query)

      expect(response).to be_a(Array)
    end
    it "takes a query and a limit and returns that many results" do
      query = double("Query", term: "Titanic", results: 5)
      response = Search.search(query)

      expect(response.count).to eq(5)
    end
    it "takes a query and a limit and returns that many results" do
      query = double("Query", term: "Titanic", results: 2)
      response = Search.search(query)

      expect(response.count).to eq(2)
    end
  end
end


