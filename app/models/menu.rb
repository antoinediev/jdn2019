# frozen_string_literal: true

class Menu < ApplicationRecord
  has_many :reservation_menus

  def reserved_menus
    reservation_menus.reduce(0) do |a, b|
      a + (b&.count).to_i
    end
  end
end
