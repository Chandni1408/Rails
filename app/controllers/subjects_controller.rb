class SubjectsController < ApplicationController
  def index
    @subject = Subject.sorted
  end

  def create
  @subject = Subject.new(params.require(:subject).permit(:name, :position, :visible))
 
  #@subject.save
  #render 'new'
  if @subject.save
    redirect_to subjects_path
  else
      render 'new'
  end
    
end

  def show
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(params.require(:subject).permit(:name, :position, :visible))
      redirect_to @subject
    else
    render 'edit'
    end
  end

  def new
    @subject = Subject.new

  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def delete
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to subjects_path
  end
end
