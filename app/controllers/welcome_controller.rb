# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @tables = Table.all
    @reservation = Reservation.new
    @menus = Menu.all.order(:id)
  end
end
