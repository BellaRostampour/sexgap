class CreateKeywordQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :keyword_quizzes do |t|
      t.references :keyword, foreign_key: true
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
