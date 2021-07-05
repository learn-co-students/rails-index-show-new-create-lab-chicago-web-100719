class CouponsController < ApplicationController
    def new
        @coupon = Coupon.new
    end
    
    def create
        @coupon = Coupon.create(coupon_params)
        redirect_to @coupon
    end
    
    def show
        @coupon = Coupon.find(params[:id])
    end
    
    def index
        @coupons = Coupon.all
    end
    
    
    
    
    
    private
    
    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
    
    end