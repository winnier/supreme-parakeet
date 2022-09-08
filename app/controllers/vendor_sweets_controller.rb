class VendorSweetsController < ApplicationController

    def create
        vendor_sweet = VendorSweet.new(price: params[:price], vendor_id: params[:vendor_id], sweet_id: params[:sweet_id])
        if vendor_sweet.save
            render json: vendor_sweet, status: 201
        else
            render json: {errors: vendor_sweet.errors.full_messages}, status: 422
        end
    end

    def destroy
        vendor_sweet = VendorSweet.find_by(id: params[:id])
        if vendor_sweet
            render json: {}
        else
            render json: {error: "VendorSweet not found"}, status: 404
        end


    end
end
