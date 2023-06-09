class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :set_questions, only: [:show]

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_questions
    @questions = Question.all
  end
end
