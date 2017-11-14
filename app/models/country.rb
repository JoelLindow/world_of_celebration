class Country < ApplicationRecord

  validates_presence_of :name, :abbreviation, :flag_img_url

end
