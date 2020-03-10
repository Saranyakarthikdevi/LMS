#---
# Excerpted from "Agile Web Development with Rails 5",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails5 for more book information.
#---
class Order < ApplicationRecord
	has_many :line_items, dependent: :destroy
  # ...
  enum plan_type: {
    "Normal"          => 0, 
    "Permium"    => 1, 
    "Diamond" => 2
  }
  
  # ...
  validates :name, :department, :email, presence: true
  validates :plan_type, inclusion: plan_types.keys
  def add_line_items_from_cart(cart)
cart.line_items.each do |item|
item.cart_id = nil
line_items << item
end
end
end
