class NewStatusesController < ApplicationController
  before_action :authenticate_user!
  def index
    @statuses = NewStatus.all
  end
  private
    def params_stutus
      params.require(:new_status).permit(:name)
    end
end
