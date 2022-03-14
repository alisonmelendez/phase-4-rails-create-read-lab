class PlantsController < ApplicationController
    #index 
    # GET /birds
    def index 
        plants = Plant.all
        render json: plants
    end

     #show 
    # GET /birds/:id
    def show 
        #review this syntax 
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end 

    #create
    # POST /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private def plant_params
        params.permit(:name, :image, :price)
    end 

end
