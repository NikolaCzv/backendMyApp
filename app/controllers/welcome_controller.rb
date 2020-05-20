class WelcomeController < ApplicationController
    def index
        render json: { name: "Nikola" }
    end
end