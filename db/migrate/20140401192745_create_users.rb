class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :salt
      t.string :confirmation_code
      t.boolean :is_authenticated

      t.timestamps
    end
  end
end
