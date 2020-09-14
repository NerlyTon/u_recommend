class CreateUsers < ActiveRecord::Migration
  def change
    create_users :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
    end
  end
end
