class ChangeCategoryColumn < ActiveRecord::Migration
  def up
    change_column :books, :category, :string
  end

  def down
    change_column :users, :role, :integer
  end
end
