class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all
        # allPosts = posts.map{ |post| {text: post.text, id:post.id, user_id: post.id, likes: post.likes.count, comments: post.comments, post_photo: post.photo.service_url}}

        render json: posts
    end

    def show 
        post = Post.find(params[:id])

        if(post)
        render json: {text: post.text, id: post.id, user_id: post.user_id, likes: post.likes, comments: post.comments, post_photo: post.photo.service_url }
        else 
            render json: { error: 'invalid token' }, status: 401
        end
    end

    def create
        post = Post.create(user_id: params[:user_id], text: params[:text], photo: params[:photo])
        render json: post
    end

    def destroy
        post = Post.find(params[:id]).destroy

        render json: post
    end
end
