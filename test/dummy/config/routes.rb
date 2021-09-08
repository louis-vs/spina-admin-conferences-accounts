# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :public_users, class_name: 'Spina::Admin::Conferences::Accounts::PublicUser'
  mount Spina::Engine => '/'
end
