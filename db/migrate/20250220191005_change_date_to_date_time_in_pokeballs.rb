class ChangeDateToDateTimeInPokeballs < ActiveRecord::Migration[7.2]
  def change
    change_column :pokeballs, :caught_on, :datetime
  end
end
