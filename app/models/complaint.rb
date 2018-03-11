class Complaint < ApplicationRecord
  has_one :neighbour
  belongs_to :recipient
end
