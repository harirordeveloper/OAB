class Article < ActiveRecord::Base
  attr_accessible :createdat, :description, :title, :users_id

belongs_to :user
end
