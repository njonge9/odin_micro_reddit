class User < ApplicationRecord
    validates :email, :password, presence: true

    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
end
