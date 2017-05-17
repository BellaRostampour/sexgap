class Keyword < ApplicationRecord
  has_many :keyword_quizzes
  has_many :quizzes, through: :keyword_quizzes
end
