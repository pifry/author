class Assignment < ActiveRecord::Base
	belongs_to :employee
	belongs_to :project

  attr_accessible :date, :employee_id, :project_id
end
