class HomeController < ApplicationController
  def index
    @quizzers = Quizzer.all
  end
end
