class User < ActiveRecord::Base
  #attr_accessible :name , :email
  
  #def user_params
   #   params.require(:user).permit(:name, :email)
    #end

  #@user = User.new(user_params)
  has_many :to_do_notes
end
