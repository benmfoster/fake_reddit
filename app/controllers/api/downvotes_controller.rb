class Api::DownvotesController < ApplicationController  
    def create
        @downvote = Downvote.new(
            user_id: current_user.id,
            post_id: params[:post_id]
        )
        if @downvote.save
            render 'show.json.jbuilder'
        else
            render json: {errors: @downvote.errors.full_messages}, status: :unprocessable_entity
        end	
    end

    def destroy
        @downvote = Downvote.find(params[:id])
        @downvote.destroy
        render json: {message: "Downvote successfully destroyed."}
    end
end
