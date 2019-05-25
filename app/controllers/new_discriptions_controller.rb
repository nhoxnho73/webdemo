class NewDiscriptionsController < ApplicationController
  def index
    @discription = NewDiscription.all
    @discript = NewDiscription.new
  end

  def show
    @discription = NewDiscription.all
  end

  def create
    @discript = NewDiscription.new(params_discription)
    despond_to do |format|
      if @discript.save
        format.js {}
      else
        flash_message_array('alert', @discript.errors.full_messages)
      end
    end
  end

  def update
    despond_to do |format|
      if @discript.update(params_discription)
        format.js {}
      else
        flash_message_array('alert', @discript.errors.full_messages)
      end
    end
  end

  private
    def params_discription
      params.require(:new_discriptions).permit(:code, :discription)
    end
end
