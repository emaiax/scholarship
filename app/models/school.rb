class School < ActiveRecord::Base
  has_many :users

  validates :name, :doc, presence: true
  validates :doc, cnpj: true
end
