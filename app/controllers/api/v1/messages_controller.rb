module Api
  module V1
    class MessagesController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index
        render json: Message.all
      end
    end
  end
end