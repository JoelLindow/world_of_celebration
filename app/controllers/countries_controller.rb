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
