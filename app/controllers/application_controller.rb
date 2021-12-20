class ApplicationController < ActionController::API
    before_action :gyms, only:[:index]
    before_action :gym, only:[:show]
    before_action :bye_gym, only:[:destroy]
    
    before_action :client, only:[:show]
end

private 

    def gyms
        Gym.all
    end

    def gym
        Gym.find_by(id: params[:id])
    end

    def bye_gym
        erase_gym = Gym.find(params[:id])
        erase_gym.destroy
    end

    def client
        Client.find_by(id: params[:id])
    end