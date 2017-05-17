class KeywordQuiz < ApplicationRecord
  belongs_to :keyword
  belongs_to :quiz
end
