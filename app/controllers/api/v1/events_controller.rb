module Api
  module V1
    class EventsController < ApplicationController
      # Recommended by Rails Guides for JSON API:
      # http://api.rubyonrails.org/classes/ActionController/RequestForgeryProtection.html
      protect_from_forgery
        skip_before_action :verify_authenticity_token, if: :json_request?

      before_filter :restrict_access
      respond_to :json

      def index
        respond_with Event.all
      end

      def show
        respond_with Event.find(param[:id])
      end

      def create
        respond_with Event.create(event_params)
      end

      private
       def event_params
         default_params.merge params.require(:event).permit(
           :entry, :entry_type, :hostname, :source_ip, :user
         )
       end

       # Set default params
       def default_params
         {entry_type: 'api', user: 'api',
          hostname: request.remote_ip,
          source_ip: request.remote_ip}
       end

       def restrict_access
         authenticate_or_request_with_http_token do |token, options|
           ApiKey.exists?(access_token: token)
         end
       end

      protected

       def json_request?
         request.format.json?
       end
    end
  end
end
