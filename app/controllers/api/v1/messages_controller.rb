module Api
  module V1
    class MessagesController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index

        #url = 'https://api.avito.ru/token/?grant_type=client_credentials&client_id=bvf34jpgqeKqrI9TZk_7&client_secret=wJxZdAI2QGb7mI8D1RAj05LvI9uhBTn4LogcwE74'
        #url = 'http://cb32d56666f3.ngrok.io/api/v1/messages'
        #response = Faraday.post(url)
        #render json: response
        #pp 'INCOMING PARAMS', params.inspect


      end

      # def create
      #   message = Message.new(message_params)
      #   if message.save
      #     render json: message, status: :created
      #   else
      #     render json: message.errors, status: :unprocessable_entity
      #   end
      # end
      #
      # private
      #
      # def message_params
      #   params.require(:message).permit(:content)
      # end
    end
  end
end