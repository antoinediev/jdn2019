# frozen_string_literal: true

class AddIconToMenu < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :icon, :string
  end
end
