class CreateDids < ActiveRecord::Migration[6.1]
  def change
    create_table :dids do |t|
      t.references :want
      t.string :title
      t.integer :category
      t.boolean :active
      t.timestamps
    end
  end
end
