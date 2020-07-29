class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def create
        def create
        
            post = Post.find_by(id: params[:post_id])
    
            user = User.find_by(id: session[:user_id])
            
            comment = Comment.create(
                
                body: params[:body],
                user_id: user.id,
                post_id: post.id
        )
    
            render json: post
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end

    private

    def comment_params
        params.permit(:body, :user_id, :post_id)
    end 
    

end
