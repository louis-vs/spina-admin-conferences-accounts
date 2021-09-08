# frozen_string_literal: true

Spina::Admin::Conferences::Accounts::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    namespace :conferences do
      namespace :accounts do
        resources :public_users, except: %i[show new]
      end
    end
  end
end
