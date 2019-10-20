# frozen_string_literal: true

ActiveAdmin.register Table do
  permit_params :name, :capacity
end
