class Micropost < ActiveRecord::Base
    attr_accessible :content, :user_id
    belongs_to :user

    validates :content , length: { maximum: 100}
    validates :user , presence: { message: 'not found'  }
end
