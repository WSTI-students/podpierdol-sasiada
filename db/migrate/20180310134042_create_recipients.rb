class CreateRecipients < ActiveRecord::Migration[5.1]
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :email
      t.string :adress
      t.string :phone_number
      t.integer :points, default:0
      
      t.timestamps
    end
  end
end
