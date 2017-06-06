class HomeController < ApplicationController

  before_action :authenticate_admin!, only: :admin
  def index
  end

  def admin
  end
end
