# frozen_string_literal: true

require 'test_helper'

module Spina
  module Admin
    module Conferences
      class AccountsTest < ActiveSupport::TestCase
        test 'it has a version number' do
          assert Spina::Admin::Conferences::Accounts::VERSION
        end
      end
    end
  end
end
