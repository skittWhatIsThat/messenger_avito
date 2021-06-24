class Chat < ApplicationRecord
  belongs_to :account

  attribute :name, :string
  attribute :status, :boolean
  attribute :time_last_messages

  has_many :messages, dependent: :destroy
end
