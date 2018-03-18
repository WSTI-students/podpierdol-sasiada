class Complaint < ApplicationRecord
  belongs_to :recipient
  belongs_to :user
  alias_attribute :author, :user
  has_one :neighbour
  has_many :confirmations
  has_many :confirmers, through: :confirmations, source: :user

  def self.all_recipients
    Recipient.all
  end
end
