class Account < ApplicationRecord
  belongs_to :user

  has_many :chats, dependent: :destroy

  attribute :login,:string
  attribute :password, :string
  attribute :role, :string
  attribute :nickname, :string

end
