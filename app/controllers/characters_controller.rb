class CharactersController < ApplicationController

  before_action :get_story

  def new
    @character = @story.characters.new
  end

  def create
    @character = @story.characters.new(allowed_params)
    if @character.save
      flash[:notice] = "Created character!"
      if params[:commit] == 'I have another character'
        redirect_to new_story_character_path
      else
        redirect_to story_edit_body_path(@story)
      end
    else
      flash[:alert] = "Error creating character"
      render :new
    end
  end

protected

  def get_story
    @story = Story.find(params[:story_id])
  end

  def allowed_params
    params.require(:character).permit(
      :name, :gender, :hobbies, :clothes, :traits,
      :fun_facts, :eye_color, :hair, :location, :special_abilities)
  end

end
