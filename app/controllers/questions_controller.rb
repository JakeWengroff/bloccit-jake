class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

 

  def create
    @question = Question.new(params.require(:question).permit(:title, :body))
     if @question.save
       flash[:notice] = "Question was added."
       redirect_to @question
     else
       flash[:error] = "There was an error adding your question. Please try again."
       render :new
     end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
     @question = Question.find(params[:id])
     if @question.update_attributes(params.require(:question).permit(:title, :body))
       flash[:notice] = "Question was updated."
       redirect_to @question
     else
       flash[:error] = "There was an error updating your question. Please try again."
       render :edit
     end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_url
  end

end
