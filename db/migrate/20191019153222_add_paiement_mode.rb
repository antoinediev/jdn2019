class AddPaiementMode < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :paiementMode, :text
  end
end
