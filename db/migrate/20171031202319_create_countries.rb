class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :abbreviation
      t.string :flag_img_url

      t.timestamps
    end
  end
end
