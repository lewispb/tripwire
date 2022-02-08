module TripScoped
  extend ActiveSupport::Concern

  included do
    before_action :set_trip
  end

  private
    def set_trip
      @trip = Trip.find(params[:trip_id])
    end
end
