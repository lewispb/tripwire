module ListScoped
  extend ActiveSupport::Concern

  included do
    before_action :set_trip
    before_action :set_list
  end

  private
    def set_trip
      @trip = Current.user.trips.find(params[:trip_id])
    end

    def set_list
      @list = @trip.lists.find(params[:list_id])
    end
end
