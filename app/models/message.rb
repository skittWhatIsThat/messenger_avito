class Message < ApplicationRecord
  belongs_to :chat

  attribute :content, :text
  attribute :answer, :integer

end
