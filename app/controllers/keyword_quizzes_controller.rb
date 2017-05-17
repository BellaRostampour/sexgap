class KeywordQuizzesController < ApplicationController
  before_action :set_keyword_quiz, only: [:show, :edit, :update, :destroy]

  # GET /keyword_quizzes
  # GET /keyword_quizzes.json
  def index
    @keyword_quizzes = KeywordQuiz.all
  end

  # GET /keyword_quizzes/1
  # GET /keyword_quizzes/1.json
  def show
  end

  # GET /keyword_quizzes/new
  def new
    @keyword_quiz = KeywordQuiz.new
  end

  # GET /keyword_quizzes/1/edit
  def edit
  end

  # POST /keyword_quizzes
  # POST /keyword_quizzes.json
  def create
    @keyword_quiz = KeywordQuiz.new(keyword_quiz_params)

    respond_to do |format|
      if @keyword_quiz.save
        format.html { redirect_to @keyword_quiz, notice: 'Keyword quiz was successfully created.' }
        format.json { render :show, status: :created, location: @keyword_quiz }
      else
        format.html { render :new }
        format.json { render json: @keyword_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keyword_quizzes/1
  # PATCH/PUT /keyword_quizzes/1.json
  def update
    respond_to do |format|
      if @keyword_quiz.update(keyword_quiz_params)
        format.html { redirect_to @keyword_quiz, notice: 'Keyword quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @keyword_quiz }
      else
        format.html { render :edit }
        format.json { render json: @keyword_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keyword_quizzes/1
  # DELETE /keyword_quizzes/1.json
  def destroy
    @keyword_quiz.destroy
    respond_to do |format|
      format.html { redirect_to keyword_quizzes_url, notice: 'Keyword quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyword_quiz
      @keyword_quiz = KeywordQuiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keyword_quiz_params
      params.require(:keyword_quiz).permit(:keyword_id, :quiz_id)
    end
end
