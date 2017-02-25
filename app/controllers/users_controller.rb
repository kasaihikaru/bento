class UsersController < ApplicationController

validates :nickname, presence: true

  def show
    @sentence = Sentence.new
    @sentence.words.build
  end

  def edit
  end

end
