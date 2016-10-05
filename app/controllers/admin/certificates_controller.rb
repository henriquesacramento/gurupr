module Admin
  class CertificatesController < ApplicationController
    before_filter :authenticate_admin!
    before_filter :load_event

    def index
    end

    private

      def load_event
        @event = Event.friendly.find(params[:event_id])
      end
  end
end
