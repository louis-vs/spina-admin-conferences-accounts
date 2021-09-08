# frozen_string_literal: true

module Spina
  module Admin
    module Conferences
      module Accounts
        class Engine < ::Rails::Engine
          isolate_namespace Spina::Admin::Conferences::Accounts

          config.before_initialize do
            ::Spina::Plugin.register do |plugin|
              plugin.name = 'conferences-accounts'
              plugin.namespace = 'Conferences::Accounts'
            end
          end
        end
      end
    end
  end
end
