class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(username: params[:username], password: params[:password])
        session[:user_id] = user.id

        render json: user
    end

    

    private

    def user_params
        params.permit(:username, :password)
    end 

end
