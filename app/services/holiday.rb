class Holiday
  attr_reader :name, :date_observed, :country

  def initialize(holiday_json, country)
    @raw_holiday    = holiday_json
    @name           = holiday_json.flatten[1][:name]
    @date_observed  = date_fixer
    @country        = country
  end

  def date_fixer
    day = @raw_holiday.flatten[1][:date].chars[-2] + @raw_holiday.flatten[1][:date].chars[-1]
    raw_month = @raw_holiday.flatten[1][:date].chars[5] + @raw_holiday.flatten[1][:date].chars[6]
    month_namer[raw_month] + " " + day
  end

  def month_namer
    { "01" => "January", "02" => "February", "03" => "March", "04" => "April",
      "05" => "May", "06" => "June", "07" => "July", "08" => "August",
      "09" => "September", "10" => "October", "11" => "November", "12" => "December"
    }
  end

  def web_search
    (@name.split(" ").join("+")) + "+" + country_parse
  end

  def country_parse
    @country.name.split(" ").join("+")
  end
end
