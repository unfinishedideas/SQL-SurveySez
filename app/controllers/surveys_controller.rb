class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
    render :index
  end

  def new
    @survey = Survey.new
    render :new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      flash[:notice] = "Survey created!"
      redirect_to surveys_path
    else
      flash[:alert] = "Survey NOT created! Chungus"
      render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id])
    # if Question.find(params[:survey_id])
      # @question = Question.find(params[:survey_id])
      # render :edit
    # end
    render :edit
  end

  def show
    @survey = Survey.find(params[:id])
    render :show
  end

  def update
  @survey= Survey.find(params[:id])
  if @survey.update(survey_params)
    redirect_to surveys_path
  else
    render :edit
  end
end

def destroy
  @survey = Survey.find(params[:id])
  @survey.destroy
  redirect_to surveys_path
end


  private
  def survey_params
    params.require(:survey).permit(:name)
  end

end
