module Api
  module V1
    class AccountsController < ApplicationController
      #when app is be good
      #before_action :authenticate_api_v1_user!

      def index
        render json: Account.all
      end

      def create

        def index
          @webhook = Webhook.new
          @number_of_emails_sent = @webhook.number_of_events('send')
          @number_of_emails_opened = @webhook.number_of_events('open')
          @number_of_clicks = @webhook.number_of_events('click')
          @email_types = @webhook.email_types
        end

        def create
          data = JSON.parse(request.body.read)
          Webhook.create(address: data['Address'],
                         email_type: data['EmailType'],
                         event: data['Event'],
                         timestamp: data['Timestamp'])
          head 200
          end
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