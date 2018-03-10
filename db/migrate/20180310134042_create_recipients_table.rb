class CreateRecipientsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :recipients_tables do |t|
      t.string :name
      t.string :email
      t.string :adress
      t.integer :phone_number
      t.integer :points
      
      t.timestamps
    end
  end
end
