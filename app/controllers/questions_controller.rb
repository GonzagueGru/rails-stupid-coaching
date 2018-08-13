class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    if params[:ask].include?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:ask] == "I am going to work right now!"
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# def coach_answer(your_message)

# end

# def coach_answer_enhanced(your_message)
#   if your_message == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   elsif your_message.upcase == your_message
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   else
#     return "I don't care, get dressed and go to work!"
#   end

#  TODO: return coach answer to your_message, with additional custom rules of yours
# end
