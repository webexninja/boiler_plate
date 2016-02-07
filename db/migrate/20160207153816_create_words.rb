class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :title
      t.string :meaning

      t.timestamps null: false
    end
  end
end
