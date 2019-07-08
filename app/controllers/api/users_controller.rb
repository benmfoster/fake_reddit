class Api::UsersController < ApplicationController
  
    def create
      user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password],
        password_confirmation: params[:password_confirmation],
        profile_picture_url: params[:profile_picture_url]
      )
          if user.save
            render json: {message: 'User created successfully'}, status: :created
          else
            render json: {errors: user.errors.full_messages}, status: :bad_request
          end
    end

    def show
          user_id = params[:id]
          @user = User.find_by(id: user_id)
          render 'show.json.jbuilder'
    end

    def update
        @user = User.find(params[:id])
        @user.name = params[:name] || @user.name
        @user.password = params[:password] || @user.password
        @user.profile_picture_url = params[:profile_picture_url] || @user.profile_picture_url
        if @user.save
            render 'show.json.jbuilder'
        else
            render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
		end	        
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "User successfully destroyed."}
    end
end
