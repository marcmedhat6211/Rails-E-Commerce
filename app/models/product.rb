class Product < ApplicationRecord

    has_many :brands
    has_many :categories
    mount_uploader :avatar, AvatarUploader

end
