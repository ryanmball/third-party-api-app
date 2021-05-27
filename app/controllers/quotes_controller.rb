class QuotesController < ApplicationController
  def index
    response = HTTP.headers("Content-Type" => "application/json", "Authorization" => "Token token='ab538857f72b32b50f31debb86d2f269'").get("https://favqs.com/api/qotd")
    render json: response.parse(:json)
  end
  # GET requests from the Fav Quotes API require two headers:
  # Content-Type: application/json
  # Authorization: Token token="API-KEY"
end