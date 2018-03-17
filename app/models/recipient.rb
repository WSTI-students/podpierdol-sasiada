class Recipient < ApplicationRecord
  has_many :complaints

  def self.styles
    Recipient.all
  end
end
