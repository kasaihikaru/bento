class Word < ActiveRecord::Base
  belongs_to :sentence, foreign_key: [:sentence_id]
   # モデルを保存できなくなるのでpresence: trueは記載しない
end
