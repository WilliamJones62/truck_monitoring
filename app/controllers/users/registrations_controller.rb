class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication, only: [:new, :create]

   def new
    if current_user.email == "admin"
      @user = User.new
    end
  end

  def create
    if current_user.email == "admin"
      @user = User.new(user_params)
       if @user.save
         redirect_to root_path
       else
         render :new
       end
     end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :dept_manager, :user_dept)
  end
end
