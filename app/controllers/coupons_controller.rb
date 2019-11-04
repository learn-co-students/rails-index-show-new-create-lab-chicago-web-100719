class CouponsController < ApplicationController

    def index
      @coupons = Coupon.all
    end

    def new
      @coupon = Coupon.new
    end

    def create
      @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
      redirect_to coupon_path(@coupon)
    end

    def show
      @coupon = Coupon.find(params[:id])
    end

    def edit
      @coupon = Coupon.find(params[:id])
    end

    def update
      @coupon = Coupon.find(params[:id])
      @coupon.update(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
      redirect_to coupon_path(@coupon)
    end

    def destroy
      @coupon = Coupon.find(params[:id])
      @coupon.delete
      redirect_to coupons_path
    end
      

end