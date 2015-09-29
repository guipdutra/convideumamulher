class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string :name
      t.string :area
      t.string :current_position
      t.string :linkedin

      t.timestamps
    end
  end
end
