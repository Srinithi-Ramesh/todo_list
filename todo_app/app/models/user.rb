class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #attr_accessible :name , :email
  
  #def user_params
   #   params.require(:user).permit(:name, :email)
    #end

  #@user = User.new(user_params)
  has_many :to_do_notes
end
