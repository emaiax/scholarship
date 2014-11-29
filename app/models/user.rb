class User < ActiveRecord::Base
  devise :database_authenticatable, :validatable

  validates :name, presence: true
end
