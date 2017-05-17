require 'test_helper'

class KeywordQuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keyword_quiz = keyword_quizzes(:one)
  end

  test "should get index" do
    get keyword_quizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_keyword_quiz_url
    assert_response :success
  end

  test "should create keyword_quiz" do
    assert_difference('KeywordQuiz.count') do
      post keyword_quizzes_url, params: { keyword_quiz: { keyword_id: @keyword_quiz.keyword_id, quiz_id: @keyword_quiz.quiz_id } }
    end

    assert_redirected_to keyword_quiz_url(KeywordQuiz.last)
  end

  test "should show keyword_quiz" do
    get keyword_quiz_url(@keyword_quiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_keyword_quiz_url(@keyword_quiz)
    assert_response :success
  end

  test "should update keyword_quiz" do
    patch keyword_quiz_url(@keyword_quiz), params: { keyword_quiz: { keyword_id: @keyword_quiz.keyword_id, quiz_id: @keyword_quiz.quiz_id } }
    assert_redirected_to keyword_quiz_url(@keyword_quiz)
  end

  test "should destroy keyword_quiz" do
    assert_difference('KeywordQuiz.count', -1) do
      delete keyword_quiz_url(@keyword_quiz)
    end

    assert_redirected_to keyword_quizzes_url
  end
end
