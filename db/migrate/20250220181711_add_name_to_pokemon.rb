class AddNameToPokemon < ActiveRecord::Migration[7.2]
  def change
    add_column :pokemons, :name, :string
  end
end
