class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :telephone

      t.timestamps
    end
    add_index :people, :user_id
  end
end
