class User < ActiveRecord::Base
  enum role: %i[admin secretary]

  devise :database_authenticatable, :validatable

  validates :name, :role, presence: true
end
