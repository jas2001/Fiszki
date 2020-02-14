class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :polish, null:false
      t.string :english
      t.string :spanish
      t.references :category, default: 1, foreign_key:true

      t.timestamps
    end
  end
end