class Chat < ApplicationRecord
  belongs_to :account

  has_many :messages, dependent: :destroy
end
