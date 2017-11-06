class CountriesController < ApplicationController
  before_action :require_user

  def index
    @countries = Country.all
  end

  def show
    @holidays = HolidayPresenter.new(params[:id]).base_api_call
    @country = Country.find(params[:id])
    @web_search = (@country.name.split(" ").join("+") + "+")
  end
end

class HolidayApiService

  def get_holidays_by_country(country_abbreviation)
    json_parse(api_call(country_abbreviation))
  end

  def json_parse(response)
    JSON.parse(response.body, symbolize_names: true)[:holidays]
  end

  def api_call(country_abbreviation)
    Faraday.get("https://holidayapi.com/v1/holidays?key=#{ENV["HOLIDAY_API_KEY"]}&year=2016&country=#{country_abbreviation}")
  end

end
