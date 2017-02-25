class Sentence < ActiveRecord::Base
  has_many :words
  accepts_nested_attributes_for :words
  belongs_to :users
end
