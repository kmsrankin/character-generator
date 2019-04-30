class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @narrations = Narration.where(story_id: params[:id])
  end
end
