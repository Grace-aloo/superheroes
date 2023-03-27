class PowersController < ApplicationController\
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def Index 
        powers = Power.all 
        response json: powers
    end

    def show 
        power = find_power
        render json: power
    end

    private 
    def render_not_found_response 
        render json: {error: "Power not found"}, status: :not_found
    end

    def find_power
        Power.find(params[:id])
    end
end
