class User < ActiveRecord::Base
  validates :email, :f_name, :l_name, :password, :presence => true
  validates :email, :uniqueness =>true
  validates :email, :format =>{:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, :message => 'Not a valid email.'}
end
