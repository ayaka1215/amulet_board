class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :word
      t.text :text
      t.string :name
      t.text :image
      t.timestamps
    end
  end
end
