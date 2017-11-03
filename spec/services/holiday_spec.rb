require 'rails_helper'

describe "Holiday Service creates a single holiday object" do
  it "and poro has proper attributes" do


    holiday_data = [:"2016-01-01", [
                                  {:name=>"Holiday Name",
                                  :date=>"2016-01-01",
                                  :observed=>"2016-01-01",
                                  :public=>true}
                                  ]
                  ]

    poro = Holiday.new(holiday_data)

    expect(poro.name).to eq("Holiday Name")

  end
end
