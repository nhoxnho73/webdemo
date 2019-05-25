class NewStatusesController < ApplicationController
  def index
    @status = NewStatus.all
  end
  private
    def params_stutus
      params.require(:new_status).permit(:name)
    end
end
