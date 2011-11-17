class AddFnameToUsers < ActiveRecord::Migration
  def change
		add_column    :users, :fname, :string
		add_column    :users, :lname, :string
		remove_column :users, :name
  end
end
