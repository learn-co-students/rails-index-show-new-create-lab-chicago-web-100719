class Coupon < ActiveRecord::Base

    def name
        self.coupon_code + "|" + self.store
    end
end