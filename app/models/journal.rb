class Journal < ActiveRecord::Base
  belongs_to :student
  has_many :entries
end
