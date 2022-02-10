class ListsController < ApplicationController
  include TripScoped

  before_action :set_list, only: [ :show, :edit, :update, :destroy ]

  def index
    @lists = @trip.lists.all
  end

  def show; end

  def new
    @list = @trip.lists.new(trip: @trip)
  end

  def edit; end

  def create
    @list = @trip.lists.new(list_params)

    if @list.save
      redirect_to [ @trip, @list ], notice: "List was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @list.update(list_params)
      redirect_to [ @trip, @list ], notice: "List was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to [ @trip, :lists ], notice: "List was successfully destroyed."
  end

  private
    def set_list
      @list = @trip.lists.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:trip_id, :name).merge(trip: @trip)
    end
end
