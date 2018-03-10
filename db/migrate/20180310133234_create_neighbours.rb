class CreateNeighbours < ActiveRecord::Migration[5.1]
  def change
    create_table :neighbours do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.string :street
      t.string :building_house
      t.string :postcode

      t.timestamps
    end
  end
end
