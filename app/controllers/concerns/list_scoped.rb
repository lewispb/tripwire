module ListScoped
  extend ActiveSupport::Concern

  included do
    before_action :set_list
  end

  private
    def set_list
      @list = List.find(params[:list_id])
    end
end
