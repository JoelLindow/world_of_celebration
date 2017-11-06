class CountriesController < ApplicationController
  before_action :require_user

  def index
    @countries = Country.all
  end

  def show
    @holidays = HolidayPresenter.new(params[:id]).base_api_call

    @country = Country.find(params[:id])
    #
    # response = Faraday.get("https://holidayapi.com/v1/holidays?key=#{ENV["HOLIDAY_API_KEY"]}&year=2016&country=#{@country.abbreviation}")
    #
    # json_holidays = JSON.parse(response.body, symbolize_names: true)[:holidays]
    #
    # @holidays = json_holidays.map do |holiday|
    #   Holiday.new(holiday)
    # end
    #
    @web_search = (@country.name.split(" ").join("+") + "+")
  end
end

class HolidayPresenter

  def initialize(country_id)
    @country_id = country_id
  end

  def base_api_call
    @country = Country.find(@country_id)

    response = Faraday.get("https://holidayapi.com/v1/holidays?key=#{ENV["HOLIDAY_API_KEY"]}&year=2016&country=#{@country.abbreviation}")

    json_holidays = JSON.parse(response.body, symbolize_names: true)[:holidays]

    @holidays = json_holidays.map do |holiday|
      Holiday.new(holiday)
    end
  end

end
