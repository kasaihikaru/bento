class Word < ActiveRecord::Base
  belongs_to :sentence
   # モデルを保存できなくなるのでpresence: trueは記載しない
end
