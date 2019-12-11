class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites.to_json
    end

    def show
        render json: Favorite.find(params['id']).to_json
    end

    def create
        new_favorite = Favorite.create(favorites_params)
        render json: new_favorite
    end

    def destroy
        render json: Favorite.find(params['id']).destroy
    end

    private

    def favorites_params
        params.require(:favorite).permit(:user_id, :game_id)
    end


end
