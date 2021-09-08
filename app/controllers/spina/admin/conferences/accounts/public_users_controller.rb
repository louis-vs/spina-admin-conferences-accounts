# frozen_string_literal: true

require_dependency 'spina/admin/conferences/accounts/application_controller'

module Spina
  module Admin
    module Conferences
      module Accounts
        class PublicUsersController < ApplicationController
          before_action :set_breadcrumb
          before_action :set_tabs, except: %i[index destroy]
          before_action :set_user, only: %i[edit update destroy]

          def index
            @users = PublicUser.all
          end

          def edit; end

          def update
            if @user.update(institution_params)
              redirect_to admin_conferences_accounts_public_users_path, success: t('.saved')
            else
              render :edit
            end
          end

          def destroy
            @user.destroy
            respond_to do |format|
              format.html do
                redirect_to admin_conferences_accounts_public_users_path, success: t('.deleted')
              end
            end
          end

          private

          def public_user_params
            params.require(:admin_conferences_accounts_public_user).permit(:name)
          end

          def set_breadcrumb
            add_breadcrumb PublicUser.model_name.human(count: :many), admin_conferences_accounts_public_users_path
          end

          def set_tabs
            @tabs = %w[details]
          end

          def set_institution
            @user = PublicUser.find(params[:id])
            add_breadcrumb @user.name
          end
        end
      end
    end
  end
end
