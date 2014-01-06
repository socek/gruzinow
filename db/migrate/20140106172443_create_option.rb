class CreateOption < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.text :description
      t.belongs_to :current_scene
      t.belongs_to :forward_scene

      t.timestamps
    end
  end
end
