# frozen_string_literal: true

module Spina
  module Admin
    module Conferences
      module Accounts
        class PublicUser < ApplicationRecord
          # Include default devise modules. Others available are:
          # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
          devise :database_authenticatable, :registerable,
                 :recoverable, :rememberable, :validatable,
                 :confirmable
        end
      end
    end
  end
end
