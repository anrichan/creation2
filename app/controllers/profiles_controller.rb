class ProfilesController < ApplicationController
  def new
   @profile = Profile.new
   @sex = Sex.new
   
  end
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      redirect_to profile_path(@profile.id),notice: 'プロフィールを作成しました'
    else
      render 'new'
    end
  end
  def show
    @profile = Profile.find(params[:id])
    @profile_sex = Sex.find(@profile.sex_id)
    @sex = Sex.find(params[:id])
  end

  def index
    
  end










private

  def profile_params
      params.require(:profile).permit(:birthday, :sex, :zipcode, :address, :user_id, :sex_id, :tel, :contract_type)
  end
  
  def set_sex
    @sexes = Sex.all.pluck(:type)
  end

end
