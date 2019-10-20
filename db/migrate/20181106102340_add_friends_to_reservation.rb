# frozen_string_literal: true

class AddFriendsToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :friends, :text
  end
end
