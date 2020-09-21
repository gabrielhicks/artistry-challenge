class ArtistInstrumentsController < ApplicationController
    before_action :find_artist_instrument, only: [ :show, :edit, :update, :destroy]

    def new
        @artists = Artist.all
        @instruments = Instrument.all
        @artist_instrument = ArtistInstrument.new
    end

    def show
    end

    def index
        @artist_instruments = ArtistInstrument.all
    end

    def create
        artist_instrument = ArtistInstrument.create(artist_instrument_params)

        redirect_to artist_path(artist_instrument.artist)
    end

    def edit
    end

    def update
    end

    def destroy
        @artist_instrument.destroy
        redirect_to artist_instruments_path
    end

    private

    def artist_instrument_params
        params.require(:artist_instrument).permit!
    end

    def find_artist_instrument
        @artist_instrument = ArtistInstrument.find(params[:id])
    end
end
