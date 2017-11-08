class Favorite < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :date_observed, :wikipedia_search, :google_search, :country_name, :country_flag_url, :user_id
end
