class Search
  def self.search(input)
    base_url = "http://www.omdbapi.com/?"
    query = base_url + "s=" + input.term 
    response = HTTParty.get(query)
    response = response.parsed_response
    response = JSON.parse(response)
    response["Search"].take(input.results)
  end
end

