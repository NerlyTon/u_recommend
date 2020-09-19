class AddColumnToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :image_url, :string
  end
end
