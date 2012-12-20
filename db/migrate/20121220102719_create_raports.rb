class CreateRaports < ActiveRecord::Migration
  def change
    create_table :raports do |t|
      t.date :date

      t.timestamps
    end
  end
end
