class RaportController < ApplicationController
  def monthly
		@mydate = Date.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i).beginning_of_month
		@employees = Employee.all 
  end
end
