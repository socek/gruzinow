class AddStatusToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :status, :string
  end
end
