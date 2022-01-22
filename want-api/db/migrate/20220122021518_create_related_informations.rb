class CreateRelatedInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :related_informations do |t|
      t.references :want
      t.string :title
      t.string :detail
      t.boolean :active
      t.timestamps
    end
  end
end
