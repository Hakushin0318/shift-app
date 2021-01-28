class DaysController < ApplicationController
  def index
  end
  
  def new
    @form = Form::DayCollection.new
    @user = current_user.id
  end

  def create
    @user = current_user.id
    @form = Form::DayCollection.new(day_collection_params)
    if @form.save
      redirect_to root_path
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end

  private

  def day_collection_params
    params.require(:form_day_collection).permit(days_attributes: [:ok_id, :shift_date, :user_id])
  end
end
