class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def show
    binding.pry
    @country = Country.find(params[:id])
  end

end
