require 'grape'

module SimpleApi
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    resource :health do
      desc 'Return api status'
      get do
        { status: 'OK' }
      end
    end
  end
end
