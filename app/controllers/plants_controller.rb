class PlantsController < ApplicationController
    before_action :set_plant, only: [:show, :edit]
    def index
        @plants = Plant.all
    end

    def show
    end

    def new
        @plant = Plant.new
    end

    def create
        @plant = Plant.new(plant_params)
        if @plant.valid?
            @plant.save
            redirect_to plant_path(@plant)
        else
            render :new
        end
    end

    def edit
    end

    private
    def set_plant
        @plant = Plant.find(params[:id])
    end

    def plant_params
        params.require(:plant).permit(:name, :species, :watering_gap, :optimal_humidity)
    end
end