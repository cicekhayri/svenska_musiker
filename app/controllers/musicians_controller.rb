class MusiciansController < ApplicationController
  before_filter :find_musician, only: [:show, :edit, :destroy]
  def index
    @musicians = Musician.all 
  end

  def new
    @musician = Musician.new
  end

  def show
  end

  def edit
  end

  def create
    @musician = Musician.new(musician_params)

    if @musician.save
      redirect_to 'index'
    else
      render :new
    end
  end

  def update
    @musician = find_musician

    if @musician.update_attributes(musician_params)
      redirect_to 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @musician.destroy
    redirect_to musician_path
  end

  private
  def musician_params
    params.require(:musician).permit(:firstname, :lastname, :birthdate, :link)
  end

  def find_musician
    @musician = Musician.find(params[:id])
  end
end
