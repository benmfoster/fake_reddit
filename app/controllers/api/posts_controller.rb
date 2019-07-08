class Api::PostsController < ApplicationController
    def index      
        @posts = Post.all
        render 'index.json.jbuilder'
    end

    def create
        @post = Post.new(
            title: params[:title],
            text: params[:text],
            user_id: current_user.id,
            image_url: params[:image_url]
        )
        if @post.save
            render 'show.json.jbuilder'
        else
            render json: {errors: @post.errors.full_messages}, status: :unprocessable_entity
		end	
    end

    def show
        post_id = params[:id]
        @post = Post.find_by(id: post_id)
        render 'show.json.jbuilder'
    end

    def update
        @post = Post.find(params[:id])
        @post.title = params[:title] || @post.title
        @post.text = params[:text] || @post.text
        @post.image_url = params[:image_url] || @post.image_url
        @post.user_id = current_user.id
        if @post.save
            render 'show.json.jbuilder'
        else
            render json: {errors: @post.errors.full_messages}, status: :unprocessable_entity
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: {message: "Post successfully destroyed."}
    end
end
