class UsersController < ApplicationController



  def show
    @sentence = Sentence.new
    @sentence.words.build

    @user = User.find(params[:id])
    @sentences = @user.sentences.order("created_at DESC").page(params[:page]).per(20)
  end

  def edit
  end

end
