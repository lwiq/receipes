class CarsController < ApplicationController

  before_filter :find_reader

  def index
    @cars = Car.all
  end

  def new
    @car = @reader.cars.build
  end

  def create
    @car = @reader.cars.build(params[:car])
    if @car.save
      flash[:notice] = "creata cu succes"
      redirect_to readers_path
    else
      render 'new'
    end
  end

  private #-------------------
  def find_reader
    @reader = Reader.find(params[:reader_id])
  end
end
