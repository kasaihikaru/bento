class SentencesController < ApplicationController

  def index

  end

  def edit
  end


  def create
    Sentence.create(sentence_params)
    # if Sentence.create
    # else
    # end
    redirect_to user_path(current_user.id)
  end

  private
  def sentence_params
    hen = params.require(:sentence).permit(
        :ja, :en,
        words_attributes: [:id, :ja, :en]
      ).merge(user_id: current_user.id)

    0.has_value?(nil)
      if true

      else
      end
  end
end
