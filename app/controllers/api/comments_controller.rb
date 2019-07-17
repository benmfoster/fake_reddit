class Api::CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render 'index.json.jbuilder'
    end
    
    def create
        @comment = Comment.new(
            user_id: current_user.id,
            post_id: params[:post_id],
            text: params[:text],
            tagged_user_id: params[:tagged_user_id]
        )
        if @comment.save
            render 'show.json.jbuilder'
        else
            render json: {errors: @comment.errors.full_messages}, status: :unprocessable_entity
        end	
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.text = params[:text] || @comment.text
        @comment.tagged_user_id = params[:tagged_user_id] || @comment.tagged_user_id
        if @comment.save
            render json: {message: "Comment updated successfully."}
        else
            render json: {errors: @comment.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: {message: "Comment successfully destroyed."}
    end
end
