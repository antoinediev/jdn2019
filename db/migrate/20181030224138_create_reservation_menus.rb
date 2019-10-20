# frozen_string_literal: true

class CreateReservationMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :reservation_menus do |t|
      t.belongs_to :menu, foreign_key: true
      t.belongs_to :reservation, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
