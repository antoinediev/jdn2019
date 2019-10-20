# frozen_string_literal: true

class Reservation < ApplicationRecord
  after_save :broadcast_creation

  belongs_to :table, optional: false
  has_many :reservation_menus, inverse_of: :reservation, dependent: :destroy
  has_many :menus, through: :reservation_menus

  accepts_nested_attributes_for :reservation_menus

  validates :firstname, presence: true
  validates :lastname, presence: true

  validate :full_table

  private

  def broadcast_creation
    ActionCable.server.broadcast 'reservations', reservation: self
  end

  def full_table
    errors.add(:table, :full) if !table.nil? && table.reserved_places + number > table.capacity
  end
end
