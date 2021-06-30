module Webhooks
  class AvitoController < ApplicationController

    def message

      pp 'INCOMING PARAMS', params.inspect


      # Avito::Messages::CreateInteractor.call(params: params)
    end

  end
end