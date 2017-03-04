class UsersController < ApplicationController



  def show
    @sentence = Sentence.new
    @sentence.words.build

    @user = User.find(params[:id])
    usersentences = @user.sentences.order("created_at DESC")
    sentences = []
    usersentences.each do |sentence|
      if sentence.likes.find_by(user_id: @user.id).present?
        sentences << sentence
      end
    end
    @sentences = Kaminari.paginate_array(sentences).page(params[:page]).per(20)
  end

  def edit
  end

end
