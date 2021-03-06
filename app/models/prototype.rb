class Prototype < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  with_options presence: true do |v|
    v.validates :text, :catch_copy, :concept
  end
end
