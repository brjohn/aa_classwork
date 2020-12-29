class UsersController < ApplicationController
    def index
        users = Users.all
        render :users
    end

    def create
        render json: params
    end

    def show
        render json: params
    end

    
end
