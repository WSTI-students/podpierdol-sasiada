class CreateConfirmations < ActiveRecord::Migration[5.1]
  def change
    create_table :confirmations do |t|
      t.references :complaint, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
