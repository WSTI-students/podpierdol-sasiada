class Complaint < ApplicationRecord
  belongs_to :user
  alias_attribute :author, :user
end
