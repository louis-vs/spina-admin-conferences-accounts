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

          validates :first_name, presence: true
          validates :last_name, presence: true

          def full_name
            "#{first_name} #{last_name}"
          end
        end
      end
    end
  end
end
