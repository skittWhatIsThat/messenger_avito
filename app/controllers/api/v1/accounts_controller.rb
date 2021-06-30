module Api
  module V1
    class AccountsController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index
        render json: Account.all
      end

      def create
        account = Account.new(message_params)
        if account.save
          render json: account, status: :created
        else
          render json: account.errors, status: :unprocessable_entity
        end
      end

      private

      def message_params
        params.require(:account).permit(:login, :password)
      end

    end
  end
end