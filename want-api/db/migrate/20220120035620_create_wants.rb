class CreateWants < ActiveRecord::Migration[6.1]
  def change
    create_table :wants do |t|
      t.references :user
      t.string :title
      t.boolean :complete
      t.boolean :active
      t.timestamps
    end
  end
end
