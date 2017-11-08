class FavoritesController < ApplicationController

  def index
    @holidays = Favorite.where(user_id: current_user.id)
    @countries = Country.order(:name)
    # binding.pry
  end

  def create
    favorite = Favorite.new(favorite_params)
    if favorite.save
      flash[:alert] = "Favorite Successfully Added"
    else
      flash[:alert] = "Favorite Not Added"
    end
    redirect_back(fallback_location: countries_path)
  end

  def destroy
    
  end



  private

  def favorite_params
    params.permit(:name, :date_observed, :wikipedia_search, :google_search, :country_name, :country_flag_url, :user_id)
  end

end
