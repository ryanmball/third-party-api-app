class QuotesController < ApplicationController
  def index
    response = HTTP.headers("Content-Type" => "application/json", "Authorization" => "Token token='Rails.application.credentials.secured_api_key!'").get("https://favqs.com/api/qotd")
    render json: response.parse(:json)
  end
  # GET requests from the Fav Quotes API require two headers:
  # Content-Type: application/json
  # Authorization: Token token="API-KEY"
end