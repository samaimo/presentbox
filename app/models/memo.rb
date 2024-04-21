class Memo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :present
end
