class Api::PostsController < ApplicationController
    def index      
        @posts = Post.all
        render 'index.json.jbuilder'
    end

    def create
        if params[:image_url]
            response = Cloudinary::Uploader.upload(params[:image_url])
            cloudinary_url = response["secure_url"]
        else
            cloudinary_url = ""
        end
        @post = Post.new(
            title: params[:title],
            text: params[:text],
            user_id: current_user.id,
            image_url: cloudinary_url
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
        if params[:image_url]
            response = Cloudinary::Uploader.upload(params[:image_url])
            cloudinary_url = response["secure_url"]
        else
            cloudinary_url = @post.image_url
        end
            @post.title = params[:title] || @post.title
            @post.text = params[:text] || @post.text
            @post.image_url = cloudinary_url
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
