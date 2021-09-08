# frozen_string_literal: true

Rails.application.routes.draw do
  mount Spina::Engine => '/'
  mount Spina::Admin::Conferences::Accounts::Engine => '/spina-admin-conferences-accounts'
end
