class RaportController < ApplicationController
  def monthlyEmployees
		if params[:date] == nil
			@mydate = Date.current.beginning_of_month
		else
			@mydate = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i).beginning_of_month
		end
		if params[:dep] == nil
			@dep = current_user.department_id
		else
			@dep = params[:dep]
		end
		@employees = Employee.where("department_id = ?", @dep)
  end

	def monthlyProjects
		if params[:date] == nil
			@mydate = Date.current.beginning_of_month
		else
			@mydate = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i).beginning_of_month
		end
		if params[:dep] == nil
			@dep = current_user.department_id
		else
			@dep = params[:dep]
		end
		@employees = Employee.where("department_id = ?", @dep)
		@projects = Project.find(:all, :conditions=>["DATE(assignments.date) = ? AND employees.department_id = ?", @mydate, @dep], :include=>[:assignments, :employees])
		@projectsAlt = Project.find(:all, :conditions=>["projects.name IN (?) and DATE(assignments.date) = ? AND employees.department_id = ?", ["Szkolenie","Urlop","Choroba","Inne"], @mydate, @dep], :include=>[:assignments, :employees])
		@nominalemplworktime = 184
		@nominaldeptworktime = @nominalemplworktime * @employees.count
		#Project.join(:assignment => :employee).where()
		@a = 0
		@projectsAlt.each do |p| 
			if p != nil then
				@tmp = p.assignments.sum(:ManHour, :conditions=>["DATE(date) = ?", @mydate])
				if @tmp != nil then 
					@a += @tmp
				end
			end
		end
		@realdepworktime = @nominaldeptworktime - @a
	end
end
