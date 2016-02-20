class AddColumnsToProjectImages < ActiveRecord::Migration
  def change
    add_column :project_images, :content_type, :string
    add_column :project_images, :size, :integer
  end
  add_index :project_images, :project_id
end
