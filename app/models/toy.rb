class Toy < ActiveRecord::Base
  validates :sku, :presence => true
  validates :description, :presence => true
end
