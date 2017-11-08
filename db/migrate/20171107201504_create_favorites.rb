class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :date_observed
      t.string :wikipedia_search
      t.string :google_search
      t.string :country_name
      t.string :country_flag_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
