class AddRecipientsToComplaint < ActiveRecord::Migration[5.1]
  def change
    add_reference :complaints, :recipient, foregin_key: true
  end
end
