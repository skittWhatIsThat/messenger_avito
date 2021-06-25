module Api
  module V1
    class MessagesController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index
        render json: Message.all
      end

      def create
        message = Message.new(message_params)
        if message.save
          render json: message, status: :created
        else
          render json: message.errors, status: :unprocessable_entity
        end
      end

      private

      def message_params
        params.require(:message).permit(:content)
      end
    end
  end
end