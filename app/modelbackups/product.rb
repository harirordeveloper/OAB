class Product < ActiveRecord::Base
  attr_accessible :name, :price, :release_date
end
