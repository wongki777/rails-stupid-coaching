QUESTION_WORK = "I am going to work"
ANSWER_WORK = "Great, see ya!"
ANSWER_QUESTION = "Silly question, get dressed and go to work!"
ANSWER_ELSE = "I don't care, get dressed and go to work!"


class PagesController < ApplicationController
    def ask
    end

    def answer
        @question = params["question"]
        @answer = stupid_coach(@question)
    end

    private

    def stupid_coach(str)
        is_question?(str) ? ANSWER_QUESTION : ((str === QUESTION_WORK) ? ANSWER_WORK : ANSWER_ELSE)
    end

    def is_question?(str)
          (str === nil) ? false : str.end_with?("?")
    end
end



# <%#
# STOP_MESSAGE = "I am going to work right now!"

# def coach_answer(your_message)
#   if your_message == STOP_MESSAGE || your_message == STOP_MESSAGE.upcase
#     ""
#   elsif your_message.end_with?("?")
#     "Silly question, get dressed and go to work!"
#   else
#     "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   answer = coach_answer(your_message)
#   if answer == ""
#     ""
#   elsif your_message.upcase == your_message
#     "I can feel your motivation! #{answer}"
#   else
#     answer
#   end
# end %>
# <%#
# ----------------------------------------------------
# interface

# require_relative "coach_answer"

# puts "Hello, I am your coach, what did you want to tell me?"

# answer = nil

# while answer != ""
#   print "> "
#   message = gets.chomp
#   answer = coach_answer_enhanced(message)
#   puts answer
# end

# puts "Great, see ya!" %>
