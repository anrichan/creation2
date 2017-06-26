class HomeController < ApplicationController
 
  before_action :authenticate_admin!, only: :admin
  before_action :authenticate_user!, only: :show
  def index

  end

  def admin
  end
end
