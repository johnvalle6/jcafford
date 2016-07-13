class Post < ActiveRecord::Base
	validates :content, length: { maximum: 250 }
    belongs_to :user
end
