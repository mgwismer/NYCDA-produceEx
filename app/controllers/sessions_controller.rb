class SessionsController < Devise::SessionsController
  
 protected
 def after_sign_out_path_for(resource)
  'root'
 end

 def after_sign_in_path_for(resource)
  '/profiles/show'
 end

end 