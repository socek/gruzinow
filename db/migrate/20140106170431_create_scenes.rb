class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.text :description
      t.belongs_to :game

      t.timestamps
    end
  end
end
