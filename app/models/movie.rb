class Movie < ApplicationRecord
  has_many :lists, through: :bookmark
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, allow_blank: false
end
