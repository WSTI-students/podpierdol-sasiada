class CreateComplaint < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.string  :title,              null: false, default: ""
      t.string  :signature_type,     null: false, default: "anonymous"
      t.text    :description
      t.string  :status,              null: false, default: "draft"
      
      t.timestamps
    end
  end
end
