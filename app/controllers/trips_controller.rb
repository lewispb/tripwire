# frozen_string_literal: true

class TripsController < ApplicationController
  before_action :set_trip, only: [ :show, :edit, :update, :destroy ]

  def index
    @trips = Current.user.trips
  end

  def show; end

  def new
    @trip = Current.user.trips.new
  end

  def edit; end

  def create
    @trip = Current.user.trips.new(trip_params)

    if @trip.save
      redirect_to @trip, notice: "Trip was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @trip.update(trip_params)
      redirect_to @trip, notice: "Trip was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @trip.destroy

    redirect_to trips_url, notice: "Trip was successfully destroyed."
  end

  private

    def set_trip
      @trip = Current.user.trips.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:starts_on, :ends_on, :origin_id, :destination_id)
    end
end
