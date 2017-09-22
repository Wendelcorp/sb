json.extract! coupon, :id, :name, :amount, :expiry, :one_use, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
