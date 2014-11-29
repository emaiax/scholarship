class School < ActiveRecord::Base
  validates :name, :doc, presence: true
  validates :doc, cnpj: true
end
