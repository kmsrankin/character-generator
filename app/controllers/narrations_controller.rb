class NarrationsController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @user = current_user
    @narration = Narration.new(narration_params)
    @narration.story = @story
    @narration.user = @user
    if @narration.save
      flash[:notice] = "Narration created successfully"
      redirect_to story_path(@story.id)
    else
      flash[:error] = @narration.errors.full_messages.join(", ")
      redirect_to story_path(@story.id)
    end
  end

  private
  def narration_params
    params.require(:narration).permit(:body)
  end
end
