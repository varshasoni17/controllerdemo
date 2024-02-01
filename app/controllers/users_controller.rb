class UsersController < ApplicationController
    def index
        # debugger
        @users=User.all
        render json: @users

    end

    def show
        # debugger
        @user=User.find(params[:id])
        render json: @user
    end
    
    def create 
        # debugger
        @user=User.new(user_params)
        render json: @user
       
    end

    def update 
        # debugger
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    private 
    def user_params
        params.require(:user).permit(:name, :email, :city)
    end
end
