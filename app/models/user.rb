class User < ApplicationRecord
  self.table_name = "truck_users"
  # self.table_name = "truck_users"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable
end
