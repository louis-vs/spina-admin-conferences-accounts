# frozen_string_literal: true

module Spina
  module Admin
    module Conferences
      module Accounts
        # Manages user accounts in Spina admin.
        class PublicUsersController < ApplicationController
          before_action :set_breadcrumb
          before_action :set_tabs, except: %i[index destroy]
          before_action :set_user, only: %i[edit update destroy]

          def index
            @users = PublicUser.all
          end

          def edit; end

          def update
            if @user.update(public_user_params)
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
            params.require(:public_user).permit(:email, :first_name, :last_name, :institution)
          end

          def set_breadcrumb
            add_breadcrumb PublicUser.model_name.human(count: :many), admin_conferences_accounts_public_users_path
          end

          def set_tabs
            @tabs = %w[details]
          end

          def set_user
            @user = PublicUser.find(params[:id])
            add_breadcrumb @user.full_name
          end
        end
      end
    end
  end
end
