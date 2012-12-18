class AddEmployeeIdProjectIdToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :employee_id, :integer
    add_column :assignments, :project_id, :integer
  end
end
