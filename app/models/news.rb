class News < ActiveRecord::Base
  mount_uploader :img, ImageUploader
end
