class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)

    if @instrument.save
      redirect_to instruments_path
    else
      render :new
    end
  end

  private
  def instrument_params
    params.require(:instrument).permit(:instrument_name)
  end
end
