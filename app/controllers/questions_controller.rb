require 'pry'

class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render :index
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @question = Question.new
    render :new
  end

  # def create
  #   @album = Album.find(params[:album_id])
  #   @song = @album.songs.new(song_params)
  #   if @song.save
  #     redirect_to album_path(@album)
  #   else
  #     render :new
  #   end
  # end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new(question_params)
    if @question.save
      redirect_to surveys_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    @survey = Survey.find(params[:survey_id])
    render :edit
  end

  def show
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:id])
    render :show
  end

  def update
  @question= Question.find(params[:id])
  if @question.update(question_params)
    redirect_to surveys_path
  else
    render :edit
  end
end

def destroy
  @question = Question.find(params[:id])
  @surveys = Survey.all()
  @question.destroy
  redirect_to surveys_path
end


  private
  def question_params
    params.require(:question).permit(:question_title, :question_text, :user_response)
  end

end
