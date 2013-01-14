class Employee < ActiveRecord::Base
	has_many :assignments
	has_many :projects, :through => :assignments

  attr_accessible :name, :number
end
