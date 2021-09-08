# frozen_string_literal: true

require 'spina'
require 'spina/admin/conferences/accounts/version'
require 'spina/admin/conferences/accounts/engine'
require 'rails-i18n'

# Spina CMS.
# @see https://www.spinacms.com Spina website
module Spina
  module Admin
    module Conferences
      # Public user account management plugin for Spina.
      module Accounts
        def self.table_name_prefix
          'spina_admin_conferences_accounts_'
        end
      end
    end
  end
end
