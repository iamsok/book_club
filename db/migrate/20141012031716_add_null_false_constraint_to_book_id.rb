class AddNullFalseConstraintToBookId < ActiveRecord::Migration
  def up
    change_column :reviews, :book_id, :integer, null: false
  end

  def up
    change_column :reviews, :book_id, :integer, null: true
  end
end
