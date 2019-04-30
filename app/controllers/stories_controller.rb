class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @narrations = Narration.where(story_id: params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)

    if @story.save
      flash[:notice] = "Story created successfully"
      redirect_to stories_path
    else
      flash.now[:error] = @story.errors.full_messages.join(", ")
      render :new
    end
  end

  def story_params
    params.require(:story).permit(:name, :theme)
  end
end
