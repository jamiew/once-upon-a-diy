class StoriesController < ApplicationController

  def index
    @stories = Story.all.limit(10).offset(0)
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(allowed_params)
    if @story.save
      flash[:notice] = "Story created!"
      redirect_to story_path(@story)
    else
      flash[:error] = "Failure to save story :("
      render :new
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
  end

protected

  def allowed_params
    params.require(:story).permit(:author, :title, :plot)
  end

end
