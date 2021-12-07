class QuestionsController < ApplicationController
  def ask
    @answer = params[:ask]
  end

  def answer
    @answer = ""
    # je récupère l'input de la view en appelant le params
    if params[:ask].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
      return @answer
    elsif params[:ask] == "I am going to work"
      @answer = "Great"
      return @answer
    else
      @answer = "I don't care, get dressed and go to work!"
      return @answer
    end
  end
end
