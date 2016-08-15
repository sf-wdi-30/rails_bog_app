class CreaturesController < ApplicationController


  def index
    @creatures = Creature.all
    # if params[:search]
    #   @Creatures = Creature.search(params[:search]).order("created_at DESC")
    # else
    #   @Creatures = Creature.all.order('created_at DESC')
    # end
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
  def edit
    @creature = Creature.find_by_id(params[:id])
    render :edit
  end
  def update
    creature = Creature.find_by_id(params[:id])
    creature.update_attributes(creature_params)
    redirect_to creature_path(creature)
  end
  def destroy
    creature = Creature.find_by_id(params[:id])
    creature.destroy
    redirect_to creatures_path
  end


  private

  def creature_params
    params.require(:creature).permit(:name, :description, :avatar)
  end
end
