# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone_number
      t.integer :number
      t.belongs_to :table, foreign_key: true

      t.timestamps
    end
  end
end
