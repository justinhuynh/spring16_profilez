class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :one_liner
      t.string :favorite_color
      t.text :about_me

      t.timestamps
    end
  end
end
