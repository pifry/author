class RaportController < ApplicationController
  def monthly
		if params[:date] == nil
			@mydate = Date.current.beginning_of_month
		else
			@mydate = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i).beginning_of_month
		end
		@employees = Employee.all 
  end
end