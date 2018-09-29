class OrderItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :cart, optional: true

  belongs_to :product
end


# cart and order are optional because you don't always need it
