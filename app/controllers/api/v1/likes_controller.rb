class Api::V1::LikesController < ApplicationController
    def index
        likes = Like.all

        render json: likes
    end

    def show
        like = Like.find(params[:id])

        render json: like
    end

    def create
        like = Like.create(post_id: params[:post_id], user_id: params[:user_id])

        render json: like
    end

end
