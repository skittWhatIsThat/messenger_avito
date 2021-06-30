module Api
  module V1
    class AccountsController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index
        #render json: Account.all
        #@token_avito = JSON.parse(open("https://api.avito. ru/token/?grant_type=client_credentials&client_id=bvf34jpgqeKqrI9TZk_7&client_secret=wJxZdAI2QGb7mI8D1RAj05LvI9uhBTn4LogcwE74").read)

        #render json: @token_avito
        #
        #require 'faraday'
        #url = 'https://api.avito.ru/token/?grant_type=client_credentials&client_id=bvf34jpgqeKqrI9TZk_7&client_secret=wJxZdAI2QGb7mI8D1RAj05LvI9uhBTn4LogcwE74'
        #response = Faraday.get(url)
        #render json: response

      end

      def create
        account = Account.new(account_params)
        if account.save
          render json: account, status: :created
        else
          render json: account.errors, status: :unprocessable_entity
        end
      end

      private

      def account_params
        params.require(:account).permit(:client_id, :client_secret )
      end

    end
  end
end