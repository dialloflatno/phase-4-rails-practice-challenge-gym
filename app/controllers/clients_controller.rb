class ClientsController < ApplicationController

    def show
        render json: client, status: :ok
    end
end
