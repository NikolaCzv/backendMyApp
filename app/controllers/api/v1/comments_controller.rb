class Api::V1::CommentsController < ApplicationController
    def index
        comments = Comment.all

        render json: comments
    end

    def show
        comment = Comment.find(params[:id])

        render json: comment
    end

    def create
        comment = Comment.create(user_id: params[:user_id], post_id: params[:post_id], content: params[:content])
        
        render json: comment
    end
end
