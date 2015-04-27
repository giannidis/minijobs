class AddCategoryIdToMinijobs < ActiveRecord::Migration
  def change
    add_column :minijobs, :category_id, :integer
  end
end
