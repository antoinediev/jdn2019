# frozen_string_literal: true

class ReservationMenu < ApplicationRecord
  belongs_to :menu
  belongs_to :reservation, inverse_of: :reservation_menus
end
