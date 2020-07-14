class Book < ApplicationRecord
  # アップローダー実装
  mount_uploader :image, ImageUploader
end
