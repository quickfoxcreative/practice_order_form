class OrderProduct < ApplicationRecord
    has_one :product
    belongs_to :order    
end


