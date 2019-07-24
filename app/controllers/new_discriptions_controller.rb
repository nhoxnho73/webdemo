class NewDiscriptionsController < ApplicationController
  before_action :authenticate_user!# xác thực user trước khi load trang
  before_action :set_discription, only: [:update, :destroy]
  def index
    _theme_drop_down
    @discriptions = NewDiscription.all
    @discription = NewDiscription.new
  end

  def create
    _theme_drop_down
    @discription = NewDiscription.new(params_discription)
    respond_to do |format|
      if @discription.save
        format.js {}
      else
        flash_message_array('alert', @discription.errors.full_messages)
        format.js{ render 'create_error' }
      end
    end
  end

  def update
    _theme_drop_down
    respond_to do |format|
      if @discription.update(params_discription)
        format.js {}
      else
        flash_message_array('alert', @discription.errors.full_messages)
      end
    end
  end

  def destroy
    respond_to do |format|
      if @discription.destroy
        format.js {}
      else
        format.js{
          render partial: "layouts/common/notification", 
          locals: {type: 'danger', message: "#{@discription.errors.full_messages.join("</br>")}"},
          status: :unprocessable_entity
        }
      end
    end
  end

  private
    def _theme_drop_down#hiển thị các đối tượng lên drop down list
      @theme = NewStatus.select(:id, :name)
    end

    def set_discription# hiển thị các đối tượng theo id
      @discription = NewDiscription.find(params[:id])
    end

    def params_discription#input/output data
      params.require(:new_discription).permit(:new_status_id, :discription)
    end
end
