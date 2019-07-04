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
        # Eventually let's revert back from where and destroy_all to find_by and destroy.
        @downvote = Downvote.where(post_id: params[:id], user_id: current_user.id)
        p @downvote
        @downvote.destroy_all
        render json: {message: "Downvote successfully destroyed."}
    end
end
