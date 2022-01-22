class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.references :schedule
      t.string :title
      t.string :detail
      t.boolean :active
      t.timestamps
    end
  end
end
