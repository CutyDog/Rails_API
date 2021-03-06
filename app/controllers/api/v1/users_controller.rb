module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]

      def show
        render json: @user
      end
      
      def index
        @users = User.all
        render json: { status: 'SUCCESS',
             message: 'Loaded users', data: @users }
      end
      
      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end  
      end 
      
      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end 
      
      def destroy
        @user.destroy
      end  


      private

      def set_user
        @user = User.find(params[:id])
      end  

      def user_params
        params.require(:user).permit(:name)
      end  
    end
  end
end