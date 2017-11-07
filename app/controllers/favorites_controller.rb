class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(favorite_params)
    if favorite.save
      # binding.pry
      flash[:alert] = "Favorite Successfully Added"
      redirect_back(fallback_location: countries_path)
    else
      flash[:alert] = "Favorite Not Added"
      redirect_back(fallback_location: countries_path)
    end

  end

  private

  def favorite_params
    params.permit(:name, :date_observed, :wikipedia_search, :google_search, :country_name, :country_flag_url, :user_id)
  end

end
