class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = ""

    if @ask == "Hello"
      @answer = "Hello!"
    elsif @ask == "What time is it?"
      @answer = "It is #{Time.now.utc}"
    else
      @answer = "Go back and ask a new question"
    end
  end

end
