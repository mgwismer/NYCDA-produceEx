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
<<<<<<< HEAD
   	params.require(:seller).permit(:name, :email, :password, :password_confirmation, :current_password, :street_address, :city, :state, :zipcode)
=======
   	params.require(:seller).permit(:name, :email, :password, :password_confirmtion, :current_password, :street_address, :city, :state, :zipcode)
>>>>>>> 9ce82f90eddccc4c6695dd4b892efc138e996c65
  end

end 