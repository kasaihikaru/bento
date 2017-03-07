class SentencesController < ApplicationController

  def index
    @sentences = Sentence.includes(:user).order("created_at DESC").page(params[:page]).per(20)
    @num = Sentence.count
    if user_signed_in?
      @myfolds = current_user.folds
    end
  end

  def edit
    @sentence = Sentence.new
    @sentence.words.build

    @originalSen = Sentence.find(params[:id])
    @user = @originalSen.user
  end

  def create
    newsenten = Sentence.create(sentence_params)
    a = word_params
    a.each do |x|
      Word.create("ja"=>x[:ja], "en"=>x[:en], "sentence_id"=>x[:sentence_id])
    end
    Like.create(like_params)
    FoldSentence.create(fold_sentence_params)
    redirect_to fold_path(params[:sentence][:fold_sentence][:fold_id]) and return
  end


  private
  def sentence_params
    params.require(:sentence).permit(:ja, :en).merge(user_id: current_user.id)
  end

  def word_params
    arrayedwords = []
    id = Sentence.last.id
    params[:sentence][:words_attributes].each do |key,value|
      if value["ja"].present? && value["en"].present?
        value[:sentence_id] = id
        arrayedwords << value
      else
        next
      end
    end
    return arrayedwords
  end

  def like_params
    id = Sentence.last.id
    params.require(:sentence)[:like].permit(:user_id).merge(sentence_id: id)
  end

  def fold_sentence_params
    id = Sentence.last.id
    params.require(:sentence)[:fold_sentence].permit(:fold_id).merge(sentence_id: id)
  end
end
