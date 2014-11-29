class School < ActiveRecord::Base
  validates :name, :doc, presence: true
end
