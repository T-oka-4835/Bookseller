class Public::CalendersController < ApplicationController
  layout "public-header"

  def index
    @calender = Calender.all
  end

  def new
    @calender = Calender.new
  end

  def show
    @calender = Calender.find(params[:id])
  end

  def create
    calender.create(calender_parameter)
    redirect_to calender_path
  end

  def destroy
    @calender = Calender.find(params[:id])
    @calender.destroy
    redirect_to calender_path, notice:"削除しました"
  end

  def edit
    @calender = Calender.find(params[:id])
  end

  def update
    @calender = Calender.find(params[:id])
    if @calender.update(calender_parameter)
      redirect_to calender_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def calender_parameter
    params.require(:calender).permit(:title, :content, :start_time)
  end

end
