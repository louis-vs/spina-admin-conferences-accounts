# frozen_string_literal: true

module Spina
  module Admin
    module Conferences
      module Accounts
        class ApplicationMailer < ActionMailer::Base
          default from: 'from@example.com'
          layout 'mailer'
        end
      end
    end
  end
end
