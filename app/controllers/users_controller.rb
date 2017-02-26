class UsersController < ApplicationController



  def show
    @sentence = Sentence.new
    @sentence.words.build
  end

  def edit
  end

end
