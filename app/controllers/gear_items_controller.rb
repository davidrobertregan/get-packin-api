class GearItemsController < ApplicationController

    def index 
        render json: current_user.gear_items.all
    end

    def show
        item = current_user.gear_items.find_by(id: params[:id])
        if item
            render json: item
        else
            render json: { error: "Gear not found"}, status: :not_found
        end
    end

    def create

    end

    def destroy
        item = current_user.gear_items.find_by(id: params[:id])
        if item
            item.destroy
            head :no_content
        else
            render json: { error: "Gear not found"}, status: :not_found
        end
    end
end
