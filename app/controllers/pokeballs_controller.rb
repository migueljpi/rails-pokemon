class PokeballsController < ApplicationController
  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokeball = Pokeball.new(pokeball_params)
    @pokeball.pokemon = @pokemon
    # start 50% chance of catching the pokemon

    chance = rand(1..2)
    if chance == 1
      if @pokeball.save
        redirect_to trainer_path(@pokeball.trainer), notice: "#{@pokeball.trainer.name} caught #{@pokemon.name}!"
      else
        render "pokemons/show", status: :unprocessable_entity
      end
    else
      redirect_to trainer_path(@pokeball.trainer), notice: "#{@pokeball.trainer.name} missed #{@pokemon.name}!"

    end
    # end 50% chance of catching the pokemon
  end

  def destroy
    @trainer = Trainer.find(params[:trainer_id])
    @pokeball = Pokeball.find(params[:id])
    @pokeball.destroy
    redirect_to trainer_path(@trainer), notice: "#{@trainer.name} released #{@pokeball.pokemon.name}!"
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:trainer_id, :location, :caught_on)
  end
end
