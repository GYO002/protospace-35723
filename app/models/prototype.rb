class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :concept, presence: true #バリデーション→一定の制約を掛けること。空のデータは保存できないなど
  validates :image, presence: true
  
end
