class SentencesController < ApplicationController

  def index
    @sentences = Sentence.includes(:user).order("created_at DESC").page(params[:page]).per(20)
    @num = Sentence.count
  end

  def edit
    @sentence = Sentence.new
    @sentence.words.build

    @originalSen = Sentence.find(params[:id])
    @user = @originalSen.user
  end


  def create
    Sentence.create(sentence_params)
    a = word_params
    a.each do |x|
      Word.create("ja"=>x[:ja], "en"=>x[:en], "sentence_id"=>x[:sentence_id])
    end
    redirect_to user_path(current_user.id) and return
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
end
