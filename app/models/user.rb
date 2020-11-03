class User < ApplicationRecord
    belongs_to :tweets
    has_many :likes
    has_many :like_tweets, through: :likes, source: :tweet
    
    validates :uid, presence: true, uniqueness: :true
    validates :pass, presence: true
end
