class AddUserIdToMinijobs < ActiveRecord::Migration
  def change
    add_column :minijobs, :user_id, :string
  end
end
