class RegistrationsController < Devise::RegistrationsController
  def edit
  end

	protected

	def after_sign_up_path_for(resource)
   		'/sellers/edit'
 	end

	def after_update_path_for(resource)
    	'/profiles/show'
	end

  private

  def sign_up_params
    params.require(:seller).permit(:name, :email, :password)
  end

  def account_update_params
   	params.require(:seller).permit(:name, :email, :password, :password_confirmtion, :current_password, :street_address, :city, :state, :zipcode)
  end

end 