class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :want
      t.string :title
      t.integer :order
      t.boolean :active
      t.timestamps
    end
  end
end
