# here will save new avito messages

# class messages
#   include Interactor::Organzier
#
#   organize CreateAccounts, OpenListChats, SendMessage, ReadMessage
# end
#
module Avito
  module Messages

    class CreateInteractor
      include Interactor

      delegate :params, to: :context

      attr_accessor :chat, :account

      def call
        @chat = define_chat
        @account = define_account

        create_message
      end

      private

      def define_chat
        Chat.find_or_create_by(chat_id: params.dig('payload', 'chat_id'))
      end

      def define_account
        Account.find_or_create_by(user_id: params.dig('payload', 'user_id'))
      end

      def create_message
        Message.create(
          chat: @chat,
          account: @account,
          content: params.dig('payload', 'content', 'text'),
          response: params
        )
      end

    end

  end
end
