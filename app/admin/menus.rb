# frozen_string_literal: true

ActiveAdmin.register Menu do
  permit_params :name, :description, :icon
end
