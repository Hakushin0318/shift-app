class ShiftController < ApplicationController
  def index
  end

  def new
    @shift = Shift.new
  end

  def create
    @user_days = Day.where(shift_date: params[:date_save], ok_id: 2)


    @num = []
    @user_days.each do |name|
      @num << User.find(name.user_id)
    end
  end

  def edit
  end

  private
  def shift_params
    params.require(:shift).merge(user_id: params[:user_id], ok_id: params[:ok_id], shift_date: params[:shift_date])
  end
end
