class User < ApplicationRecord
   mount_uploader :image, UserImageUploader
   validates :e_mail,{presence: true, on: :create}
   validates :password,{presence: true, on: :create}
end
