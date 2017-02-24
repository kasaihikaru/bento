class SentencesController < ApplicationController

  def index

  end

  def edit
  end


  def create
    Sentence.create(create_params)
    redirect_to user_path(current_user.id)
  end

  private

  def create_params
    params.require(:sentence).permit(:ja, :en).merge(user_id: current_user.id)
  end


end
