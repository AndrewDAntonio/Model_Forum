class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def create
        
        board = Board.find_by(id: params[:board_id])

        user = User.find_by(id: session[:user_id])
        
        post = Post.create(
            
            title: params[:title],
            body: params[:body],
            user_id: user.id,
            board_id: board.id
    )

        render json: post
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
    end

    private

    def post_params
        params.permit(:title, :body, :user_id, :board_id)
    end 

end
