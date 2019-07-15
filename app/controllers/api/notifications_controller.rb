class Api::NotificationsController < ApplicationController
    def create
        @notification = Notification.new(
            user_id: params[:user_id],
            post_id: params[:post_id],
            commenter_id: current_user.id
        )
        if @notification.save
            render json: {message: "Notification successful."}
        else
            render json: {errors: @comment.errors.full_messages}, status: :unprocessable_entity
        end	
    end

    def destroy
        @notification = Notification.find(params[:id])
        @notification.destroy
        render json: {message: "Notification successfully destroyed."}
    end  
end
