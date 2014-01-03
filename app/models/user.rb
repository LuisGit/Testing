class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 # validates :email, :f_name, :l_name, :password, :presence => true
  validates :email, :uniqueness =>true
  validates :email, :format =>{:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, :message => 'Not a valid email.'}
end
