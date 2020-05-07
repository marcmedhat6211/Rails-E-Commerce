class Product < ApplicationRecord

    has_many :brands
    has_many :categories
    mount_uploaders :avatars, AvatarUploader

end
