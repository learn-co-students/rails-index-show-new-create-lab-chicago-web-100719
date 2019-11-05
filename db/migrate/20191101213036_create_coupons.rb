class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :store
      t.integer :coupon_code

    end
  end
end
