class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :boxes
  has_many :presents

  # パスワードは英数字混合の入力が必須
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

  validates :nickname, presence: true,
                       format: { with: /\A[ぁ-んァ-ン一-龠々a-zA-Z]+\z/, message: 'は全角かな・カナ・漢字または半角英字で入力してください' }
end
