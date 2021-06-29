class WebhooksController < ApplicationController

  def create
    Webhook.create()
  end

end