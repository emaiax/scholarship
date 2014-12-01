class User < ActiveRecord::Base
  devise :database_authenticatable, :validatable

  enum role: %i[admin secretary]

  belongs_to :school
  validates :name, :role, presence: true
  validates :school, presence: true, unless: :admin?
end
