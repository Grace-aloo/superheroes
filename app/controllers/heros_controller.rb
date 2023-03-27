class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        heroes = Hero.all 
        render json: heroes
    end

    def show 
        hero = find_hero
        render json: hero, include_powers: true
    end

    private 
    def render_not_found_response 
        render json: {error: "Hero not found"}, status: :not_found
    end

    def find_hero
        Hero.find(params[:id])
    end
end
