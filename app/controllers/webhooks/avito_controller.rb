module Webhooks
  class AvitoController < ApplicationController

    def message
      result = Avito::Messages::CreateInteractor.call(params: params)
      # if result.success?
      #   result.value # value is the object returned in your interactor, in this case, bank_account
      # else
      #   result.errors.each do |error|
      #     puts "Some error happened related to #{error.source}. Detail: #{error.message}"
      #   end
      # end
    end

    # def token
    #
    #   pp 'INCOMING PARAMS', params.inspect
    #
    #
    #   #Avito::Accounts::CreateInteractor.call(params: params)
    # end
    #
    # def chat
    #
    #   pp 'INCOMING PARAMS', params.inspect
    #
    #
    #   #Avito::Chats::CreateInteractor.call(params: params)
    # end
    #
    #
    # private
    #
    # def account_params
    #   params.require(:account).permit(:client_id, :client_secret )
    # end
    #
    # def chat_params
    #   params.require(:chat).permit(:user_id, :chat_id)
    # end
    #
    # def message_params
    #   params.require(:message).permit(:user_id, :chat_id)
    # end


  end
end