class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.string :movie_or_show
      t.string :summary
      t.string :streaming_service
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
