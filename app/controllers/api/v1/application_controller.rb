module Api
  module V1
    class ApplicationController < ActionController::Base
      include DeviseTokenAuth::Concerns::SetUserByToken
      #danger method, when use one good IP, else use extend  "class ApplicationController < ActionController::API"
      protect_from_forgery unless: -> { request.format.json? }
    end
  end
end