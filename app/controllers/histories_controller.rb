class HistoriesController < ApplicationController
  def index
    @histories = History.where(user: current_user)
  end

  def show
    @history = History.find(params[:id])
  end

  def new
    @history = History.new
  end

  def create
    @history = History.new(history_params)
    @history.user = current_user
    if @history.save
      redirect_to @history
    else
      render :new
    end
  end

  def edit
    @history = History.find(params[:id])
  end

  def update
    @history = History.find(params[:id])
    if @history.update(history_params)
      redirect_to @history
    else
      render :edit
    end
  end

  def destroy
    @history = History.find(params[:id])
    @history.destroy
    redirect_to histories_path
  end

  def history_params
    params.require(:history).permit(:event, :start_date, :description, :end_date)
  end
end
