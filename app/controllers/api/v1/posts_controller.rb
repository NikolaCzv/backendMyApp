class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all
        allPosts = posts.map{ |post| {text: post.text, pic_url: post.pic_url, id:post.id, user_id: post.id, likes: post.likes.count, comments: post.comments}}

        render json: allPosts
    end

    def show 
        post = Post.find(params[:id])

        if(post)
        render json: {text: post.text, pic_url: post.pic_url, id: post.id, user_id: post.user_id, likes: post.likes, comments: post.comments }
        else 
            render json: { error: 'invalid token' }, status: 401
        end
    end
end
