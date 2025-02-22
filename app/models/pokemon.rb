class Pokemon < ApplicationRecord
  has_many :pokeballs
  has_one_attached :photo
  has_many :trainers, through: :pokeballs

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: :name,
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
