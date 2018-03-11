class AddNeighourToComplaints < ActiveRecord::Migration[5.1]
  def change
    add_reference :neighbours, :complaint, foreign_key: true
  end
end
