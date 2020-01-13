class Api::V1::FollowsController < ApplicationController
    def index
        follow = Follow.all

        render json: follow
    end

    def show
        follow = Follow.find(params[:id])

        render json: follow
    end

    def create
        follow = Follow.create(follower_id: params[:follower_id], followee_id: params[:followee_id])

        render json: follow
    end

    def update
        follow = Follow.find(params[:id])
        follow.update(params.require(:follow).permit(:follower_id, :followee_id))

        render json: follow
    end

    def destroy_follow
        follow = Follow.find_by(followee_id: params[:followee_id], follower_id: params[:follower_id]).destroy
    
        puts '============='
        render json: follow
     end

end
