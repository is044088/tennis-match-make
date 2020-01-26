class UsersController < ApplicationController
  before_action :header_create
  def show
    # @user = User.find(params[:id])
  end
  def header_create
    if user_signed_in?
      @ability = Ability.find_by(user_id:current_user.id)
      @average = (@ability.serve + @ability.return + @ability.stroke + @ability.footwork + @ability.mental)/5.to_f
      gon.current_user_serve = current_user.ability.serve
      gon.current_user_return = current_user.ability.return
      gon.current_user_stroke = current_user.ability.stroke
      gon.current_user_footwork = current_user.ability.footwork
      gon.current_user_mental = current_user.ability.mental
      gon.current_user_communication = current_user.ability.communication
      gon.current_user_nickname = current_user.nickname
    end
  end  
end
