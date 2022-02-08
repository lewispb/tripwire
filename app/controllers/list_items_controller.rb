class ListItemsController < ApplicationController
  include TripScoped, ListScoped

  before_action :set_list_item, only: [ :show, :edit, :update, :destroy ]

  def index
    @list_items = ListItem.all
  end

  def show
  end

  def new
    @list_item = ListItem.new(list: @list)
  end

  def edit
  end

  def create
    @list_item = ListItem.new(list_item_params)

    if @list_item.save
      redirect_to [ @list.trip, @list ], notice: "List item was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @list_item.update(list_item_params)
      redirect_to [ @list.trip, @list ], notice: "List item was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list_item.destroy
    redirect_to list_items_url, notice: "List item was successfully destroyed."
  end

  private
    def set_list_item
      @list_item = ListItem.find(params[:id])
    end

    def list_item_params
      params.require(:list_item).permit(:title).merge(list: @list)
    end
end
