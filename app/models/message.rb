class Message < ApplicationRecord
  validates :product, presence: true
end