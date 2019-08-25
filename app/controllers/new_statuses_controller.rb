class NewStatusesController < ApplicationController
  before_action :authenticate_user!
  def index
    # binding.pry
    @statuses = NewStatus.all
  end

  def show 
    @status = NewStatus.find(params[:id])
    @discriptions = @status.new_discriptions
  end

  private
    def params_stutus
      params.require(:new_status).permit(:name)
    end
end
