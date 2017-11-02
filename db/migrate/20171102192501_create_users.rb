class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :email
      t.string :image
      t.string :token

      t.timestamps
    end
  end
end
