class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    if params[:query] && params[:query] != ""
      @pokemons = Pokemon.search_by_name(params[:query])
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @pokeball = Pokeball.new(caught_on: DateTime.now)
  end

  def random
    @pokemon = Pokemon.order("RANDOM()").first
    @pokeball = Pokeball.new(caught_on: DateTime.now)
    render :show
  end
end
