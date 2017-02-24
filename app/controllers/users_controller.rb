class UsersController < ApplicationController

  def show
    @sentence = Sentence.new
  end

  def edit
    
  end

  def create
    Sentence.create(create_params)
  end

  private

  def create_params
    params.require(:sentence).permit(:ja, :en).merge(user_id: current_user.id)
  end

end
