class CountriesController < ApplicationController
  before_action :require_user

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

end
