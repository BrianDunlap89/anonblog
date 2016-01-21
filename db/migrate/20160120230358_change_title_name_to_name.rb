class ChangeTitleNameToName < ActiveRecord::Migration
  def change
    remove_column :comments, :title
    add_column :comments, :name, :string
  end
end
