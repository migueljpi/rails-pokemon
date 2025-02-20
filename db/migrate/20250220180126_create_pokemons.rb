class CreatePokemons < ActiveRecord::Migration[7.2]
  def change
    create_table :pokemons do |t|
      t.string :element_type

      t.timestamps
    end
  end
end
