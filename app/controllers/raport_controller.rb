class RaportController < ApplicationController
  def monthly
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
		@employees = Employee.where("department_id = ?", current_user.department_id)
  end
end
