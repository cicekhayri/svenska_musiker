class MusiciansController < ApplicationController

  def index
    @musicians = Musician.all 
  end

  def new
  end

  def create
    @musician = Musician.new(musician_params)

    @musician.save
    redirect_to 'index'
  end

  private

  def musician_params
    params.require(:musician).permit(:firstname, :lastname, :birthdate, :link)
  end
end
