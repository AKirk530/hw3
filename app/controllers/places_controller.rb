class PlacesController < ApplicationController
    def index
        @places = Place.all
    end

    def show
        @places = Place.find(params["name"])
    end

    def new
        @places = Place.new
    end

    def create
        @place = Place.new(params["name"])
        @place.save
        redirect_to "/places"
    end
end
