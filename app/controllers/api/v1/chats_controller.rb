module Api
  module V1
    class ChatsController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index
        render json: Chat.all
      end
    end
  end
end