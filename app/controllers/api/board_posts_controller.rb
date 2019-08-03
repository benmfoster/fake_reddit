class Api::BoardPostsController < ApplicationController
    def index
        @board_posts = BoardPost.all
        render 'index.json.jbuilder'
    end

    def create
        @board_post = BoardPost.new(
            user_id: params[:user_id],
            text: params[:text]
        )
        if @board_post.save
            render 'show.json.jbuilder'
        else
            render json: {errors: @board_post.errors.full_messages}, status: :unprocessable_entity
        end	
    end

    def update
        @board_post = BoardPost.find(params[:id])
        @board_post.text = params[:text] || @board_post.text
        if @board_post.save
            render json: {message: "Post updated successfully."}
        else
            render json: {errors: @board_post.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        @board_post = BoardPost.find(params[:id])
        @board_post.destroy
        render json: {message: "Comment successfully destroyed."}
    end
end
