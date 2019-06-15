class Api::CommentsController < ApplicationController
    def create
        @comment = Comment.new(
            user_id: current_user.id
            post_id: params[:post_id],
            text: params[:text]
        )
        if @comment.save
            render json: {message: "Comment posted successfully."}
        else
            render json: {errors: @comment.errors.full_messages}, status: :unprocessable_entity
        end	
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.text = params[:text] || @comment.text
        if @comment.save
            render jason: {message: "Comment updated successfully."}
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
