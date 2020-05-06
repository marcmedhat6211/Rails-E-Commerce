class Product < ApplicationRecord
      mount_uploaders :avatars, AvatarUploader

end
