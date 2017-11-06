class HolidayPresenter

  def initialize(country_id)
    @country = Country.find(country_id)
  end

  def base_api_call
    HolidayApiService.new.get_holidays_by_country(@country.abbreviation).map do |holiday|
      Holiday.new(holiday)
    end
  end
end
