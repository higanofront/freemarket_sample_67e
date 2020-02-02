class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # binding.pry

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :nickname, :last_name, :first_name, :last_hurigana, :first_hurigana, :birthday, 
      :postcode, :prefecture, :city, :block, :room, :phone_number
      ])
  end  
  
end


