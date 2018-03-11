class Complaint < ApplicationRecord
  belongs_to :user
  alias_attribute :author, :user
  has_one :neighbour
  belongs_to :recipient
end
