class CreateMinijobs < ActiveRecord::Migration
  def change
    create_table :minijobs do |t|
      t.string :title
      t.text :description
      t.integer :timi

      t.timestamps null: false
    end
  end
end
