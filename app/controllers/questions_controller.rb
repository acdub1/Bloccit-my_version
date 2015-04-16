class QuestionsController < ApplicationController
  def index
    @question = Question.all
  end

  def show
    @question = Question.find(params[:id]) 
  end

  def new
    @question = Question.new
  end
  
    def create
      @question = Question.new(params.require(:question).permit(:title, :body, :resolved))
      if @question.save
        flash[:notice] = "Question was saved."
        redirect_to @question
 
      else
        flash[:error] = "There was an error saving question. Please try again."
        render :new
      end
  end
#       def check_box(object_name, method, options = {}, checked_value = "1", unchecked_value = "0")
 #        Tags::CheckBox.new(object_name, method, self, checked_value, unchecked_value, options).render
#       end

  def edit
    @question = Question.find(params[:id])
  end
       def update
      @question = Question.find(params[:id])
      if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
        flash[:notice] = "Question was updated."
        redirect_to @question
      else
        flash[:error] = "There was an error saving the question. Please try again."
        render :edit
      end
  end
  def delete
    @question = Question.find(params[:id])  
    if @question.delete
      flash[:notice] = "Question was deleted."        
      redirect_to @question
    else
      flash[:error] = "There werror as anor  thesaving question. Please try again."      
      render :new                                      
    end                                                                                       end           

end
