class ErrorsController < ApplicationController
  
  def index
    @errors = Error.all
  end
  
  def new
    @error = Error.new
  end
  
  def create
    @error = Error.new(params[:error])
    if @error.save
      flash[:success] = 'Congrats! You\'ve made an error!'
      redirect_to error_url(@error.id)
    else
      render :new
    end
  end
  
  def show
    @error = Error.find(params[:id])
  end
  
  def edit
    @error = Error.find(params[:id])
  end
  
  def update
    @error = Error.find(params[:id])
    if @error.update_attributes(params[:error])
      flash[:success] = 'Congrats! You\'ve updated your error!'
      redirect_to error_url(@error.id)
    else
      render :edit
    end
  end
  
  def destroy
    @error = Error.find(params[:id])
    @error.destroy
    flash[:success] = 'KABOOM! Your error has been destroyed.'
    redirect_to errors_url
  end
  
end