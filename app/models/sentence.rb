class Sentence < ActiveRecord::Base
  has_many :words
  accepts_nested_attributes_for :words
  belongs_to :user

  has_many :likes, dependent: :destroy
  accepts_nested_attributes_for :likes

  validates :ja, presence: true
  validates :en, presence: true

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end