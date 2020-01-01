class UsersController < ApplicationController
    skip_before_action :authorized

    def index

    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end


    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: @user, jwt: @token
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        @user = User.find(params[:id]).update(user_params)
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit!
    end
    

end
