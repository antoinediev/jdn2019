# frozen_string_literal: true

Rails.application.routes.draw do
  resources :menus
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  mount ActionCable.server => '/cable'

  root 'welcome#index'

  get 'welcome/index'

  resources :reservations, only: %i[create show]
end
