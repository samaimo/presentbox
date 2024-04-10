class Box < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :presents, dependent: :destroy

  # バリデーション
  # 入力必須
  validates :box_name, presence: true
  validates :image, presence: { message: 'を選択してください' }
end
