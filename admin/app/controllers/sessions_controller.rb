class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @admin_user = AdminUser.new
  end

  def create
    @admin_user = login(params[:email], params[:password])

    if @admin_user.present?
      redirect_to articles_path, notice: 'Login successful'
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
  end
end
