module Api
  module V1
    class UsersController < ApplicationController
      def show
      end
      
      def index
        @users = User.all
        render json: { status: 'SUCCESS',
             message: 'Loaded users', data: @users }
      end
      
      def new
      end
      
      def create
      end 
      
      def edit
      end
      
      def update
      end 
      
      def destroy
      end  
    end
  end
end