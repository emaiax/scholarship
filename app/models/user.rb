class User < ActiveRecord::Base
  devise :database_authenticatable, :validatable

  enum role: %i[admin secretary]

  belongs_to :school
  validates :name, :role, presence: true
end
