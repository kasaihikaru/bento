class SentencesController < ApplicationController

  def index

  end

  def edit
  end


  def create
    Sentence.create(sentence_params)
    a = word_params
    a.each do |x|
      Word.create("ja"=>x[:ja], "en"=>x[:en], "sentence_id"=>x[:sentence_id])
    end
    redirect_to user_path(current_user.id)
  end

  private
  def sentence_params
    params.require(:sentence).permit(
      :ja, :en).merge(user_id: current_user.id)
  end

  def word_params
    arrayedwords = []
    id = Sentence.last.id
    params[:sentence][:words_attributes].each do |key,value|
      if value["ja"].present? && value["en"].present?
        value[:sentence_id] = id
        arrayedwords << value
      else
        break
      end
    end
    return arrayedwords
  end
end
