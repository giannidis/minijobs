class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :surname, :string
    add_column :users, :birthday, :date
    add_column :users, :website, :text
    add_column :users, :phone, :string
    add_column :users, :city, :string
  end
end
