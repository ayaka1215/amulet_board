class RemoveNameFromWords < ActiveRecord::Migration[7.0]
  def change
    remove_column :words, :name, :string
  end
end
