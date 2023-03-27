class PowersController < ApplicationController\
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def Index 
        powers = Power.all 
        response json: powers
    end

    def show 
        power = find_power
        render json: power
    end

    def update 
        power = find_power
        power.update!(power_params)
        render json: power, status: :accepted
    end

    private 
    def render_not_found_response 
        render json: {error: "Power not found"}, status: :not_found
    end

    def find_power
        Power.find(params[:id])
    end

    def power_params 
        params.permit(:description)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
