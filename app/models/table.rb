# frozen_string_literal: true

class Table < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :capacity, presence: true

  def reserved_places
    reservations.sum(:number)
  end
end
