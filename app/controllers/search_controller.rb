class SearchController < ApplicationController
  def index
    @holidays = HolidaySearch.new(params[:country]).holidays
  end

end
