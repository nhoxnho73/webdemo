class NewStatusesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, only: %i(show update destroy)
  def index
    # binding.pry
    @statuses = NewStatus.all
  end

  def show 
    @discriptions = @status.new_discriptions
  end

  private
    def set_params
      @status = NewStatus.find(params[:id])
    end
    
    def params_stutus
      params.require(:new_status).permit(:name)
    end
end
