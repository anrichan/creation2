class Users::ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #    #管理ユーザーにメールを送信
  #    admin = @admin
  #    ProfileMailer.profile_email(admin, @user).deliver

  #    #ユーザーにメールを送る
  #      user_email = @user.email
  #      ProfileMailer.profile_email(user_email, @user).deliver
  #      redirect_to root_path
  #    else
  #      render '/user/new'
  #    end

  def show
    self.resource = resource_class.find_by_confirmation_token(params[:confirmation_token])
    super
  end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end

  

  def confirm
    confirmation_token = params[resource_name][:confirmation_token]
    self.resource = resource_class.find_by_confirmation_token!(confirmation_token)

    if resource.update(confirmation_params)
      self.resource = resource_class.confirm_by_token(confirmation_token)
      set_flash_message :notice, :confirmed
      sign_in_and_redirect resource_name, resource
    else
     render :show
    end
  end

  private

  def confirmation_params
    params.require(resource_name).permit(:password)
  end

end

