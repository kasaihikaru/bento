class LikesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @likes = @user.likes
    sentences = []
    @likes.each do |like|
      sentences << like.sentence
    end

    @sentences = Kaminari.paginate_array(sentences).page(params[:page]).per(20)
  end

  def create
    @like = Like.create(user_id: current_user.id, sentence_id: params[:sentence_id])
    @sentence = Sentence.includes(:user).find(params[:sentence_id])
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
     @sentence = Sentence.includes(:user).find(params[:sentence_id])
  end

end
