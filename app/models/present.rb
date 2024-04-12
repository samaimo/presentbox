class Present < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :box

  # バリデーション
  # 入力必須
  validates :title, :present_name, presence: true
  validates :image, presence: { message: 'を選択してください' }
end
