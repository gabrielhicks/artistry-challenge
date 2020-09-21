class InstrumentsController < ApplicationController
    before_action :find_instrument, only: [ :show, :edit, :update, :destroy]

    def new
        @instrument = Instrument.new
    end

    def show
    end

    def index
        @instruments = Instrument.all
    end

    def create
        instrument = Instrument.create(instrument_params)
        redirect_to instrument_path(instrument)
    end

    def edit
    end

    def update
    end

    def destroy
        @instrument.destroy
        redirect_to instruments_path
    end

    private

    def instrument_params
        params.require(:instrument).permit!
    end

    def find_instrument
        @instrument = Instrument.find(params[:id])
    end
end
