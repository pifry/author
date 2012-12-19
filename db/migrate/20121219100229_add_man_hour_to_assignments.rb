class AddManHourToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :ManHour, :integer
  end
end
