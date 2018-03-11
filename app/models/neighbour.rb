class Neighbour < ApplicationRecord
  belongs_to :complaint, optional: true
end
