class Project < ActiveRecord::Base
	has_many :assignments
	has_many :employees, :through => :assignments

  attr_accessible :name, :number
end
