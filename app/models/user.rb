class User < ActiveRecord::Base
  
  def is_admin?
    role == 'admin'
  end

end
