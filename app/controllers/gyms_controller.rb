class GymsController < ApplicationController

    
    def index
        if gyms
        render json:gyms , status: :ok
        else 
            render json: {error: "Gym not found"}, status: :not_found
        end
    end


    def show
        if gym
        render json:gym , status: :ok
        else 
            render json: {error: "Gym not found"}, status: :not_found
        end
    end

    
    def destroy
        if bye_gym
        render json:bye_gym , status: :not_found
        else 
            render json: {error: "Gym not found"}, status: :not_found
        end
    end




end
