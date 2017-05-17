class Quiz < ApplicationRecord
  has_many :keyword_quizzes
  has_many :keywords, through: :keyword_quizzes
end
