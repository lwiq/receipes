class ReadersController < ApplicationController

  def index
    @readers = Reader.all
  end

  def new
    @reader = Reader.new
  end

  def create
    @reader = Reader.new(params[:reader])
    if @reader.save
      flash[:notice] = "reader creat cu succes"
      redirect_to readers_path
    else
      flash[:alert] = "reader-ul nu a putut fi creat"
      render :action => "new"
    end
  end
end
