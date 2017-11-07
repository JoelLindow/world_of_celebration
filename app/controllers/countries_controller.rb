class CountriesController < ApplicationController
  before_action :require_user

  def index
    @countries = Country.order(:name)
  end

  def show
    @countries = Country.order(:name)
    @holidays = HolidayPresenter.new(params[:id]).base_api_call
  end
end
