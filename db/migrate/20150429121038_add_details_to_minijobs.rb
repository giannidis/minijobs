class AddDetailsToMinijobs < ActiveRecord::Migration
  def change
    add_column :minijobs, :link, :text
    add_column :minijobs, :plithos, :integer
    add_column :minijobs, :paradosi, :date
  end
end
