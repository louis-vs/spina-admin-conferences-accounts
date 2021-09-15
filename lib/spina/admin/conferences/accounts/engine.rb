# frozen_string_literal: true

module Spina
  module Admin
    module Conferences
      module Accounts
        # The plugin engine. Loads the plugin in Spina.
        class Engine < ::Rails::Engine
          config.before_initialize do
            ::Spina::Plugin.register do |plugin|
              plugin.name = 'conferences-accounts'
              plugin.namespace = 'conferences/accounts'
            end
          end
        end
      end
    end
  end
end
