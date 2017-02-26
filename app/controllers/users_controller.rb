class UsersController < ApplicationController



  def show
    @sentence = Sentence.new
    @sentence.words.build

    @sentences = Sentence.order("created_at DESC").limit(20)
  end

  def edit
  end

end
