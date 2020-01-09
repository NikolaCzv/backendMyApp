class Api::V1::FollowsController < ApplicationController
    def index
        follow = Follow.all

        render json: follow
    end
end
