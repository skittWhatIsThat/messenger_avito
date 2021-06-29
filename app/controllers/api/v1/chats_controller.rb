module Api
  module V1
    class ChatsController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index
        # GET request
        # выводы списка чатов
        # #render json: Chat.all
        # make reqst from avito
      end

      def show
        # GET request
        # отобразить определеный чат
        # render json: Chat.find(params[:id])
      end

      def destroy
        # DELETE request
        # удалить чат
        # Chat.delete(params[:id])
      end


    end
  end
end