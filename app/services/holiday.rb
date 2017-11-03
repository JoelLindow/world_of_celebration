class Holiday
  attr_reader :name, :date_observed

  def initialize(holiday_json)
    # binding.pry
    @raw_holiday    = holiday_json
    @name           = holiday_json.flatten[1][:name]
    @date           = holiday_json.flatten[1][:date] #reformat date
    @date_observed  = holiday_json.flatten[1][:observed] #reformat date
  end

  def date_fixer(bad_date)
    #build date reformatter here????

    bad_date
  end
end
