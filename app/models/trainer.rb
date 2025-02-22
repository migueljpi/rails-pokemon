class Trainer < ApplicationRecord
  has_many :pokeballs
  has_one_attached :photo
  has_many :pokemons, through: :pokeballs
  validates :name, presence: true
end
