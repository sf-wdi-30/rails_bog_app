class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
    render :index
  end
  def show
    @creature = Creature.find_by_id(params[:id])
    render :show
  end
  def new
    @creature = Creature.new
    render :new
  end
  def create
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature.id)
    end
  end


  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
