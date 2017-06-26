class SexesController < ApplicationController

  def create
      @sex = Sex.create(set_sex)
      
  end

  def show
     @sex = Sex.find(params[:id])
     # whereは検索の条件が追加できる青の(テーブルの中のカラムの紫を探すという表記)
     @profiles = Profile.where(sex_id: @sex.id)
    
  end

end
