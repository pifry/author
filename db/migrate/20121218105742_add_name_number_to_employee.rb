class AddNameNumberToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :name, :string
    add_column :employees, :number, :string
  end
end
