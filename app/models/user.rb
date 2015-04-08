class User < ActiveRecord::Base

  has_one :role, :through => :role_user
  has_one :role_user

  def admin?
    self.role.title == "admin"
  end

  def user?
    self.role.title == "user"
  end
end
